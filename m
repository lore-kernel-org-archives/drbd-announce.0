Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
	[209.85.222.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5EF2E42061C
	for <drbd-announce@lists.linbit.com>;
	Mon, 13 Mar 2023 10:40:06 +0100 (CET)
Received: by mail-ua1-f43.google.com with SMTP id v48so7782776uad.6
	for <drbd-announce@lists.linbit.com>;
	Mon, 13 Mar 2023 02:40:06 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Mon, 13 Mar 2023 10:39:54 +0100
Message-ID: <CAKnz9xLjXLaoFr7C+ufOzW=f3rkzgbGToY4mr4Ma=CsKOGdRUA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000059a89905f6c4e555"
Subject: [DRBD-announce] LINSTOR Operator v2.0.1
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

--00000000000059a89905f6c4e555
Content-Type: text/plain; charset="UTF-8"

Dear LINBIT SDS on Kubernetes users,

We've recently released the first stable version 2.0.1 of our
next-generation Kubernetes Operator.

This new version of the Operator represents a complete rewrite, taking into
account all the common issues encountered with our existing Operator
offering. The new Operator is much easier to set up and maintain, while
allowing a greater degree of customization for those that require it.

To give you an overview over the most important new features:

* The LINSTOR Satellites are now running in the normal Kubernetes Pod
network instead of the host network. This makes it possible to use all the
Kubernetes tools such as NetworkPolicies to control DRBD replication
traffic. This feature is made possible by using the new network namespace
support in DRBD 9.2.

* The default mode for when DRBD can't access data is now "suspend-io".
This ensures that your volumes won't suddenly switch to read-only mode. To
ensure that your cluster continues to run in the event of actual
long-lasting networking issues, we've included our HA Controller as well as
a new DRBD Shutdown Guard. The last component ensures that your node can
cleanly shut down even if it has suspended DRBD volumes.

* The Operator now intelligently selects which DRBD loader image to use, so
for many clusters, you won't need to make any specific changes to the
default deployment instructions.

* The Operator has a built-in way to deal with non-uniform storage layouts:
If you have some nodes with storage and some nodes as dedicated worker
nodes without their own storage, this is now much easier to set up than in
previous versions.

* The Operator accepts a list of "patches" to all resources it controls.
This makes it possible to make required changes to the controlled resources
without having to rely on the Operator itself to expose it directly.

To deploy the Operator, we've chosen to switch to using "kustomize", which
is integrated with the normal kubectl command. In contrast to helm, you can
make changes to the deployment without having to learn hundreds of template
options. To deploy the new Operator on a new cluster, you can simply follow
these steps:

1. Create a "kustomization.yaml" file with the following content, replacing
"MY_LINBIT_USER" and "MY_LINBIT_PASSWORD" with your credentials. This
kustomization file will deploy the LINSTOR Operator in the "linbit-sds"
namespace:

---
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
namespace: linbit-sds
resources:
  -
https://github.com/LINBIT/linstor-operator-builder//deploy/default?ref=v2.0.1
generatorOptions:
  disableNameSuffixHash: true
secretGenerator:
  - name: drbdio-pull-secret
    type: kubernetes.io/dockerconfigjson
    literals:
      - .dockerconfigjson={"auths":{"drbd.io
":{"username":"MY_LINBIT_USER","password":"MY_LINBIT_PASSWORD"}}}
---

2. Apply the kustomization using "kubectl apply -k ."

3. Create a "linbit-sds.yaml" file with the necessary resources for LINSTOR
Operator. This example will create a cluster and configure a simple file
based storage pool on all nodes to get you started:

---
apiVersion: piraeus.io/v1
kind: LinstorCluster
metadata:
  name: linstorcluster
spec: {}
---
apiVersion: piraeus.io/v1
kind: LinstorSatelliteConfiguration
metadata:
  name: storage-pool
spec:
  storagePools:
    - name: pool1
      fileThinPool:
        directory: /var/lib/linbit-sds/pool1
---

4. Apply the resources by running "kubectl apply -f linbit-sds.yaml".

After step 4 you will have a working LINBIT SDS for Kubernetes set up,
configured with storage pools ready for testing. For a more in-depth guide
and the next steps, you can check out our Users Guide[1] and the available
tutorials and how-to guides upstream[2].

A note for users of Operator v1: We will maintain the existing Operator v1
with bug fixes and new software versions until the end of 2023. We will
provide a dedicated upgrade path to Operator v2. We recommend all v1
installations to continue to use v1. For all new clusters we recommend
using v2.

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#ch-kubernetes
[2]: https://github.com/piraeusdatastore/piraeus-operator/tree/v2/docs/

--00000000000059a89905f6c4e555
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear LINBIT SDS on Kubernetes users,<br><br>We&#39;ve rece=
ntly released the first stable version 2.0.1 of our next-generation Kuberne=
tes Operator.<br><br>This new version of the Operator represents a complete=
 rewrite, taking into account all the common issues encountered with our ex=
isting Operator offering. The new Operator is much easier to set up and mai=
ntain, while allowing a greater degree of customization for those that requ=
ire it.<br><br>To give you an overview over the most important new features=
:<br><br>* The LINSTOR Satellites are now running in the normal Kubernetes =
Pod network instead of the host network. This makes it possible to use all =
the Kubernetes tools such as NetworkPolicies to control DRBD replication tr=
affic. This feature is made possible by using the new network namespace sup=
port in DRBD 9.2.<br><br>* The default mode for when DRBD can&#39;t access =
data is now &quot;suspend-io&quot;. This ensures that your volumes won&#39;=
t suddenly switch to read-only mode. To ensure that your cluster continues =
to run in the event of actual long-lasting networking issues, we&#39;ve inc=
luded our HA Controller as well as a new DRBD Shutdown Guard. The last comp=
onent ensures that your node can cleanly shut down even if it has suspended=
 DRBD volumes.<br><br>* The Operator now intelligently selects which DRBD l=
oader image to use, so for many clusters, you won&#39;t need to make any sp=
ecific changes to the default deployment instructions.<br><br>* The Operato=
r has a built-in way to deal with non-uniform storage layouts: If you have =
some nodes with storage and some nodes as dedicated worker nodes without th=
eir own storage, this is now much easier to set up than in previous version=
s.<br><br>* The Operator accepts a list of &quot;patches&quot; to all resou=
rces it controls. This makes it possible to make required changes to the co=
ntrolled resources without having to rely on the Operator itself to expose =
it directly.<br><br>To deploy the Operator, we&#39;ve chosen to switch to u=
sing &quot;kustomize&quot;, which is integrated with the normal kubectl com=
mand. In contrast to helm, you can make changes to the deployment without h=
aving to learn hundreds of template options. To deploy the new Operator on =
a new cluster, you can simply follow these steps:<br><br>1. Create a &quot;=
kustomization.yaml&quot; file with the following content, replacing &quot;M=
Y_LINBIT_USER&quot; and &quot;MY_LINBIT_PASSWORD&quot; with your credential=
s. This kustomization file will deploy the LINSTOR Operator in the &quot;li=
nbit-sds&quot; namespace:<br><br>---<br>apiVersion: <a href=3D"http://kusto=
mize.config.k8s.io/v1beta1">kustomize.config.k8s.io/v1beta1</a><br>kind: Ku=
stomization<br>namespace: linbit-sds<br>resources:<br>=C2=A0 - <a href=3D"h=
ttps://github.com/LINBIT/linstor-operator-builder//deploy/default?ref=3Dv2.=
0.1">https://github.com/LINBIT/linstor-operator-builder//deploy/default?ref=
=3Dv2.0.1</a><br>generatorOptions:<br>=C2=A0 disableNameSuffixHash: true<br=
>secretGenerator:<br>=C2=A0 - name: drbdio-pull-secret<br>=C2=A0 =C2=A0 typ=
e: <a href=3D"http://kubernetes.io/dockerconfigjson">kubernetes.io/dockerco=
nfigjson</a><br>=C2=A0 =C2=A0 literals:<br>=C2=A0 =C2=A0 =C2=A0 - .dockerco=
nfigjson=3D{&quot;auths&quot;:{&quot;<a href=3D"http://drbd.io">drbd.io</a>=
&quot;:{&quot;username&quot;:&quot;MY_LINBIT_USER&quot;,&quot;password&quot=
;:&quot;MY_LINBIT_PASSWORD&quot;}}}<br>---<br><br>2. Apply the kustomizatio=
n using &quot;kubectl apply -k .&quot;<br><br>3. Create a &quot;linbit-sds.=
yaml&quot; file with the necessary resources for LINSTOR Operator. This exa=
mple will create a cluster and configure a simple file based storage pool o=
n all nodes to get you started:<br><br>---<br>apiVersion: <a href=3D"http:/=
/piraeus.io/v1">piraeus.io/v1</a><br>kind: LinstorCluster<br>metadata:<br>=
=C2=A0 name: linstorcluster<br>spec: {}<br>---<br>apiVersion: <a href=3D"ht=
tp://piraeus.io/v1">piraeus.io/v1</a><br>kind: LinstorSatelliteConfiguratio=
n<br>metadata:<br>=C2=A0 name: storage-pool<br>spec:<br>=C2=A0 storagePools=
:<br>=C2=A0 =C2=A0 - name: pool1<br>=C2=A0 =C2=A0 =C2=A0 fileThinPool:<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 directory: /var/lib/linbit-sds/pool1<br>---<br>=
<br>4. Apply the resources by running &quot;kubectl apply -f linbit-sds.yam=
l&quot;.<br><br>After step 4 you will have a working LINBIT SDS for Kuberne=
tes set up, configured with storage pools ready for testing. For a more in-=
depth guide and the next steps, you can check out our Users Guide[1] and th=
e available tutorials and how-to guides upstream[2].<br><br>A note for user=
s of Operator v1: We will maintain the existing Operator v1 with bug fixes =
and new software versions until the end of 2023. We will provide a dedicate=
d upgrade path to Operator v2. We recommend all v1 installations to continu=
e to use v1. For all new clusters we recommend using v2.<br><br>Best regard=
s,<br>Moritz<br><br>[1]: <a href=3D"https://linbit.com/drbd-user-guide/lins=
tor-guide-1_0-en/#ch-kubernetes">https://linbit.com/drbd-user-guide/linstor=
-guide-1_0-en/#ch-kubernetes</a><br>[2]: <a href=3D"https://github.com/pira=
eusdatastore/piraeus-operator/tree/v2/docs/">https://github.com/piraeusdata=
store/piraeus-operator/tree/v2/docs/</a></div>

--00000000000059a89905f6c4e555--
