Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5E9EF420950
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Nov 2021 13:17:28 +0100 (CET)
Received: by mail-wm1-f44.google.com with SMTP id
	k37-20020a05600c1ca500b00330cb84834fso7434068wms.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Nov 2021 04:17:28 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Thu, 18 Nov 2021 13:17:17 +0100
Message-ID: <CAKnz9xJWgMc95YfJun-pG831wTeTyyNAkEz2=v60Bmwo3=ZW0Q@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000053282c05d10f24a0"
Subject: [DRBD-announce] LINSTOR Operator 1.7.0-rc.4 released
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

--00000000000053282c05d10f24a0
Content-Type: text/plain; charset="UTF-8"

Dear LINSTOR on Kubernetes Users,

The rc.3 release contained a bug that would stop the satellite portion of
the operator to function as expected. After the first registration of
satellites, it would get stuck, and no new satellites, storage pools or
other resources would be created.

This release fixes this issue, along with an improved update strategy for
satellites.

The chart is available from charts.linstor.io. For pre-releases helm
requires setting the exact version:

  helm install linstor linstor/linstor --version 1.7.0-rc.4 ...

Please help by testing this release. Please also be aware of the known
issues listed below. Source is available, as always: [1], [2]

Best regards,
Moritz

Known Issues
------------

There is one known issue with the current release candidate, related to the
automatic master passphrase: If a LINSTOR controller restarts and tries
connecting to a satellite, that satellite might refuse the connection, and
you will get a "node not authorized" error in the error reports. The main
symptoms of this is that any commands depending on a satellite hang
indefinitely. The workaround is to restart the satellites (kubectl rollout
restart daemonset/linstor-ns-node).

Changes since 1.6.0
-------------------

Added

- Support LINSTORs `k8s` backend by adding the necessary RBAC resources.
- Automatically create a LINSTOR passphrase when none is configured.
- Automatic eviction and deletion of offline satellites if the Kubernetes
node object was also deleted.

Changed
- DRBD version 9.1.4
- LINSTOR 1.16.0
- LINSTOR CSI 0.16.1
- Updated CSI sidecars

[1]: https://github.com/piraeusdatastore/piraeus-operator
[2]: https://github.com/LINBIT/linstor-operator-builder

--00000000000053282c05d10f24a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear LINSTOR on Kubernetes Users,</div><div><br></div=
><div>The rc.3 release contained a bug that would stop the satellite portio=
n of the operator to function as expected. After the first registration of =
satellites, it would get stuck, and no new satellites, storage pools or oth=
er resources would be created.</div><div><br></div><div>This release fixes =
this issue, along with an improved update strategy for satellites.</div><di=
v><br></div><div>The chart is available from <a href=3D"http://charts.linst=
or.io" target=3D"_blank">charts.linstor.io</a>. For pre-releases helm requi=
res setting the exact version:<br><br>=C2=A0 helm install linstor linstor/l=
instor --version 1.7.0-rc.4 ...</div><div><br></div><div>Please help by tes=
ting this release. Please also be aware of the known=20
issues listed below. Source is available, as always: [1], [2]<br><br>Best r=
egards,<br>Moritz</div><div><br></div><div>Known Issues<br>------------<br>=
<br>There is one known issue with the=20
current release candidate, related to the automatic master passphrase:=20
If a LINSTOR controller restarts and tries connecting to a satellite,=20
that satellite might refuse the connection, and you will get a &quot;node n=
ot
 authorized&quot; error in the error reports. The main symptoms of this is=
=20
that any commands depending on a satellite hang indefinitely. The=20
workaround is to restart the satellites (kubectl rollout restart=20
daemonset/linstor-ns-node).<br><br>Changes since 1.6.0<br>-----------------=
--<br><br>Added<br><br>- Support LINSTORs `k8s` backend by adding the neces=
sary RBAC resources.<br>- Automatically create a LINSTOR passphrase when no=
ne is configured.<br>- Automatic eviction and deletion of offline satellite=
s if the Kubernetes node object was also deleted.<br><br>Changed<br>- DRBD =
version 9.1.4<br>- LINSTOR 1.16.0<br>- LINSTOR CSI 0.16.1<br>- Updated CSI =
sidecars</div><div><br></div><div>[1]: <a href=3D"https://github.com/piraeu=
sdatastore/piraeus-operator" target=3D"_blank">https://github.com/piraeusda=
tastore/piraeus-operator</a><br>[2]: <a href=3D"https://github.com/LINBIT/l=
instor-operator-builder" target=3D"_blank">https://github.com/LINBIT/linsto=
r-operator-builder</a></div></div>

--00000000000053282c05d10f24a0--
