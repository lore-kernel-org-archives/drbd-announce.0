Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id DCB5A16094F
	for <drbd-announce@lists.linbit.com>;
	Tue,  7 Oct 2025 14:28:34 +0200 (CEST)
Received: by mail-lf1-f53.google.com with SMTP id
	2adb3069b0e04-57b7c83cc78so6004694e87.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 07 Oct 2025 05:28:34 -0700 (PDT)
Date: Tue, 7 Oct 2025 14:28:32 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-reactor v1.10.0-rc.1
Message-ID: <aOUHcFRuY80Xzf9n@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hZSM3ZUTNQeJTfuo"
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


--hZSM3ZUTNQeJTfuo
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is the first RC of the upcoming 1.10.0 release. This version is a
bit bigger than the last ones, but contains some nice features and
fixes:

We now support two node clusters if fencing is properly configured[1].
The split-brain avoidance policy is auto detected and there are no
visible changes for existing (i.e., quorum) users. There are edge cases
where we want to support two node clusters with fencing, but all users
that can should use DRBD quorum as avoidance mechanism instead.

The second change worth mentioning is that we now generate a stronger
dependency (i.e. BindsTo) for the drbd-promote@.service. Details can be
found here[2].

Please test, if we don't find any bugs we will release the final version
in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/548162e344fa3c7097cc5913=
27454e3848e0b5bb
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.10.0-rc.1.=
tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

Changelog:
[ Moritz Wanzenb=F6ck ]
* ci: add CVE scan
* remove atty dependency
* deps: bump crossbeam-channel
* debian: do not clean Cargo.toml.orig

[ Roland Kammerer ]
* example: add tmpcontroller.sh
* ctl: don't use clap crate_authors!()
* promoter: simplify sleep calculation
* doc: minor drbd-reactorctl(1) fix
* nix: add clippy
* promoter: add support for 2 node cluster
* update .gitignore
* promoter: generate stronger promote service dep

[1] https://github.com/LINBIT/drbd-reactor/blob/master/doc/promoter.md#two-=
node-clusters-with-fencing
[2] https://github.com/LINBIT/drbd-reactor/commit/f592044ea5565c4471f138ad6=
3fa5a757cabf6b4

--hZSM3ZUTNQeJTfuo
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmjlB2kACgkQRgmezyI6
myJXEAf9HGb0RycLV3eLSBTnn5y0K02/YQ2C1o1d2YfM/Xavhz13E0JW+XQVESvj
5Osb2M35WaOtPgS8mZvawI+EcV/eZlLDBlHIw8flhZZURhEh62s/bZnknArnvPcq
RcXJl3PxS83+ayY1tp+/tb5SYO7StWGTLwfQvuz0z3isejqIJD+MH0gBTf/V9l3S
FKgQanXpwtbEecbKt9JPdwHzZyHPZlA40Sa3c0aeA3437aOilzsr2kBuqC3QIAex
YY8oP6W+es47hHdcXt4W+Uj9+oDrRf5LBgg/mPW1rhThQ2aDPWgB5IpifUK04Md7
ABc2yKQbZ1N8ZRx3hg/XuQ4+hB09eA==
=sq3h
-----END PGP SIGNATURE-----

--hZSM3ZUTNQeJTfuo--
