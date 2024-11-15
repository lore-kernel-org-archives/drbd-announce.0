Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A5DD3420303
	for <drbd-announce@lists.linbit.com>;
	Fri, 15 Nov 2024 12:37:18 +0100 (CET)
Received: by mail-lf1-f44.google.com with SMTP id
	2adb3069b0e04-53d9ff8f1e4so1934838e87.2
	for <drbd-announce@lists.linbit.com>;
	Fri, 15 Nov 2024 03:37:18 -0800 (PST)
Date: Fri, 15 Nov 2024 12:37:12 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-reactor v1.6.0-rc.1
Message-ID: <ZzcyaNvToIPqp_2M@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xS+0Lay3n5Z1nyKc"
Content-Disposition: inline
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


--xS+0Lay3n5Z1nyKc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is the first RC of the upcoming 1.6.0 release. It has some
additional features like only generating overrides when necessary
instead of empty overrides. Due to recent changes in drbd-utils we no
longer need to override ExecCondition to ExecStart unconditionally,
which produces nicer status output on newer systems.

The main reason for the release is that newer drbd-utils expose a new
keyword (i.e., "open") in the events2 stream, and we now added that to
reactor. Without that the reactor log is spammed with warnings which are
actually harmless. We also changed these log messages from level warn to
debug.

As the changes are pretty minimal and the real reason for this release
is to get the "open" keyword into the parser, this will probably be a
short RC phase with a final release mid next week. So if you want to
help testing, please do so early.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/1b0de0d6eba68d27f3f90603=
0de67aa397503995
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.6.0-rc.1.t=
ar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Moritz Wanzenb=F6ck ]
* umh: fix wrong environment variable name
* events: add "open" to device keywords

[ Roland Kammerer ]
* promoter: do not generate ExecStart override
* promoter: write overrides if necessary
* events: missing keywords -> debug

--xS+0Lay3n5Z1nyKc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmc3MmUACgkQRgmezyI6
myLioAgAr36MReI1IsapcqV3zIZjNQfITHn4k/zUw5X6T7p3bu1KuWCffl76pynQ
R0oJAE3f+5Cz1170mGxLcN80i0LlSGUt8HqZe7KlHWlVt0+r4aZ8IN7HNcZVdedf
aLSTRXsiRfVaoPGIHw/EGF+6SVfgJiTMMubmS0SY8+n9eeiibUc6SE19ggTBh1ve
D951zNs3KTv2SaDj/np8lYWkRM2eKeNb/ukrn8wPImZ+a4+RfN49OjrHJr3sqXtV
wmX+MQdtFYTNvlmTzfAFIkPCF6JzpsqNQ4Y2UXXeoBtYboKm5d4rkwFKwRmow+PW
8Rwt3AC747wE8GpWnKVjiJqiPJZHhw==
=l5oK
-----END PGP SIGNATURE-----

--xS+0Lay3n5Z1nyKc--
