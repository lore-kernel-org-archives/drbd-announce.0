Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
	[209.85.222.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 95AE24202E5
	for <drbd-announce@lists.linbit.com>;
	Tue, 25 Apr 2023 14:33:42 +0200 (CEST)
Received: by mail-ua1-f47.google.com with SMTP id
	a1e0cc1a2514c-772661d22c2so1909149241.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 25 Apr 2023 05:33:42 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Tue, 25 Apr 2023 14:33:30 +0200
Message-ID: <CAKnz9xLJRZLSt7JyL00hG7M5owKdoPLwhbAG9V35xNm2DSOVMg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000006269ae05fa2855fe"
Subject: [DRBD-announce] LINSTOR Operator v2.1.0 and v1.10.3
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

--0000000000006269ae05fa2855fe
Content-Type: text/plain; charset="UTF-8"

Dear LINBIT SDS on Kubernetes users,

We've recently released updates for our Kubernetes Operator.

First, there is version v2.1.0 for users of our next-generation Operator.
Along with the common image updates, it's not possible to specify the URL
for an existing LINSTOR installation. The Operator will then skip
deployment of the LINSTOR Controller and will configure all other
components to use the existing cluster.

For users of Operator v1, there is now version v1.10.3. Along with the
common image updates, this version makes it possible to control the
verbosity of the Operator pod itself.

A reminder for users of Operator v1: We will maintain the existing Operator
v1 with bug fixes and new software versions until the end of 2023. We will
provide a dedicated upgrade path to Operator v2. We recommend all v1
installations to continue to use v1. For all new clusters we recommend
using v2.

To get specific instructions to apply the update, check our users guide: [1]

Source code is, as always, available upstream. [2]

Best regards,
Moritz

[1]:
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator

Operator v2.1.0 Changelog
-------------------------

### Added

- Ability to skip deploying the LINSTOR Controller by setting
`LinstorCluster.spec.externalController`.
- Automatically reconcile changed image configuration.

### Changed

- Fix an issue where the CSI node driver would use the CSI socket not
through the expected path in the container.
- Updated images:
  * LINSTOR 1.22.0
  * LINSTOR CSI 1.0.1
  * DRBD 9.2.3
  * DRBD Reactor 1.1.0
  * HA Controller 1.1.3
  * external CSI images upgraded to latest versions

Operator v1.10.3 Changelog
--------------------------

### Changed

- Switch controller logging to be controlled by the `zap-log-level` flag.
- Default images:
  * LINSTOR 1.22.0
  * LINSTOR CSI 1.0.1
  * DRBD 9.1.14
  * DRBD Reactor 1.1.0
  * external CSI images upgraded to latest versions

--0000000000006269ae05fa2855fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear LINBIT SDS on Kubernetes users,<br><br>We&#39;ve rece=
ntly released updates for our Kubernetes Operator.<br><br>First, there is v=
ersion v2.1.0 for users of our next-generation Operator. Along with the com=
mon image updates, it&#39;s not possible to specify the URL for an existing=
 LINSTOR installation. The Operator will then skip deployment of the LINSTO=
R Controller and will configure all other components to use the existing cl=
uster.<br><br>For users of Operator v1, there is now version v1.10.3. Along=
 with the common image updates, this version makes it possible to control t=
he verbosity of the Operator pod itself.<br><br>A reminder for users of Ope=
rator v1: We will maintain the existing Operator v1 with bug fixes and new =
software versions until the end of 2023. We will provide a dedicated upgrad=
e path to Operator v2. We recommend all v1 installations to continue to use=
 v1. For all new clusters we recommend using v2.<br><br>To get specific ins=
tructions to apply the update, check our users guide: [1]<br><br>Source cod=
e is, as always, available upstream. [2]<br><br>Best regards,<br>Moritz<br>=
<br>[1]: <a href=3D"https://linbit.com/drbd-user-guide/linstor-guide-1_0-en=
/#s-kubernetes-upgrade">https://linbit.com/drbd-user-guide/linstor-guide-1_=
0-en/#s-kubernetes-upgrade</a><br>[2]: <a href=3D"https://github.com/piraeu=
sdatastore/piraeus-operator">https://github.com/piraeusdatastore/piraeus-op=
erator</a><br><br>Operator v2.1.0 Changelog<br>-------------------------<br=
><br>### Added<br><br>- Ability to skip deploying the LINSTOR Controller by=
 setting `LinstorCluster.spec.externalController`.<br>- Automatically recon=
cile changed image configuration.<br><br>### Changed<br><br>- Fix an issue =
where the CSI node driver would use the CSI socket not through the expected=
 path in the container.<br>- Updated images:<br>=C2=A0 * LINSTOR 1.22.0<br>=
=C2=A0 * LINSTOR CSI 1.0.1<br>=C2=A0 * DRBD 9.2.3<br>=C2=A0 * DRBD Reactor =
1.1.0<br>=C2=A0 * HA Controller 1.1.3<br>=C2=A0 * external CSI images upgra=
ded to latest versions<br><br>Operator v1.10.3 Changelog<br>---------------=
-----------<br><br>### Changed<br><br>- Switch controller logging to be con=
trolled by the `zap-log-level` flag.<br>- Default images:<br>=C2=A0 * LINST=
OR 1.22.0<br>=C2=A0 * LINSTOR CSI 1.0.1<br>=C2=A0 * DRBD 9.1.14<br>=C2=A0 *=
 DRBD Reactor 1.1.0<br>=C2=A0 * external CSI images upgraded to latest vers=
ions<br></div>

--0000000000006269ae05fa2855fe--
