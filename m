Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C1AB74202EC
	for <drbd-announce@lists.linbit.com>;
	Fri, 30 Dec 2022 14:01:32 +0100 (CET)
Received: by mail-wm1-f48.google.com with SMTP id
	i17-20020a05600c355100b003d99434b1cfso4954308wmq.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 30 Dec 2022 05:01:32 -0800 (PST)
Date: Fri, 30 Dec 2022 14:01:30 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y67hKpsGYDsp36bC@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ImMIs3mxYiVEW7O3"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.0.0-rc.1
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


--ImMIs3mxYiVEW7O3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first RC for the upcoming 1.0.0 release of drbd-reactor.
This version contains an improvement for the promoter plugin. I will
just quote the commit log in the following.

Just a word on the version number: I was told that there are people that
wait for a 1.0.0 before they use the software in production. Let's do
them a favor and call it 1.0.0. The version number does not mean
anything. It is just a number like for all releases before and all the
ones that will follow.

The important commit:
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

Please test and report any regressions/bugs. The final release will be
in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/52f0cacc823ad44a4605750bda6015cf5b586473
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.0.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[Roland Kammerer ]
* core: improve module version check
* promoter: try to restart target periodically

--ImMIs3mxYiVEW7O3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmOu4ScACgkQRgmezyI6
myK3qggAj7dTliFPunJRc6JFmNUpRNpBCnJOzT7IS4tpxvRndMShRHm5jNjUv/eV
OYFHN1Y3RCgzP3bc5Rk/6xMcWzSMYyBbkte9Mh6bwLbjiIaLXP2+i9SNV4wvhoxr
BpAjtmg6SnUDW4F4AH5r49X5WPCUL7NAb4xOY79+xNo1fKpQKcicDJ0vWaUi08km
teZUZyhje05a3c+oNU75uHSRh923rf3yJTXBqsmsjcIYdXlBWeN2F3rieWdI4Dxj
Tbaf9h/qlpb/PxlNBsASL3mi4xCq1vVvi4jC7RlHPbKyD8PL3zLm6i0DwDO9YHQl
ujtZM0+g8LnegSAVXmae8bNPoq2OzA==
=zigv
-----END PGP SIGNATURE-----

--ImMIs3mxYiVEW7O3--
