Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4B51B4203AE
	for <drbd-announce@lists.linbit.com>;
	Mon,  6 May 2024 13:44:27 +0200 (CEST)
Received: by mail-lj1-f173.google.com with SMTP id
	38308e7fff4ca-2dd6c14d000so23746611fa.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 06 May 2024 04:44:27 -0700 (PDT)
Date: Mon, 6 May 2024 13:44:25 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: linstor-proxmox v8.0.2
Message-ID: <ZjjCmU8O8YKcX5ol@arm64>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Yu4ZJBapG5/muvAp"
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


--Yu4ZJBapG5/muvAp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD on PVE users,

this is another small bugfix release for the version 8 series of the
plugin. Again, the stricter name checks stroke back and the plugin
refused to create RAM state disks if a VM was snapshotted while the
"include RAM" box was checked (the default for running VMs). This
creates disks like vm-VMID-state-SNAPNAME. These kind of names are now
in the allow list.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/11ac4040640ee69b5ee4a2665c46cb47dc1d6b6e
TGZ: https://pkg.linbit.com//downloads/connectors/linstor-proxmox-8.0.2.tar.gz

--Yu4ZJBapG5/muvAp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmY4wpAACgkQRgmezyI6
myJUBAf+NBQKNZUlVFeEx7uS1KHqvif109uX9057Q3XI6kWh6d+e82/iBZTC3rn1
Ir8FybcQ+Cy4HqV8KEA3xkppTL4qNemwR9rOogkD+gM//v3Lqh9TwN0SYPtvDF9/
YLF3cBJjz9rW3HD+OY6G0ob0jLzCe+8hCjttzj6+EQL/Tuqe416KZbg/OROhj5xN
BTTv7VCLD3mdiOi6+NF7IVuWd9IBWhkNeRSt1HnHiOsrPXbg2n0p2IwPD2cPE0Kd
4ejsf3Lk4U/bMO/E5KpLbMbbMdboncCKNwWKN8mazyrUgGYCSH/bJNSROA/s5Hx3
l3LRZB1OKqPkDWXmQgonplcLN3Mg0Q==
=ZDs4
-----END PGP SIGNATURE-----

--Yu4ZJBapG5/muvAp--
