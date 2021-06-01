Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 39DA54202F3
	for <drbd-announce@lists.linbit.com>;
	Tue,  1 Jun 2021 11:00:12 +0200 (CEST)
Received: by mail-wm1-f44.google.com with SMTP id
	s5-20020a7bc0c50000b0290147d0c21c51so1419344wmh.4
	for <drbd-announce@lists.linbit.com>;
	Tue, 01 Jun 2021 02:00:12 -0700 (PDT)
Date: Tue, 1 Jun 2021 11:00:10 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210601090010.GF1398@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9zSXsLTf0vkW971A"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.4.0-rc.1
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


--9zSXsLTf0vkW971A
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

This is RC1 for drbd-reactor version 0.4.0, which brings some exciting
improvements to the promoter plugin as well as to the core, and
introduces a new ctl tool as well.

This requires drbd-utils >=3D 9.18.0-rc.1 (announced yesterday).

The first feature is that the core now reacts to HUP (i.e., systemctl
reload), where it stops plugins not having a configuration anymore,
starts the ones that got added, and keeps the ones running that did not
change. Plugin configurations should be put into separate .toml files in
/etc/drbd-reactor.d/. Every plugin can (and should) have an ID (user set
in the toml file). These IDs are the handle the core uses to decide if a
plugin is new, exists, or got removed.

While many users will have a static configuration and will not care
deeply about reloading instead of restarting, we intend to make use of
that feature in HA setups when we add/remove HA resources on the fly.
There it is important that we can add/remove promoter plugin instances
on the fly without disturbing the running ones.

Which brings me to the next feature, which is improved HA and OCF
resource agent support in the promoter plugin. So far one could specify
a start =3D [] list of systemd units that got started individually one
after the other. Now drbd-utils provides systemd templates that allow=20
proper handling of DRBD resources as well as improved dependency
handling between units in the start list: For example the promoter
plugin creates an implicit systemd service override that waits for the
backing devices of a DRBD resource and then promotes it to Primary. The
promoter also generates overrides for ever service in the start list so
all of them depend on a promoted DRBD device, and every service depends
on the service before it. Finally, it generates an implicit systemd
target unit that lists all the dependencies. By then starting (or
stopping) this target unit, all the rest of the magic is handled by
systemd. This is explained in more details here[1]. One additional
feature documented there is support for OCF resource agents. With all
that in place, a HA setup for a HA linstor controller, or iSCSI, or NFS
is just a matter of specifying the service dependencies in the start =3D
[] list. In the future linstor-gateway and LINSTOR vSAN will be users
for that.

Last but not least this release contains a new tool named
"drbd-reactorctl", which makes enabling/disabling, editing, restarting,
creating a plugin configuration from a template, status querying,...=20
simple tasks. It currently does not have a man page on its own, but the
'-h' output should give you a pretty good overview. These are just a few
examples one might do:

$ drbd-reactorctl edit -t promoter mylinstorha # which opens a promoter
template in your editor ready to fill in the required details. After
saving the plugin will be enabled.
$ drbd-reactorctl status --verbose mylinstorha # systemd status about
the target
$ drbd-reactorctl cat mylinstorha # shows the plugin configuration
$ drbd-reactorctl disable --now mylinstorha # disables the plugin and
stops the target unit, which is nice to switch the service to another
node while maintainance
$ drbd-reactorctl enable mylinstorha # enable a disabled plugin

What existing users should do:
- move plugin configuration (promoter, debugger, umh, prometheus) from
  drbd-reactor.toml to snippets in /etc/drbd-reactor.d/ and make sure
  'snippets' is set in the main config.
- add an 'id =3D "something"' to every plugin

Regards, rck

P.S.: the rpm provided here is built for RHEL8 alike systems and because
drbd-reactorctl is written in Python, requires python3-toml. On RHEL7
systems you should ignore the dependency on install and install
python36-toml (and python3). Both these packages are in EPEL. We will
provide that dependency in our customer repos after the final release.

[1] https://github.com/LINBIT/drbd-reactor/blob/master/doc/promoter.md
[DEB]: https://transfer.sh/1Ooh4x5/drbd-reactor_0.4.0-rc.1-1_amd64.deb
[RPM]: https://transfer.sh/1mh1wdm/drbd-reactor-0.4.0-rc.1-1.x86_64.rpm
[GIT]:
https://github.com/LINBIT/drbd-reactor/commit/b30bb134e1644f98302b8146b6fa7=
662f1620d5a
[TGZ]:
https://linbit.com/downloads/drbd/utils/drbd-reactor-0.4.0-rc.1.tar.gz

[ Roland Kammerer ]
* README.md: mark prometheus as done
* drbd, Resource: add to_plugin_updates
* core: allow plugins to be reloaded
* systemd notify: unset NOTIFY_SOCKET
* doc,man,prometheus: Sx -> Sy
* core: don't fail if plugin fails to start
* doc: rm dummy placeholder
* promoter: make runner explicit
* promoter: switch to systemd templates
* promoter: add dependencies-as
* promoter: add target-as
* promoter: reload daemon only once
* promoter: use [String] in templates
* promoter: use contains
* promoter: use anonymous block for file write
* promoter: don't use map_err
* doc,promoter: document dependencies-as, target-as
* deps: bump drbd-utils to 9.18.0
* doc: mv from src/ to doc/
* doc,promoter: fix pragraph macro
* doc,promoter: fix .Sy macro
* allow daemon reloading via service
* core: add newlines between snippets
* promoter: wait a bit after stop
* drbd-reactorctl: add tool
* build: switch rpm to RHEL8 alike

[ Christoph B=F6hmwalder ]
* add example grafana dashboard
* example: amend grafana dashboard


--9zSXsLTf0vkW971A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmC19xYACgkQRgmezyI6
myKRXgf/Z8PupaRU07cSZ/awvv9yWxqmK9MbsZNIO5qRwNwfvXA5/hc4r+kERMrg
qygsEg3SJYvFPtX5j6X+THB85zcMpftJUpg81dtlmyyQOZj9MwrHpgel3T7towsL
QdJNdpZvWonpvk4Mi4yomauLt9T8eJbbwxmcT+KJdQiwTLYUV//7aB9sLaZZ26r3
VWQeC1PNJO7spo9uvUQNlpwHXCHJ3djleUrRTv5eR2chApHDUGgFD6R9lZxRxVhq
97yCV+S0vS6TU5utBG9nia2bqr4SlMQAbVJXjH0ho7oeGoypaIjSAcEurtKGCl2f
fJI6YqLnbTRZ4ryS7QPg4hVLXKBEow==
=yBlo
-----END PGP SIGNATURE-----

--9zSXsLTf0vkW971A--
