Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9740A420336
	for <drbd-announce@lists.linbit.com>;
	Mon, 31 Jan 2022 08:43:58 +0100 (CET)
Received: by mail-wr1-f43.google.com with SMTP id c23so23575559wrb.5
	for <drbd-announce@lists.linbit.com>;
	Sun, 30 Jan 2022 23:43:58 -0800 (PST)
Date: Mon, 31 Jan 2022 08:43:56 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YfeTPJd2RHKE9kZk@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="//Eogvyr/pExsA0p"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.20.2
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


--//Eogvyr/pExsA0p
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is drbd-utils v9.20.2. It it is a minor bugfix release for
Pacemaker/crm-fence-peer users. If you don't use Pacemaker, or you have
a Pacemaker version that works with 9.20.1, you don't need to upgrade.

As this is a single commit bugfix release let's just quote Lars:

> crm-fence-peer: fix timeout with Pacemaker 2.0.5: milli seconds vs seconds
>
> Addendum to 8a28be74bc6efa93931c957e54c01abb18b984fe
> Commit message of the above cited here:
>=20
> > crmadmin timeout was in milli seconds for <=3D 2.0.x,
> > but became a TIMESPEC with default seconds in >=3D 2.1.
> >
> > Up to 2.0.4, atoi() was used, which effectively ignores "trailing garba=
ge",
> > so we could get away with always appending "ms".
> > But with 2.0.5, it became g_option_context_parse G_OPTION_ARG_INT, which
> > "Cannot parse integer value =E2=80=9C200ms=E2=80=9D for --timeout" :-|
> >
> > So grep the help message for "timeout.*milliseconds",
> > and if not present, append an explicit "ms" unit.
>=20
> And this is where I got it wrong :-(
> somewhere later they re-organised the help text
> so now I would need to parse --help-all.
>=20
> Instead try to actually call "crmadmin -t 100ms --version".
> If that works, it apparently understands (or ignores)
> the "ms" unit.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/tree/9.20.2
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.20.2.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--//Eogvyr/pExsA0p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmH3kzgACgkQRgmezyI6
myIYpAf9ErvLrhE4+BOg6j/aRmoxlmLjyvdVgwcpRAkcj6X6CiUEBI3GU78KbqlS
w4abSrBzs8SJom1pCYM5cN+zdSsnMWLKMZVj9lN2scSVpwWomW/zrEdpsMDqQnW3
JhAyvg7BbShq/MBivqFE31bbvB0KbDQCZu7R+etfiwVxZyfbROZwE0bcaWxSpyo/
ExuWkXBEhEx+AxwgycFcHNzmn05iaedmejukoUv++MEj4DbKRTFNHBNYyqiaGN+i
KxywV56TBc0wYbmy6JiKaJ1/aylxEy/NBK43z22g/bZWQMIYiiXatrwFNu5iJ1v4
oESXVRdNK0uqUFUcIPp9E5vyiJ3TdQ==
=ZAAF
-----END PGP SIGNATURE-----

--//Eogvyr/pExsA0p--
