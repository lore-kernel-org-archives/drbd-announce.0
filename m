Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 956C6420105
	for <drbd-announce@lists.linbit.com>;
	Mon, 22 Jun 2020 11:53:49 +0200 (CEST)
Received: by mail-wm1-f49.google.com with SMTP id y20so15071510wmi.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 22 Jun 2020 02:53:49 -0700 (PDT)
Date: Mon, 22 Jun 2020 11:53:47 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20200622095347.GJ1698@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rQ2U398070+RC21q"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox-5.1.0
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


--rQ2U398070+RC21q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear PVE-users,

This is a feature driven release that adds some improvements in the area
of snapshots.

- you can now create snapshots (that was possible since a long time),
  but now it is possible to also roll them back. This is limited to the
  last snapshot. This is a limitation LINSTOR has because of how ZFS
  works/how ZFS snapshots are handled. This might change in the future.
  Till then one has to make the destination snapshot the last one (i.e.,
  delete the ones in between).

- it is now possible to click the "backup" button of e.g., a running LXC
  container and create the backup via a snapshot. That said, while
  implementing this we found out that the PVE's built in backup does not
  handle disks that are not a multiple of 64K properly, which is very
  likely for DRBD devices/disks. This is not a regression, I'd assume
  this bug in PVE existed for a long time. For more information see the
  upstream bug report[1].

https://www.linbit.com/downloads/connectors/linstor-proxmox-5.1.0.tar.gz
https://github.com/LINBIT/linstor-proxmox/commit/5310292670b6b47fb3f063a2e16dbf0a639f75fe

Regards, rck

[1] https://bugzilla.proxmox.com/show_bug.cgi?id=2811

--rQ2U398070+RC21q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAl7wf6cACgkQRgmezyI6
myKa+Af/b1wq70Hc6xuRXzmAl11MWSE6edNAwuHtL1Htj+85VLBke4AqkqPDUFV2
hvdwYWcUQO/tw9PlJ9+5PpsrpY55QWByY1RSNVNAPPACW3dmOsm0Mpai/vnKclqc
M4CdGrylJbZ/CehYlo4ypo5hF4zqQFqO4lx/BqJlRIvUFfhAGhoNjeTV3eUOU2xM
4R3npVj3G3GVqToYfOXse6Jtr58rtccWIxYg1bqNEvM6gVE/8qjnKl+E6HjY0V2j
UXc8vcz1yo6gvCOnnRCTMn3xqdtiv8Zl9ZuaG6RzeDN6gL261lvLXiV8SJe6UifJ
zZzDwKjGNGRANtXOnTbPKxWJMnP92Q==
=Qh6Q
-----END PGP SIGNATURE-----

--rQ2U398070+RC21q--
