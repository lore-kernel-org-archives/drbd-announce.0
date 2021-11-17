Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B36C8420204
	for <drbd-announce@lists.linbit.com>;
	Wed, 17 Nov 2021 10:43:53 +0100 (CET)
Received: by mail-wm1-f41.google.com with SMTP id
	g191-20020a1c9dc8000000b0032fbf912885so1576623wme.4
	for <drbd-announce@lists.linbit.com>;
	Wed, 17 Nov 2021 01:43:53 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Wed, 17 Nov 2021 10:43:42 +0100
Message-ID: <CAKnz9x+TR2CqSUmMaRaCSaKdsozuMaUheBCKhZTDF3RZcPyNAA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000003e517d05d0f8e1f4"
Subject: [DRBD-announce] LINSTOR Operator 1.7.0-rc.3 released
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

--0000000000003e517d05d0f8e1f4
Content-Type: text/plain; charset="UTF-8"

Dear LINSTOR on Kubernetes Users,

We just released a new release candidate for the upcoming Operator release:
1.7.0-rc.3

There are quite a few new features, which we want to ensure are ready for
release, hence the extended release candidate phase. We did not announce
the previous RCs, as they were mostly used for internal testing.

The most exciting feature is certainly the option to run LINSTOR without an
additional database for the Controller. LINSTOR 1.16.0 added experimental
support for using the Kubernetes API directly to store its internal state.
The current plan is to support both Etcd and Kubernetes API as datastore,
with the eventual goal of removing Etcd support once we are happy with the
stability of this new backend. To use it, simply disable Etcd deployment
(--set etcd.enabled=false) and enable the "k8s" datastore (--set
operator.controller.dbConnectionURL=k8s). You can read a bit more about the
details in the upstream documentation. [1]

We also improved support for the LINSTOR backup feature: in order to
securely store any access tokens for remote locations, LINSTOR needs to be
configured with a master passphrase. If no passphrase is defined, the Helm
chart will create one for you. Currently, the backup feature is only
available using the LINSTOR CLI, take a look at the linstor remote ... and
linstor backup ... commands. There are some improvements to the CSI driver
in the pipeline which provide a more natural integration with Kubernetes.

Lastly, if a node is shut down and removed from the cluster, the Operator
will now trigger eviction of that node, i.e. it will try to recreate the
lost resources on a new node.

The chart is available from charts.linstor.io. For pre-releases helm
requires setting the exact version:

  helm install linstor linstor/linstor --version 1.7.0-rc.3 ...

Please help by testing this release. Please also be aware of the known
issues listed below. Source is available, as always: [2], [3]

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

[1]:
https://github.com/piraeusdatastore/piraeus-operator/blob/master/doc/k8s-backend.md
[2]: https://github.com/piraeusdatastore/piraeus-operator
[3]: https://github.com/LINBIT/linstor-operator-builder

--0000000000003e517d05d0f8e1f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear LINSTOR on Kubernetes Users,<br><br>We just released =
a new release candidate for the upcoming Operator release: 1.7.0-rc.3<br><b=
r>There are quite a few new features, which we want to ensure are ready for=
 release, hence the extended release candidate phase. We did not announce t=
he previous RCs, as they were mostly used for internal testing.<br><br>The =
most exciting feature is certainly the option to run LINSTOR without an add=
itional database for the Controller. LINSTOR 1.16.0 added experimental supp=
ort for using the Kubernetes API directly to store its internal state. The =
current plan is to support both Etcd and Kubernetes API as datastore, with =
the eventual goal of removing Etcd support once we are happy with the stabi=
lity of this new backend. To use it, simply disable Etcd deployment (--set =
etcd.enabled=3Dfalse) and enable the &quot;k8s&quot; datastore (--set opera=
tor.controller.dbConnectionURL=3Dk8s). You can read a bit more about the de=
tails in the upstream documentation. [1]<br><br>We also improved support fo=
r the LINSTOR backup feature: in order to securely store any access tokens =
for remote locations, LINSTOR needs to be configured with a master passphra=
se. If no passphrase is defined, the Helm chart will create one for you. Cu=
rrently, the backup feature is only available using the LINSTOR CLI, take a=
 look at the linstor remote ... and linstor backup ... commands. There are =
some improvements to the CSI driver in the pipeline which provide a more na=
tural integration with Kubernetes.<br><br>Lastly, if a node is shut down an=
d removed from the cluster, the Operator will now trigger eviction of that =
node, i.e. it will try to recreate the lost resources on a new node.<br><br=
>The chart is available from <a href=3D"http://charts.linstor.io">charts.li=
nstor.io</a>. For pre-releases helm requires setting the exact version:<br>=
<br>=C2=A0 helm install linstor linstor/linstor --version 1.7.0-rc.3 ...<br=
>=C2=A0 <br>Please help by testing this release. Please also be aware of th=
e known issues listed below. Source is available, as always: [2], [3]<br><b=
r>Best regards,<br>Moritz<br><br>Known Issues<br>------------<br><br>There =
is one known issue with the current release candidate, related to the autom=
atic master passphrase: If a LINSTOR controller restarts and tries connecti=
ng to a satellite, that satellite might refuse the connection, and you will=
 get a &quot;node not authorized&quot; error in the error reports. The main=
 symptoms of this is that any commands depending on a satellite hang indefi=
nitely. The workaround is to restart the satellites (kubectl rollout restar=
t daemonset/linstor-ns-node).<br><br>Changes since 1.6.0<br>---------------=
----<br><br>Added<br><br>- Support LINSTORs `k8s` backend by adding the nec=
essary RBAC resources.<br>- Automatically create a LINSTOR passphrase when =
none is configured.<br>- Automatic eviction and deletion of offline satelli=
tes if the Kubernetes node object was also deleted.<br><br>Changed<br>- DRB=
D version 9.1.4<br>- LINSTOR 1.16.0<br>- LINSTOR CSI 0.16.1<br>- Updated CS=
I sidecars<br><br>[1]: <a href=3D"https://github.com/piraeusdatastore/pirae=
us-operator/blob/master/doc/k8s-backend.md">https://github.com/piraeusdatas=
tore/piraeus-operator/blob/master/doc/k8s-backend.md</a><br>[2]: <a href=3D=
"https://github.com/piraeusdatastore/piraeus-operator">https://github.com/p=
iraeusdatastore/piraeus-operator</a><br>[3]: <a href=3D"https://github.com/=
LINBIT/linstor-operator-builder">https://github.com/LINBIT/linstor-operator=
-builder</a></div>

--0000000000003e517d05d0f8e1f4--
