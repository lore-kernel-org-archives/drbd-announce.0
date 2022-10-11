Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2B0E44202F5
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Oct 2022 12:57:52 +0200 (CEST)
Received: by mail-wr1-f48.google.com with SMTP id bu30so20987073wrb.8
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Oct 2022 03:57:52 -0700 (PDT)
Date: Tue, 11 Oct 2022 12:57:50 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y0VMLoUdzBd/khHC@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TNfCFebVW51fRgAj"
Content-Disposition: inline
Subject: [DRBD-announce] PVE public repo URL change
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


--TNfCFebVW51fRgAj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear PVE users,

we are currently cleaning up our public repository structures and we
will deprecate the one used so far for the public PVE repos. If you use
proxmox-7 for example, please update your linbit.list

=66rom
deb http://packages.linbit.com/proxmox/ proxmox-7 drbd-9

to
deb http://packages.linbit.com/public/ proxmox-7 drbd-9

We will turn off the old repo in a few weeks, so please change your URLs
now.

Regards, rck

--TNfCFebVW51fRgAj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmNFTCoACgkQRgmezyI6
myK1BwgAmLLkmPnAaNKq2WG+zwZhOqJK1joOdCzbbwld/vVhfpFnfTJJZjBkWb9F
sh/2t5OGidyAU5svi2FHvR53aSNyW57EZBUkKjxDPW3hwd43muiWd+6rk8NV0uAa
mVVrq6Pn8MFVd8IawI1GkZbL6QdDj1hwtwy1m9WJMVzx7nBlPLPxMpdZ6ERSUlNa
+rF1HO7zPI7xghWINU0fUV2FrmhRE/8iv3uxE7gx1nhx1ykcnjQO23FNTd5ztDfx
TKkebsoiNpqpqeEHxuSqOpJmhi9nAEAZGXHgpbf6IkdZ3ln8j32Aj/xqE+/npO8i
WSiPW7FDzHyIZg1fGVRFU4eNbFDRkQ==
=szvU
-----END PGP SIGNATURE-----

--TNfCFebVW51fRgAj--
