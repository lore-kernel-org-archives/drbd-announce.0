Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2A3AB42061B
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Dec 2021 14:48:10 +0100 (CET)
Received: by mail-wr1-f45.google.com with SMTP id j3so32520023wrp.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Dec 2021 05:48:10 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Tue, 14 Dec 2021 14:47:59 +0100
Message-ID: <CAKnz9xJc5AWwmXRAWYnM6z2pnFqFXHkpxFXfwpkJ754SkwkAVQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000009c94ec05d31b70d6"
Subject: [DRBD-announce] LINSTOR Operator 1.7.0 and LINSTOR CSI 0.17.0
	released
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

--0000000000009c94ec05d31b70d6
Content-Type: text/plain; charset="UTF-8"

Dear LINSTOR on Kubernetes Users,

We just released LINSTOR Operator 1.7.0 as well as LINSTOR CSI 0.17.0.

The most exciting feature is certainly the option to run LINSTOR without an
additional database for the LINSTOR Controller. LINSTOR 1.16.0 added
experimental support for using the Kubernetes API directly to store its
internal state, which has been enhanced in 1.17.0. The current plan is to
support both Etcd and Kubernetes API as datastore, with the eventual goal
of removing Etcd support once we are happy with the stability of this new
backend. For more information, take a look at the updated user guide. [1]

This is also the first LINSTOR Operator release that supports creating
backups of your volumes and storing them in S3 or another LINSTOR cluster.
Currently this is only available using the LINSTOR CLI, take a look at the
linstor remote ... and linstor backup ... commands. In a future release,
this should be more tightly integrated with the Kubernetes infrastructure.
In order to securly store any access tokens for remote locations, LINSTOR
needs to be configured with a master passphrase. If no passphrase is
defined, the Helm chart will create one for you.

On the LINSTOR CSI front, a lot of improvements have been made under the
hood since shifting our focus away from Stork. The CSI driver now
automatically decides when it is appropriate to create diskless resources.
Previous releases of LINSTOR CSI would cause Kubernetes to never schedule
on nodes without a storage pool, even if diskless access was permitted.
With the introduction of advanced rules for diskless access, this issue is
now resolved. You can find examples in our user guide. [2]

The new chart version is available from https://charts.linstor.io and new
images are available from drbd.io. The usual upgrade procedure applies:

$ helm repo update
$ helm upgrade linstor-op linstor/linstor -f orig.yaml

For more information, please take a look at the upgrade guide. [3]

Source code is, as always, available upstream. [4]

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#ch-kubernetes
[2]:
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-volume-accessibility-and-locality
[3]:
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[4]: https://github.com/piraeusdatastore/piraeus-operator

Full changes
------------

Added (Operator)
----------------
- Automatically create a LINSTOR passphrase when none is configured.
- Automatic eviction and deletion of offline satellites if the Kubernetes
node object was also deleted.

Changed (Operator)
------------------

- Default images:
-- drbd.io/linstor-controller:v1.17.0
-- drbd.io/linstor-satellite:v1.17.0
-- drbd.io/linstor-csi:v0.17.0
-- drbd.io/drbd9-rhel7:v9.1.4
-- drbd.io/drbd-reactor:v0.5.1
- Recreates or updates to the satellite pods are now applied at once,
instead of waiting for a node to complete before
  moving to the next.

Added (CSI)
-----------

- Gained the ability to handle preprovisioned volumes. In general this
involves creating matching PV object with the volume handle set to an
existing LINSTOR resource.
- Finer diskless volume control with new allowed values for the
"allowRemoteVolumeAccess" parameter.

Changed (CSI)
-------------

- Expand volumes after cloning or restoring from snapshot if required.
Previously the volume would report the wrong size to Kubernetes, creating
smaller volumes than requested by accident.

--0000000000009c94ec05d31b70d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear LINSTOR on Kubernetes Users,<br><br>We just released =
LINSTOR Operator 1.7.0 as well as LINSTOR CSI 0.17.0.<br><br>The most excit=
ing feature is certainly the option to run LINSTOR without an additional da=
tabase for the LINSTOR Controller. LINSTOR 1.16.0 added experimental suppor=
t for using the Kubernetes API directly to store its internal state, which =
has been enhanced in 1.17.0. The current plan is to support both Etcd and K=
ubernetes API as datastore, with the eventual goal of removing Etcd support=
 once we are happy with the stability of this new backend. For more informa=
tion, take a look at the updated user guide. [1]<br><br>This is also the fi=
rst LINSTOR Operator release that supports creating backups of your volumes=
 and storing them in S3 or another LINSTOR cluster. Currently this is only =
available using the LINSTOR CLI, take a look at the linstor remote ... and =
linstor backup ... commands. In a future release, this should be more tight=
ly integrated with the Kubernetes infrastructure. In order to securly store=
 any access tokens for remote locations, LINSTOR needs to be configured wit=
h a master passphrase. If no passphrase is defined, the Helm chart will cre=
ate one for you.<br><br>On the LINSTOR CSI front, a lot of improvements hav=
e been made under the hood since shifting our focus away from Stork. The CS=
I driver now automatically decides when it is appropriate to create diskles=
s resources. Previous releases of LINSTOR CSI would cause Kubernetes to nev=
er schedule on nodes without a storage pool, even if diskless access was pe=
rmitted. With the introduction of advanced rules for diskless access, this =
issue is now resolved. You can find examples in our user guide. [2]<br><br>=
The new chart version is available from <a href=3D"https://charts.linstor.i=
o">https://charts.linstor.io</a> and new images are available from <a href=
=3D"http://drbd.io">drbd.io</a>. The usual upgrade procedure applies:<br><b=
r>$ helm repo update<br>$ helm upgrade linstor-op linstor/linstor -f orig.y=
aml<br><br>For more information, please take a look at the upgrade guide. [=
3]<br><br>Source code is, as always, available upstream. [4]<br><br>Best re=
gards,<br>Moritz<br><br>[1]: <a href=3D"https://linbit.com/drbd-user-guide/=
linstor-guide-1_0-en/#ch-kubernetes">https://linbit.com/drbd-user-guide/lin=
stor-guide-1_0-en/#ch-kubernetes</a><br>[2]: <a href=3D"https://linbit.com/=
drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-volume-accessibility-and=
-locality">https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kuber=
netes-volume-accessibility-and-locality</a><br>[3]: <a href=3D"https://linb=
it.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade">https://=
linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade</a><b=
r>[4]: <a href=3D"https://github.com/piraeusdatastore/piraeus-operator">htt=
ps://github.com/piraeusdatastore/piraeus-operator</a><br><br>Full changes<b=
r>------------<br><br>Added (Operator)<br>----------------<br>- Automatical=
ly create a LINSTOR passphrase when none is configured.<br>- Automatic evic=
tion and deletion of offline satellites if the Kubernetes node object was a=
lso deleted.<br><br>Changed (Operator)<br>------------------<br><br>- Defau=
lt images:<br>-- <a href=3D"http://drbd.io/linstor-controller:v1.17.0">drbd=
.io/linstor-controller:v1.17.0</a><br>-- <a href=3D"http://drbd.io/linstor-=
satellite:v1.17.0">drbd.io/linstor-satellite:v1.17.0</a><br>-- <a href=3D"h=
ttp://drbd.io/linstor-csi:v0.17.0">drbd.io/linstor-csi:v0.17.0</a><br>-- <a=
 href=3D"http://drbd.io/drbd9-rhel7:v9.1.4">drbd.io/drbd9-rhel7:v9.1.4</a><=
br>-- <a href=3D"http://drbd.io/drbd-reactor:v0.5.1">drbd.io/drbd-reactor:v=
0.5.1</a><br>- Recreates or updates to the satellite pods are now applied a=
t once, instead of waiting for a node to complete before<br>=C2=A0 moving t=
o the next.<br><br>Added (CSI)<br>-----------<br><br>- Gained the ability t=
o handle preprovisioned volumes. In general this involves creating matching=
 PV object with the volume handle set to an existing LINSTOR resource.<br>-=
 Finer diskless volume control with new allowed values for the &quot;allowR=
emoteVolumeAccess&quot; parameter.<br><br>Changed (CSI)<br>-------------<br=
><br>- Expand volumes after cloning or restoring from snapshot if required.=
 Previously the volume would report the wrong size to Kubernetes, creating =
smaller volumes than requested by accident.<br><br><br></div>

--0000000000009c94ec05d31b70d6--
