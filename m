Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8889D4205DD
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Mar 2022 17:26:46 +0100 (CET)
Received: by mail-wr1-f51.google.com with SMTP id x15so29747848wru.13
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Mar 2022 09:26:46 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Tue, 15 Mar 2022 17:25:35 +0100
Message-ID: <CAKnz9xKQDk-rHf9PHODDsMfpMim3ZN8Y7HCv7=qN8HgsrvzHaw@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000c17b5a05da443f2b"
Subject: [DRBD-announce] LINSTOR Operator 1.8.0
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

--000000000000c17b5a05da443f2b
Content-Type: text/plain; charset="UTF-8"

Dear LINBIT SDS on Kubernetes users,

We just released Operator 1.8.0

As there weren't many changes since the release candidate, I'll mostly copy
that announcement.

1.8.0 includes many quality of life improvements, as well as the usual
upgrade of components.

A few changes I want to highlight:

* Thanks to an open source contributor, it is now easier than ever to set
up secure communication between all components. A simple "--set
linstorHttpsMethod=helm --set linstorSslMethod=helm" will get you started!
An updated user guide will follow soon.

* The new LINSTOR CSI 0.18.0 can finally integrate with the existing
"Backup to S3" features in LINSTOR: That means you can create off-site
backups using the Kubernetes native VolumeSnapshot resources. You can check
the examples on the upstream project for more information, a user guide
will follow soon. [1][2]

* Some much needed bug fixes were applied to the new LINSTOR k8s backend.
Certain operations (such as node evacuation or toggling resources to
diskless) caused LINSTOR 1.17.0 to corrupt its database. These issues are
now fixed.

Speaking of the k8s backend: While upgrading, if you use the k8s backend,
you will be instructed to back up your resources (see [3] how). A new
feature in the Operator can automate this step. However, as the update
might be triggered while the old operator version is still running, the
manual acknowledgement can only be removed in a future update.

The new chart version will be available from https://charts.linstor.io
shorty. New images are available from drbd.io. The usual upgrade procedure
applies:

$ helm repo update
$ helm upgrade linstor-op linstor/linstor -f orig.yaml

For more information, please take a look at the upgrade guide. [3]

Source code is, as always, available upstream. [4]

Best regards,
Moritz

[1]:
https://github.com/piraeusdatastore/linstor-csi/blob/master/examples/k8s/volume-snapshot-class.yaml
[2]:
https://github.com/piraeusdatastore/linstor-csi/blob/master/examples/k8s/volume-snapshot-from-s3.yaml
[3]:
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[4]: https://github.com/piraeusdatastore/piraeus-operator

Full Changes
------------

Breaking
--------

- If you have SSL configured, then the certificates must be regenerated in
PEM format.

Added
-----

- Allow setting the number of parallel requests created by the CSI
sidecars. This limits the load on the LINSTOR backend, which could easily
overload when creating many volumes at once.
- Unify certificates format for SSL enabled installation, no more java
tooling required.
- Automatic certificate generation using Helm or Cert-manager
- HA Controller and CSI components now wait for the LINSTOR API to be
initialized using InitContainers.

Changed
-------

- Create backups of LINSTOR resources if the "k8s" database backend is used
_and_ an image change is detected. Backups are stored in Secret resources
as a `tar.gz`. If the secret gets too big, the backup can be downloaded
from the operator pod.
- Default images:
  * LINSTOR 1.18.0
  * LINSTOR CSI 0.18.0
  * DRBD 9.1.6
  * DRBD Reactor 0.5.3
  * LINSTOR HA Controller 0.3.0
  * CSI Attacher v3.4.0
  * CSI Node Driver Registrar v2.4.0
  * CSI Provisioner v3.1.0
  * CSI Snapshotter v5.0.1
  * CSI Resizer v1.4.0
  * Stork v2.8.2
- Stork updated to support Kubernetes v1.22+.
- Satellites no longer have a readiness probe defined. This caused issues
in the satellites by repeatedly opening unexpected connections, especially
when using SSL.
- Only query node devices if a storage pool needs to be created.
- Use cached storage pool response to avoid causing excessive load on
LINSTOR satellites.
- Protect LINSTOR passphrase from accidental deletion by using a finalizer.

--000000000000c17b5a05da443f2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear LINBIT SDS on Kubernetes users,<br><br>We just releas=
ed Operator 1.8.0<br><br>As there weren&#39;t many changes since the releas=
e candidate, I&#39;ll mostly copy that announcement.<br><br>1.8.0 includes =
many quality of life improvements, as well as the usual upgrade of componen=
ts.<br><br>A few changes I want to highlight:<br><br>* Thanks to an open so=
urce contributor, it is now easier than ever to set up secure communication=
 between all components. A simple &quot;--set linstorHttpsMethod=3Dhelm --s=
et linstorSslMethod=3Dhelm&quot; will get you started! An updated user guid=
e will follow soon.<br>=C2=A0<br>* The new LINSTOR CSI 0.18.0 can finally i=
ntegrate with the existing &quot;Backup to S3&quot; features in LINSTOR: Th=
at means you can create off-site backups using the Kubernetes native Volume=
Snapshot resources. You can check the examples on the upstream project for =
more information, a user guide will follow soon. [1][2]<br><br>* Some much =
needed bug fixes were applied to the new LINSTOR k8s backend. Certain opera=
tions (such as node evacuation or toggling resources to diskless) caused LI=
NSTOR 1.17.0 to corrupt its database. These issues are now fixed.<br><br>Sp=
eaking of the k8s backend: While upgrading, if you use the k8s backend, you=
 will be instructed to back up your resources (see [3] how). A new feature =
in the Operator can automate this step. However, as the update might be tri=
ggered while the old operator version is still running, the manual acknowle=
dgement can only be removed in a future update.<br><br>The new chart versio=
n will be available from <a href=3D"https://charts.linstor.io">https://char=
ts.linstor.io</a> shorty. New images are available from <a href=3D"http://d=
rbd.io">drbd.io</a>. The usual upgrade procedure applies:<br><br>$ helm rep=
o update<br>$ helm upgrade linstor-op linstor/linstor -f orig.yaml<br><br>F=
or more information, please take a look at the upgrade guide. [3]<br><br>So=
urce code is, as always, available upstream. [4]<br><br>Best regards,<br>Mo=
ritz<br><br>[1]: <a href=3D"https://github.com/piraeusdatastore/linstor-csi=
/blob/master/examples/k8s/volume-snapshot-class.yaml">https://github.com/pi=
raeusdatastore/linstor-csi/blob/master/examples/k8s/volume-snapshot-class.y=
aml</a><br>[2]: <a href=3D"https://github.com/piraeusdatastore/linstor-csi/=
blob/master/examples/k8s/volume-snapshot-from-s3.yaml">https://github.com/p=
iraeusdatastore/linstor-csi/blob/master/examples/k8s/volume-snapshot-from-s=
3.yaml</a><br>[3]: <a href=3D"https://linbit.com/drbd-user-guide/linstor-gu=
ide-1_0-en/#s-kubernetes-upgrade">https://linbit.com/drbd-user-guide/linsto=
r-guide-1_0-en/#s-kubernetes-upgrade</a><br>[4]: <a href=3D"https://github.=
com/piraeusdatastore/piraeus-operator">https://github.com/piraeusdatastore/=
piraeus-operator</a><br><br>Full Changes<br>------------<br><br>Breaking<br=
>--------<br><br>- If you have SSL configured, then the certificates must b=
e regenerated in PEM format.<br><br>Added<br>-----<br><br>- Allow setting t=
he number of parallel requests created by the CSI sidecars. This limits the=
 load on the LINSTOR backend, which could easily overload when creating man=
y volumes at once.<br>- Unify certificates format for SSL enabled installat=
ion, no more java tooling required.<br>- Automatic certificate generation u=
sing Helm or Cert-manager<br>- HA Controller and CSI components now wait fo=
r the LINSTOR API to be initialized using InitContainers.<br><br>Changed<br=
>-------<br><br>- Create backups of LINSTOR resources if the &quot;k8s&quot=
; database backend is used _and_ an image change is detected. Backups are s=
tored in Secret resources as a `tar.gz`. If the secret gets too big, the ba=
ckup can be downloaded from the operator pod.<br>- Default images:<br>=C2=
=A0 * LINSTOR 1.18.0<br>=C2=A0 * LINSTOR CSI 0.18.0<br>=C2=A0 * DRBD 9.1.6<=
br>=C2=A0 * DRBD Reactor 0.5.3<br>=C2=A0 * LINSTOR HA Controller 0.3.0<br>=
=C2=A0 * CSI Attacher v3.4.0<br>=C2=A0 * CSI Node Driver Registrar v2.4.0<b=
r>=C2=A0 * CSI Provisioner v3.1.0<br>=C2=A0 * CSI Snapshotter v5.0.1<br>=C2=
=A0 * CSI Resizer v1.4.0<br>=C2=A0 * Stork v2.8.2<br>- Stork updated to sup=
port Kubernetes v1.22+.<br>- Satellites no longer have a readiness probe de=
fined. This caused issues in the satellites by repeatedly opening unexpecte=
d connections, especially when using SSL.<br>- Only query node devices if a=
 storage pool needs to be created.<br>- Use cached storage pool response to=
 avoid causing excessive load on LINSTOR satellites.<br>- Protect LINSTOR p=
assphrase from accidental deletion by using a finalizer.</div>

--000000000000c17b5a05da443f2b--
