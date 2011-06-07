Return-Path: <lars.ellenberg@linbit.com>
Date: Tue, 7 Jun 2011 14:30:58 +0200
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-announce@lists.linbit.com
Message-ID: <20110607123058.GD16474@barkeeper1-xen.linbit>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.11rc2.tar.gz
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

This is the second release candidate for 8.3.11.

This will be a maintenance release only,
we had enough new features in the last releases ;)

Still, the usual note applies:
 This is a release candidate, not intended for production.
 Please help with testing!=20

8.3.11rc2 (api:88/proto:86-96)
--------
 * Added missing spinlock in compressed bitmap receive (regression introduc=
ed
   in 8.3.10, could lead to "negative" out-of-sync stats and non-terminating
   resync when "use-rle" is enabled)
 * Fixed handling of read errors during online verify runs
 * Fixes for possible distributed deadlocks during online verify and
   checksum based resync processes
 * Fixed handling of IO errors with an on-io-error=3Dpass-on policy; the
   disk state goes to inconsistent
 * Fixed the behavior in case ping-timeout and ping-int are set to the
   same value
 * Fix for connecting on high latency network links
 * Fixed state transitions if fence-peer handler returns after connection w=
as
   established again
 * Made negotiation of max_bio_size conservative instead of optimistic
 * Network timeouts for mirrored write requests are now always enforced,
   no longer only when the socket is congested

There is one additional fix, not mentioned yet in the changelog above,
to a cosmetic bug in the display of resync rates.
Due to mistaking division for modulo, once you got better than 1 GiByte/s,
it would only display 1,000,001, then 2,000,002, 3,000,003 and so on
(if your hardware was good enough).

http://oss.linbit.com/drbd/8.3/drbd-8.3.11rc2.tar.gz
http://git.drbd.org/?p=3Ddrbd-8.3.git;a=3Dtag;h=3Ddrbd-8.3.11rc2

--=20
: Lars Ellenberg
: LINBIT | Your Way to High Availability
: DRBD/HA support and consulting http://www.linbit.com

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.

--82I3+IH0IqGh5yIs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk3uGgIACgkQp+S8HSIpHPDrvgCfdXzyfyxWw9i16BuI/VWpvMRp
OHwAn342jZOP2/TOZuA69L+d/yVRIHU/
=57tZ
-----END PGP SIGNATURE-----

--82I3+IH0IqGh5yIs--
