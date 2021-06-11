Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 50FDA4203D5
	for <drbd-announce@lists.linbit.com>;
	Fri, 11 Jun 2021 16:18:47 +0200 (CEST)
Received: by mail-wm1-f50.google.com with SMTP id
	y13-20020a1c4b0d0000b02901c20173e165so706723wma.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 11 Jun 2021 07:18:47 -0700 (PDT)
Date: Fri, 11 Jun 2021 16:18:44 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210611141844.GM1398@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VV4b6MQE+OnNyhkM"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.4.0-rc.2
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


--VV4b6MQE+OnNyhkM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is RC2 of drbd-reactor v0.4.0. For the previous notable changes
please refer to
https://lists.linbit.com/pipermail/drbd-announce/2021-June/000454.html

RC1 got some internal, extensive testing, and all in all it handled
typical LINSTOR vSAN / Pacemaker use cases including OCF agents well. Never the
less Christoph found some bugs like not handling diskless resources well, html
escaped output from the template library, minor misbehavior in drbd-reactorctl
and so on. Thanks Christoph for finding these.

Besides these bug fixes there is now a design document describing the reasoning
behind the promoter plugin and which failure modes it can (not) handle. It is
really worth reading if you plan to use drbd-reactor::promoter. Thanks Lars for
that [1].

Last but not least thanks to Moritz for spotting most of the stupid bugs
in the internal reviews.

I'd guess this is the last RC, and if nothing shows up the final release
should happen in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/dfa82000ec1ed54461c4b02f3dbb5702de2223c5
TGZ: https://linbit.com/downloads/drbd/utils/drbd-reactor-0.4.0-rc.2.tar.gz
RPM (RHEL8 alike): https://transfer.sh/1CGUkuO/drbd-reactor-0.4.0-rc.2-1.x86_64.rpm
DEB: https://transfer.sh/1erm85c/drbd-reactor_0.4.0-rc.2-1_amd64.deb

[1] https://github.com/LINBIT/drbd-reactor/blob/master/doc/promoter.md

[ Roland Kammerer ]
* treewide: cleanup log messages
* promoter: filter diskless devices for drbd-promote
* ctl: fix verbose output for ocf.ra
* promoter: switch to unescaped output
* ctl: restart daemon if no files given
* ctl,promoter: print where likely active
* ctl: fix disable --now
* ctl,build: add man page
* promoter: try to stop services before start
* doc,promoter: add design document
* doc,promoter: add review fixes from Lars
* doc,promoter: rm arp_sender

--VV4b6MQE+OnNyhkM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmDDcLwACgkQRgmezyI6
myI/6wgAgdI0JL741HdAyDTNhUfLsI0hTiMids3JdtPLugqt5Ft4hd93Jr36NXJS
9EART8cWabSfyN1pTkRDdOOdre+sAE3jCdj8zwMXzxfkZ2jsFC2CMq85PEA62Gny
GCjzlOufFRXg3QV99PcRBIIDnZhI+sVfVj5y0ME1RZDizCFEkhJUT9R3xr8WfTJJ
tMn3moMh4TYUDuNy9Q0IzYbd9uRZRI/p3BdHMXDowIxOqZOo2mKVGkeBGc/esyHa
oxHbLveCWc4qEOx0KM8GfNutYH+louXL8dFLNXO2AMauudU1lkeoniUuDOYe/bd+
BsjrtmPaoB9FQPwFZ+8JEb4B426n0g==
=W/XO
-----END PGP SIGNATURE-----

--VV4b6MQE+OnNyhkM--
