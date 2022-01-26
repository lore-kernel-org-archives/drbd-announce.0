Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2234B420639
	for <drbd-announce@lists.linbit.com>;
	Wed, 26 Jan 2022 14:06:03 +0100 (CET)
Received: by mail-wr1-f44.google.com with SMTP id e8so23879973wrc.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 26 Jan 2022 05:06:03 -0800 (PST)
Date: Wed, 26 Jan 2022 14:06:01 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YfFHOewjt4lMa36x@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4M3vl23J2uQgXbpS"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils v9.20.1
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


--4M3vl23J2uQgXbpS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 9.20.1 of drbd-utils, which should not matter to most
users, we just had a very specific use case in one of our helper
libraries that triggered these changes:

- drbdmeta can and usually is called from a higher level command like
  drbdadm/drbdsetup. drbdmeta might ask the user for confirmation. In
  libraries such a call might hang as drbdmeta waits for confirmation.
  If there is no TTY we don't have to wait, we just fail.

- but drbdmeta also has a "--force" flag, why not use that? First of all
  not waiting if there is not a TTY is valid on it's own, and more
  importantly, drbdadm did not pass along the "--force" flag. This
  is now possible.

Regards, rck

GIT: https://github.com/linbit/drbd-utils/tree/9.20.1
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.20.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--4M3vl23J2uQgXbpS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmHxRzQACgkQRgmezyI6
myI5CQf3VZtTf45PEsCNhZ+OjzdvSHUQVYH7G+4/tgQz2IPUAwjsZi8vWQh4WDOB
qziNojHNIYCeSD1pOLRqLJtZfz+6jksUWKdTlFdiu/n47cGqJu7mostcFoj8Rs9t
fxlyOo184yTs8dGY8k+DYeWU2UQOiDDVzOISx9MpkBsWqNl6fuuoXDFW0u0o6uGN
ul+2Dd3uuO0hMlHklg++CLdILvb5xxeAyafuFuX9dCpfu4+qaZ6mL+mZGMSN3oMv
Y8jBQt2uwMfbkExNkA3xyn48ue1fK2Ys6RjSZLFGgn78/WU1xFUjoOa4BShctkV4
2Wzhm5TF5GzcbI9h1SqCbJsEJRbf
=Do3C
-----END PGP SIGNATURE-----

--4M3vl23J2uQgXbpS--
