Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6B00242094A
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Jan 2022 16:14:09 +0100 (CET)
Received: by mail-wm1-f44.google.com with SMTP id
	25-20020a05600c231900b003497473a9c4so6587079wmo.5
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Jan 2022 07:14:09 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Tue, 18 Jan 2022 16:13:57 +0100
Message-ID: <CAKnz9xJW3wNs6pK5nQvYrgxb6JDpx6GoXgwZDaSvMB6THu5_AQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000007fe6c005d5dcb898"
Subject: [DRBD-announce] LINSTOR Operator 1.7.1
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

--0000000000007fe6c005d5dcb898
Content-Type: text/plain; charset="UTF-8"

Dear LINSTOR on Kubernetes Users,

We just released LINSTOR Operator 1.7.1.

For the most part, this release focuses on small incremental improvements
and quality of life improvements.

One new feature is support for Flatcar Container Linux. Flatcar Container
Linux is an immutable, Container focused Linux distribution. Since it is
immutable, package management is quite a bit different, so in order to use
LINSTOR Operator, you need the following changes to your helm config:

  operator:
    satelliteSet:
      kernelModuleInjectionAdditionalSourceDirectory: none
      kernelModuleInjectionImage: drbd.io/drbd9-flatcar:v9.1.5_ptf.1
      kernelModuleInjectionMode: Compile

There are also fixes to TLS setup for satellites and preparation for an
updated LINSTOR CSI which finally will support backups to S3.

The new chart version is available from https://charts.linstor.io and new
images are available from drbd.io. The usual upgrade procedure applies:

$ helm repo update
$ helm upgrade linstor-op linstor/linstor -f orig.yaml

For more information, please take a look at the upgrade guide. [1]
Source code is, as always, available upstream. [2]

Best regards,
Moritz

[1]:
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator

Full changes
----------------------------

Added
--------
- Allow the external-provisioner and external-snapshotter access to
secrets. This is required to support StorageClass and SnapshotClass secrets.
- Instruct external-provisioner to pass PVC name+namespace to the CSI
driver, enabling optional support for PVC based names for LINSTOR volumes.
- Allow setting the log level of LINSTOR components via CRs. Other
components are left using their default log level. The new default log
level is INFO (was DEBUG previously, which was often too verbose).
- Override the kernel source directory used when compiling DRBD (defaults
to /usr/src). set
operator.satelliteSet.kernelModuleInjectionAdditionalSourceDirectory=none
to disable this mount.
- etcd-chart: add option to set priorityClassName.
Fixed
--------
- Use correct secret name when setting up TLS for satellites
- Correctly configure ServiceMonitor resource if TLS is enabled for LINSTOR
Controller.

--0000000000007fe6c005d5dcb898
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear LINSTOR on Kubernetes Users,</div><div><br></div=
><div>We just released LINSTOR Operator 1.7.1.</div><div><br></div><div>For=
 the most part, this release focuses on small incremental improvements and =
quality of life improvements.</div><div><br></div><div>One new feature is s=
upport for Flatcar Container Linux. Flatcar Container Linux is an immutable=
, Container focused Linux distribution. Since it is immutable, package mana=
gement is quite a bit different, so in order to use LINSTOR Operator, you n=
eed the following changes to your helm config:<br><br></div><div>=C2=A0 ope=
rator:</div><div>=C2=A0=C2=A0=C2=A0 satelliteSet:</div><div>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 kernelModuleInjectionAdditionalSourceDirectory: none</div><=
div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 kernelModuleInjectionImage: <a href=3D"h=
ttp://drbd.io/drbd9-flatcar:v9.1.5_ptf.1">drbd.io/drbd9-flatcar:v9.1.5_ptf.=
1</a></div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 kernelModuleInjectionMode: C=
ompile</div><div><br></div><div>There are also fixes to TLS setup for satel=
lites and preparation for an updated LINSTOR CSI which finally will support=
 backups to S3.<br></div><div><br></div><div>The new chart version is avail=
able from <a href=3D"https://charts.linstor.io" target=3D"_blank">https://c=
harts.linstor.io</a> and new images are available from <a href=3D"http://dr=
bd.io" target=3D"_blank">drbd.io</a>. The usual upgrade procedure applies:<=
/div><div><br>$ helm repo update<br>$ helm upgrade linstor-op linstor/linst=
or -f orig.yaml<br><br>For more information, please take a look at the upgr=
ade guide. [1]<br>Source code is, as always, available upstream. [2]<br><br=
>Best regards,<br>Moritz<br><br>[1]: <a href=3D"https://linbit.com/drbd-use=
r-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade" target=3D"_blank">https=
://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade</a=
><br>[2]: <a href=3D"https://github.com/piraeusdatastore/piraeus-operator" =
target=3D"_blank">https://github.com/piraeusdatastore/piraeus-operator</a><=
/div><div><br></div><div>Full changes<br></div><div>-----------------------=
-----</div><div><br></div><div>Added<br></div><div>--------<br>- Allow the =
external-provisioner and external-snapshotter access to secrets. This is re=
quired to support StorageClass and SnapshotClass secrets.<br>- Instruct ext=
ernal-provisioner to pass PVC name+namespace to the CSI driver, enabling op=
tional support for PVC based names for LINSTOR volumes.<br>- Allow setting =
the log level of LINSTOR components via CRs. Other components are left usin=
g their default log level. The new default log level is INFO (was DEBUG pre=
viously, which was often too verbose).<br>- Override the kernel source dire=
ctory used when compiling DRBD (defaults to /usr/src). set operator.satelli=
teSet.kernelModuleInjectionAdditionalSourceDirectory=3Dnone to disable this=
 mount.<br>- etcd-chart: add option to set priorityClassName.<br>Fixed<br>-=
-------<br>- Use correct secret name when setting up TLS for satellites<br>=
- Correctly configure ServiceMonitor resource if TLS is enabled for LINSTOR=
 Controller.<br></div></div>

--0000000000007fe6c005d5dcb898--
