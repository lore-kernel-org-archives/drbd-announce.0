Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2FC9242039E
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 May 2021 16:25:27 +0200 (CEST)
Received: by mail-wm1-f42.google.com with SMTP id
	k5-20020a05600c4785b0290174b7945d7eso3294648wmo.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 May 2021 07:25:27 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Mon, 17 May 2021 16:25:16 +0200
Message-ID: <CAKnz9xLejKj5vTKRDADCOPc_hgWB6fMurmw8+FRiZeLc5+Z4Eg@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000006d5d0a05c2875de6"
Subject: [DRBD-announce] linstor-operator 1.5.0 + linstor-csi 0.13.0 released
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

--0000000000006d5d0a05c2875de6
Content-Type: text/plain; charset="UTF-8"

Dear LINSTOR on Kubernetes users,

We just released Linstor Operator 1.5.0 together with Linstor CSI 0.13.0.

This release contains a new and exciting feature: Monitoring via
Prometheus. With the help of the new drbd-reactor project, we can export
metrics related to DRBD from each satellite. If you are already using the
Prometheus Operator the Linstor Operator will even configure the
ServiceMonitor resource to start fetching metrics. For more information,
take a look at the updated user guide. [1]
<https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-monitoring>

Behind the scenes, we cleaned up the labels applied to generated resources.
Unless you have other services targeting Pods or configs created by Linstor
Operator, this change should be completely transparent. It might take a bit
longer for the upgrade to complete, as Deployments need to be deleted and
recreated by the Operator instead of simply patched.

Finally, the operator also defaults to the latest versions of DRBD 9.0 and
Linstor.

On the CSI front, this release contains mostly bug fixes. One new feature
is the possibility to set any Linstor property in a storage class by using
the "property.linstor.csi.linbit.com" prefix in parameters. [2]
<https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-storage-class-properties>

Unfortunately, the introduction of monitoring makes it necessary to upgrade
the LinstorSatelliteSet CRD. This is not included in the normal upgrade
path, and requires you to run these steps before the actual upgrade:

$ helm repo update
$ helm pull linstor/linstor --untar
$ kubectl replace -f linstor/crds/

After this step is done, the usual procedure applies:

$ helm upgrade linstor-op linstor/linstor -f orig.yaml

For more information, please take a look at the upgrade guide. [3]
<https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade>

Best regards,
Moritz

[1]:
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-monitoring
[2]:
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-storage-class-properties
[3]:
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade

Linstor Operator Changelog
--------------------------

Added:
- All operator-managed workloads apply recommended labels. This requires
the recreation of Deployments and DaemonSets
  on upgrade. This is automatically handled by the operator, however any
customizations applied to the deployments
  not managed by the operator will be reverted in the process.
- Use drbd-reactor to expose Prometheus endpoints on each satellite.
- Configure `ServiceMonitor` resources if they are supported by the cluster
(i.e. prometheus operator is configured)

Changed:
- CSI Nodes no longer use `hostNetwork: true`. The pods already got the
correct hostname via the downwardAPI and do not
  talk to DRBD's netlink interface directly.
- External: CSI snapshotter subchart now packages `v1` CRDs. Fixes
deprecation warnings when installing
  the snapshot controller.
- Default images:
  * Linstor Server v1.12.3
  * Linstor CSI v0.13.0
  * DRBD v9.0.29

Linstor CSI Driver
------------------
Added:
- Allow setting arbitrary properties using a parameter prefixed with the `
property.linstor.csi.linbit.com` namespace.

Changed:
- Generate a resource group name if non was provided. The name is generated
based on the provided parameters. Since
  storage classes are immutable, volumes provisioned using the same storage
class will always receive the same
  resource group name.

Removed:
- Resource groups no longer update existing properties or remove additional
properties if they not set in the storage
  class. A resource group is immutable from the linstor-csi's point of view.

Fixed:
- Failed snapshots are now cleaned up and retried properly. This mitigates
an issue whereby the snapshot failed for
  one reason or other, but the snapshot controller contiously polls it for
"completion".

--0000000000006d5d0a05c2875de6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear LINSTOR on Kubernetes users,<br>=C2=A0<br>We just rel=
eased Linstor Operator 1.5.0 together with Linstor CSI 0.13.0.<br>=C2=A0<br=
>This release contains a new and exciting feature: Monitoring via Prometheu=
s. With the help of the new drbd-reactor project, we can export metrics rel=
ated to DRBD from each satellite. If you are already using the Prometheus O=
perator the Linstor Operator will even configure the ServiceMonitor resourc=
e to start fetching metrics. For more information, take a look at the updat=
ed user guide. <a href=3D"https://linbit.com/drbd-user-guide/linstor-guide-=
1_0-en/#s-kubernetes-monitoring">[1]</a><br>=C2=A0<br>Behind the scenes, we=
 cleaned up the labels applied to generated resources. Unless you have othe=
r services targeting Pods or configs created by Linstor Operator, this chan=
ge should be completely transparent. It might take a bit longer for the upg=
rade to complete, as Deployments need to be deleted and recreated by the Op=
erator instead of simply patched.<br>=C2=A0<br>Finally, the operator also d=
efaults to the latest versions of DRBD 9.0 and Linstor.<br>=C2=A0<br>On the=
 CSI front, this release contains mostly bug fixes. One new feature is the =
possibility to set any Linstor property in a storage class by using the &qu=
ot;<a href=3D"http://property.linstor.csi.linbit.com">property.linstor.csi.=
linbit.com</a>&quot; prefix in parameters. <a href=3D"https://linbit.com/dr=
bd-user-guide/linstor-guide-1_0-en/#s-kubernetes-storage-class-properties">=
[2]</a><br>=C2=A0<br>Unfortunately, the introduction of monitoring makes it=
 necessary to upgrade the LinstorSatelliteSet CRD. This is not included in =
the normal upgrade path, and requires you to run these steps before the act=
ual upgrade:<br>=C2=A0<br>$ helm repo update<br>$ helm pull linstor/linstor=
 --untar<br>$ kubectl replace -f linstor/crds/<br>=C2=A0<br>After this step=
 is done, the usual procedure applies:<br>=C2=A0<br>$ helm upgrade linstor-=
op linstor/linstor -f orig.yaml<br>=C2=A0<br>For more information, please t=
ake a look at the upgrade guide. <a href=3D"https://linbit.com/drbd-user-gu=
ide/linstor-guide-1_0-en/#s-kubernetes-upgrade">[3]</a><br>=C2=A0<br>Best r=
egards,<br>Moritz<br>=C2=A0<br>[1]: <a href=3D"https://linbit.com/drbd-user=
-guide/linstor-guide-1_0-en/#s-kubernetes-monitoring">https://linbit.com/dr=
bd-user-guide/linstor-guide-1_0-en/#s-kubernetes-monitoring</a><br>[2]: <a =
href=3D"https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernet=
es-storage-class-properties">https://linbit.com/drbd-user-guide/linstor-gui=
de-1_0-en/#s-kubernetes-storage-class-properties</a><br>[3]: <a href=3D"htt=
ps://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade"=
>https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgr=
ade</a><br>=C2=A0<br>Linstor Operator Changelog<br>------------------------=
--<br>=C2=A0<br>Added:<br>- All operator-managed workloads apply recommende=
d labels. This requires the recreation of Deployments and DaemonSets<br>=C2=
=A0 on upgrade. This is automatically handled by the operator, however any =
customizations applied to the deployments<br>=C2=A0 not managed by the oper=
ator will be reverted in the process.<br>- Use drbd-reactor to expose Prome=
theus endpoints on each satellite.<br>- Configure `ServiceMonitor` resource=
s if they are supported by the cluster (i.e. prometheus operator is configu=
red)<br>=C2=A0<br>Changed:<br>- CSI Nodes no longer use `hostNetwork: true`=
. The pods already got the correct hostname via the downwardAPI and do not<=
br>=C2=A0 talk to DRBD&#39;s netlink interface directly.<br>- External: CSI=
 snapshotter subchart now packages `v1` CRDs. Fixes deprecation warnings wh=
en installing<br>=C2=A0 the snapshot controller.<br>- Default images:<br>=
=C2=A0 * Linstor Server v1.12.3<br>=C2=A0 * Linstor CSI v0.13.0<br>=C2=A0 *=
 DRBD v9.0.29<br>=C2=A0 =C2=A0<br>Linstor CSI Driver<br>------------------<=
br>Added:<br>- Allow setting arbitrary properties using a parameter prefixe=
d with the `<a href=3D"http://property.linstor.csi.linbit.com">property.lin=
stor.csi.linbit.com</a>` namespace.<br>=C2=A0<br>Changed:<br>- Generate a r=
esource group name if non was provided. The name is generated based on the =
provided parameters. Since<br>=C2=A0 storage classes are immutable, volumes=
 provisioned using the same storage class will always receive the same<br>=
=C2=A0 resource group name.<br>=C2=A0<br>Removed:<br>- Resource groups no l=
onger update existing properties or remove additional properties if they no=
t set in the storage<br>=C2=A0 class. A resource group is immutable from th=
e linstor-csi&#39;s point of view.<br>=C2=A0<br>Fixed:<br>- Failed snapshot=
s are now cleaned up and retried properly. This mitigates an issue whereby =
the snapshot failed for<br>=C2=A0 one reason or other, but the snapshot con=
troller contiously polls it for &quot;completion&quot;.<br></div>

--0000000000006d5d0a05c2875de6--
