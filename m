Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 16A7D420373
	for <drbd-announce@lists.linbit.com>;
	Fri, 11 Jun 2021 10:29:38 +0200 (CEST)
Received: by mail-wm1-f49.google.com with SMTP id
	v206-20020a1cded70000b02901a586d3fa23so7969873wmg.4
	for <drbd-announce@lists.linbit.com>;
	Fri, 11 Jun 2021 01:29:38 -0700 (PDT)
Date: Fri, 11 Jun 2021 10:29:37 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210611082937.GK1398@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1SQmhf2mF2YjsYvc"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.18.0
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


--1SQmhf2mF2YjsYvc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear, DRBD users,

this is the final version of drbd-utils v9.18.0.

Please see
https://lists.linbit.com/pipermail/drbd-announce/2021-May/000453.html
for the notable changes in this release.

There have only been fixes/additions to the documentation since the last
release.

A notable change is that the new systemd service/target units are now
very well documented including man-pages. These new man-pages are
written in asciidoc(tor), which - while easier to write - also allows us
to nicely render them online[1]. We might eventually convert the
existing ones as well, but that is very low priority.

This also means that you need 'asciidoctor' if you want to build the new
pages from source. It does not introduce a pkg (deb/rpm) build
dependency as we ship the generated man-pages in the release tarballs.
One can use these pre-built man pages via
=2E/configure --with-prebuiltman
The spec file and debian/rules (only in git) have according options or
defaults. But that is just a reminder, that functionality exists since I
introduced it in 2018.

And while I really don't expect any troubles, for customers we move the
packages to the stable repos on Monday. There is no need to ruin
anyone's weekend. Especially not for the ones that are on duty.

Regards, rck

TGZ: https://linbit.com/downloads/drbd/utils/drbd-utils-9.18.0.tar.gz=20
GIT:
https://github.com/LINBIT/drbd-utils/commit/5acfd06032d4c511c75c92e58662eee=
b18bd47db
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1] https://github.com/LINBIT/drbd-utils/blob/master/documentation/v9/drbd%=
40.target.adoc

--1SQmhf2mF2YjsYvc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmDDHucACgkQRgmezyI6
myJfeAgArreddDD3lu2XkOpP7RVAvv47bqhw9TfQ09TeTy149PifycA0/abLg7zf
sDaoA7ksFFNDFwKIAuLWMVXb6qVxBAfDXvHDh7LcB++QcKbzs8IxjlnKybAsnn4b
Arx2LRtBaJSB31eVY+dpY7M1yW1GksjqAvZ2RweI78V5sO24HE6kIEBO6RqD6uEq
xmt/oPve5tXQ9GLw6EATMuZTs9ILwCSlTz0tSoBRezbv2S6ILSOwcAWUWmVqi+G2
vgWb33gcK+nSS0twcPweiMQJ+ptNNlzKutwzuMVDjtPuTC8mfMt/i/gqPkDxEtra
vRdwwFn4FyCSW0pMqo3aak3/LR5Z7g==
=srr2
-----END PGP SIGNATURE-----

--1SQmhf2mF2YjsYvc--
