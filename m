Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5070B4203AB
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Jan 2023 11:29:33 +0100 (CET)
Received: by mail-wm1-f43.google.com with SMTP id
	q10-20020a1cf30a000000b003db0edfdb74so4074004wmq.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Jan 2023 02:29:33 -0800 (PST)
Date: Mon, 23 Jan 2023 11:29:32 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y85hjNbKL8lHDzZx@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g/g5rhz243yib4kA"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.0.0
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <https://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <https://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>


--g/g5rhz243yib4kA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the final version of drbd-reactor version 1.0.0. There have not
been any substantial changes since the last RC. For the sake of
completeness, what follows are the
messages from RC1 and RC2, there is a slight adaptation for
"start-until", where we found a more elegant way to resume normal
operation:

Just a word on the version number: I was told that there are people that
wait for a 1.0.0 before they use the software in production. Let's do
them a favor and call it 1.0.0. The version number does not mean
anything. It is just a number like for all releases before and all the
ones that will follow.

The first important commit:
promoter: try to restart target periodically

With the defaults (target-as="Requires") the generated target unit
behaves like follows:

- start with failing service => target active
- systemctl stop service => target+services stop
- kill pid of a service => target active

If the service fails for whatever reason, so far we did not detect that
because systemd assumes the target is started. We also did not properly
check for the target status... This might not be desirable and can be
improved by setting target-as="BindsTo", which then generates the
following behavior:

- start with failing service => target inactive
- systemctl stop service => target+services stop
- kill pid of a service => target+services stop

The problem is that this generates a start-stop loop if the service
fails to start. The target unit will not be started successfully, so it
gets stopped.  This triggers a "may_promote", which triggers a start
attempt and so on, until systemd rate limiting kicks in.

We can improve the situation by checking if the target unit is started
and trying to start it in a saner interval ourselves. In a future
version we might even check if all services in a target are started
(which shouldn't be necessary if BindsTo is used).

Having rate limiting and keeping the rest as it was would not be good
enough.  There would be a start, a stop, a new may_promote, which would
then be rate limited, so no new start. And then there wouldn't be any
new may_promote event and things would starve. To avoid that, we can use
a ticker that periodically checks for the target state. Both, the
existing may_promote mechanism and the ticker follow a global rate.

The second important commit is a small feature for drbd-reactorctl I'd
like to squeeze in before the final release. I'm again going to mainly
quote the commit message. The new feature is a "start-until" subcommand
that is useful for promoter plugin controlled resources.

This allows one to start a target until a certain unit. This might be
useful for debugging. For example assume you have a typical LINSTOR HA
setup with a start list of start = ["var-lib-linstor.mount",
"linstor-controller.service"]

Then assume you want to debug the controller because it does not start
up successfully. Then one would run:

$ drbd-reactorctl disable --now linstor_db # on all nodes nodes

On one node that is used for debugging one would then execute
$ drbd-reactorctl start-until var-lib-linstor.mount linstor_db

Which would start the implicit drbd-promote service and the mount unit.
Then one can manually start the linstor-controller service and debug it.
Afterwards one should execute

$ systemctl start linstor_db.target # on the node where start-until was
used
$ drbd-reactoctl enable linstor_db # on all nodes

The until argument can be a name like "var-lib-linstor.mount", or it can
be an index. Using an index is especially useful when dealing with OCF
agents that can have multi-line configuration options themselves. In the
above one could have written

$ drbd-reactorctl start-until 1 linstor_db

Why would one not just disable linstor_db (or even just stop
drbd-reactor) and then stop the linstor-controller.service? The problem
there is that if you stop that one service, systemd will also stop the
target unit and therefore all the other units as well including the one
that handles DRBD device promotion. If the snippet was not disabled then
drbd-reactor would try to immediately start the target again, that is
it's job. If the snippet was disabled, it would still be cumbersome to
manually start the services. For example one would need to know how the
service is named that is implicitly started that promotes the DRBD
device. Only after that is started one could start the
var-lib-linstor.mount unit. With "start-until" we can automate that and
make the users life easier.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/579aa42071b5cc2930678b4c9638dc89ba9fe4eb
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.0.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Roland Kammerer ]
* core: improve module version check
* promoter: try to restart target periodically
* ctl: add start-until
* build: use lbvers.py to check Dockerfile
* build: use '=' for consistency
* clt,start-until: simplify instructions

[ Joel Colledge ]
* promoter: ctl: correct typo "lenght"

--g/g5rhz243yib4kA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmPOYYcACgkQRgmezyI6
myI4nAf/U397lcRgc4VNW7ZGy/c2xyoP74gorSrtXtAD4m+A4VEcKvt4vBocxa3M
3asWMNJgt5r4nwpWWXeWtFru1JqtolDTGvf3eCdB+EvQ4IHcYFLqvlnywGT6sh9a
z8qL2cFzanIUv6LC1fPiNR6Xt4unTBQzUf28cGgp5+q9rNJUZm7cHGoxFiShi4Rj
AwWoPXVA4kOl/uUo4IvXPS9wpDUSZyACpDCFVVSOmTo9QK3mnN5SDDfGYQtyJ4OR
h0iE+PsFLc13ChTlZaykKiosadyoB2p5woC3DigaYna8BvbPbBW9/lqALQaNDbfV
lsb1BkAnJbvcNjtWtZMjPTiQUzoRXQ==
=j9Pi
-----END PGP SIGNATURE-----

--g/g5rhz243yib4kA--
