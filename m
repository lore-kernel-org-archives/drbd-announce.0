Return-Path: <roland.kammerer@linbit.com>
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id F0AEF42210A
	for <drbd-announce@lists.linbit.com>;
	Fri, 11 Nov 2022 08:14:41 +0100 (CET)
Received: by mail-ed1-f41.google.com with SMTP id i21so6419467edj.10
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Nov 2022 23:14:41 -0800 (PST)
Date: Fri, 11 Nov 2022 08:14:39 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y232X8VW+ufDdVVV@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1DrHXSBWppxUFqeD"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.10.0-rc.1
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


--1DrHXSBWppxUFqeD
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is RC1 of the upcoming drbd-reactor release v0.10.0. The main
changes should be under the hood and not really noticeable by users.

Because the Python toml parser library every distribution ships is
broken and this is a Rust project anyways, I rewrote drbd-reactorctl in
Rust. This should contain all the functionality you know and fixes some
bugs on the way like actually never unmasking masked services on
"drbd-reactorctl evict" and some minor issues like that.

A user visible change is the output of "drbd-reactorctl status" for
promoter plugins. So far we just called "systemctl list-dependencies"
for the generated systemd target, which printed the service tree in
"random" (alphabetical?) order. While that has no consequences, it
confused users as one would expect the order to correspond to the
start=3D[] list configured for the plugin. Printing that tree ourselves
gave us the opportunity to also annotate the output. This now contains
information about the systemd/cgroup freezer state of a service.

Please test. I plan to do the final release in a week from now, maybe
Mon not Fri :).

GIT: https://github.com/LINBIT/drbd-reactor/commit/0764d708db6c169befea708c=
dd04ceb029f74712
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.10.0-rc.1.=
tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:

[ Roland Kammerer ]
* promoter: check on-no-data-accessible
* doc: fix quorum settings
* ctl: fix enable help text
* completion: trigger make tabcompletion
* ctl: rewrite in Rust
* ctl: improve status for promoter

[ Moritz "WanzenBug" Wanzenb=F6ck ]
* prometheus: use IPv6 anylocal address by default

[ Lars Ellenberg ]
* spelling fix for losing quorum

Regards, rck

--1DrHXSBWppxUFqeD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmNt9lwACgkQRgmezyI6
myL+QAf+J4jigSFzrvht9q9rKX0gvHiwEHDRzmzJOWxbx0WPZWSOi+UoWsWZPgAa
bkyNkt5liGHe+agC5wVuoWZYaGMNP2z4S/d6mE5mrHX4u+zzmuqZYgJABIRddkUn
/NuGppzB5dJaIU1QPgLMRfN6NtP1h6TzEBw1bK9TDgdw6fzJglSILcHKmhR5Kjdo
PFGY6UXQSuqXwEMy3CBUPiTrORtHy4tYGmgtInwMv/TcmuygVqd2e8lgbqHVaJ9y
ijqO9DULsdR/tqvjIgGmiiLEGJrup+PAFOyaAMCNtrBtUnZNePCD4IGLUjWgMM/5
UJZ1/eJKRV+R8gygDLNytG4DSehpqw==
=RMC+
-----END PGP SIGNATURE-----

--1DrHXSBWppxUFqeD--
