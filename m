Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D583D420668
	for <drbd-announce@lists.linbit.com>;
	Mon,  3 Oct 2022 13:52:49 +0200 (CEST)
Received: by mail-wm1-f47.google.com with SMTP id e18so6840626wmq.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 03 Oct 2022 04:52:49 -0700 (PDT)
Date: Mon, 3 Oct 2022 13:52:47 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YzrND9hxJRTg5VAa@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="E/cg+kjCE/cfxvCO"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.9.0
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


--E/cg+kjCE/cfxvCO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is drbd-reactor version 0.9.0. No changes since the last RC, the
original announcement for convenience:

The main new feature is that the promoter plugin can now freeze the
services of the currently active node when it loses quorum and then thaw
them when the node gains quorum again. This might be an advantage when
starting services takes a long time (e.g., huge databases). Freezing and
thawing is instant and uses the according cgroup features via systemctl
freeze/thaw.

Copying from the documentation [1]:
The default behavior when a DRBD Primary looses quorum is to immediately
stop the generated target unit and hope that other nodes still having
quorum will successfully start the service. This works well if services
can be failed over/started on another node in reasonable time.
Unfortunately there are services that take a very long time to start,
for example huge data bases.

When a DRBD Primary looses its quorum we basically have two possibilities:

- the rest of the nodes, or at least parts of it still have quorum: Then
  these have to start the service, they are the only ones with quorum,
  but still we could keep the old Primary in a frozen state. And then,
  when the nodes with quorum come into contact with the old Primary,
  then it should stop the service and its storage should become in sync
  with the other nodes.
- the rest of the nodes are not able to form a partition with quorum. In
  such a scenario there are no alternatives anyways, we would need to
  keep the Primary frozen. But if the nodes eventually join the old
  Primary again, and quorum would be restored, we could just
  unfreeze/thaw the old Primary (which is also the new Primary).

There are several requirements for this to work properly:

- A system with unified cgroups. If the file
  /sys/fs/cgroup/cgroup.controllers exists you should be fine. That
  requires a relatively "new" kernel. Note that "even" RHEL8 for example
  needs the addition of systemd.unified_cgroup_hierarchy on the kernel
  command line.
- a service that can tolerate to be frozen
- DRBD option on-suspended-primary-outdated set to force-secondary
- DRBD option on-quorum-loss set to suspend-io
- DRBD net option rr-conflict set to retry-connect

If these requirements are fulfilled, then one can set the promoter
option "on-quorum-loss" to "freeze".

It is a feature that might be handy in specific situations, the more
classic behavior of stopping the services might be the better default
for most users.

Also, and that is important in general, check the output of "systemctl
status drbd-reactor.service", it runs all kinds of DRBD option checks on
your DRBD resources and tells you which options are missing/wrong.
Follow these suggestions!

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/b9639b431f6d6e0fcc53a2a17d85717acb29d43e
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.9.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Roland Kammerer ]
* doc: make man pages o+r
* docs,promoter: hint to use provided packages
* promoter: warn if mount unit is topmost unit
* promoter: implement on-quorum-loss policy
* promoter: relax ocf parser
* ctl: add resource filter
* ctl: fix status without res filter
* promoter: call systemctl freeze/thaw for every unit

[1] https://github.com/LINBIT/drbd-reactor/blob/master/doc/promoter.md#freezing-resources

--E/cg+kjCE/cfxvCO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmM6zQwACgkQRgmezyI6
myLE0wgAnLswiZphckrxCh1qAIlELXamJGMFOZPEUK/8uySJ4s+E14IExEf8DQnp
Z2cmrCSXMOZnYLMtjm/S8cryjQTl1nYOH7w9xG1EC4+bvJz7mEz2HxaMnBY5UWJA
lv+92pOC/RGDEeAkI/4buZ8/N8r/ACv71/1CmxWcIGhkx1GsMpeVcXRzWbGKrO/j
G97umZizODDgUTj1FjM2aXKLLcpbnTBVPJEDsvmx5iRjJoza9wSL8v1mRiFZoKL6
tQn63vgBDWTl10Oqjk3Ltcqo1XU4OfeoGGK9TILnjBByJNjaLgWYMFm6+KniDICP
Vq9lYOkSFYEUiEQevNkKCMG/D6K73w==
=sT2P
-----END PGP SIGNATURE-----

--E/cg+kjCE/cfxvCO--
