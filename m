Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
	[209.85.217.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E81684202D0
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 May 2023 17:23:39 +0200 (CEST)
Received: by mail-vs1-f51.google.com with SMTP id
	ada2fe7eead31-437daacde18so659114137.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 May 2023 08:23:39 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Thu, 25 May 2023 17:22:28 +0200
Message-ID: <CAKnz9xJCjBWS_Rbg+tcKauC1voQ159JXWs-UPAqJgFPo+8mqAg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000db3b4e05fc863063"
Subject: [DRBD-announce] LINSTOR Operator v2.1.1 and v1.10.4
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

--000000000000db3b4e05fc863063
Content-Type: text/plain; charset="UTF-8"

Dear LINBIT SDS on Kubernetes users,

We've recently released updates for our Kubernetes Operator.

First, there is version v2.1.1 for users of our next-generation Operator.
Along with the common image updates, we've improved the way DB migrations
for LINSTOR are handled. We also store the LINSTOR Satellite logs directly
on the host, providing improved traceability should something go wrong.

For users of Operator v1, there is now version v1.10.4. This also comes
with the usual image updates, as well as improved registration of Pods in
LINSTOR.

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

Operator v2.1.1 Changelog
-------------------------

### Added

- LINSTOR Controller deployment now runs DB migrations as a separate init
container, creating a backup of the current DB state if needed.
- Apply global rate limit to LINSTOR API, defaulting to 100 qps.

### Changed

- Store LINSTOR Satellite logs on the host.
- Updated images:
  * LINSTOR 1.23.0
  * LINSTOR CSI 1.1.0
  * DRBD Reactor 1.2.0
  * HA Controller 1.1.4
  * external CSI images upgraded to latest versions

### Fixed

- Fixed a bug where `LinstorSatellite` resources would not be cleaned up
when the satellite is already gone.
- Fixed a bug where the LINSTOR Controller would never report readiness
when TLS is enabled.
- Fixed order in which patches are applied. Always apply user patches last.


Operator v1.10.4 Changelog
--------------------------

### Changed

- Set User-Agent Header when querying LINSTOR.
- Skip registration of non-running Controller Pods.
- Default images:
  * LINSTOR 1.23.0
  * LINSTOR CSI 1.1.0
  * DRBD Reactor 1.2.0
  * external CSI images upgraded to latest versions

--000000000000db3b4e05fc863063
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear LINBIT SDS on Kubernetes users,<br><br>We&#39;ve rece=
ntly released updates for our Kubernetes Operator.<br><br>First, there is v=
ersion v2.1.1 for users of our next-generation Operator. Along with the com=
mon image updates, we&#39;ve improved the way DB migrations for LINSTOR are=
 handled. We also store the LINSTOR Satellite logs directly on the host, pr=
oviding improved traceability should something go wrong.<br><br>For users o=
f Operator v1, there is now version v1.10.4. This also comes with the usual=
 image updates, as well as improved registration of Pods in LINSTOR.<br><br=
>A reminder for users of Operator v1: We will maintain the existing Operato=
r v1 with bug fixes and new software versions until the end of 2023. We wil=
l provide a dedicated upgrade path to Operator v2. We recommend all v1 inst=
allations to continue to use v1. For all new clusters we recommend using v2=
.<br><br>To get specific instructions to apply the update, check our users =
guide: [1]<br><br>Source code is, as always, available upstream. [2]<br><br=
>Best regards,<br>Moritz<br><br>[1]: <a href=3D"https://linbit.com/drbd-use=
r-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade">https://linbit.com/drbd=
-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade</a><br>[2]: <a href=
=3D"https://github.com/piraeusdatastore/piraeus-operator">https://github.co=
m/piraeusdatastore/piraeus-operator</a><br><br>Operator v2.1.1 Changelog<br=
>-------------------------<br><br>### Added<br><br>- LINSTOR Controller dep=
loyment now runs DB migrations as a separate init container, creating a bac=
kup of the current DB state if needed.<br>- Apply global rate limit to LINS=
TOR API, defaulting to 100 qps.<br><br>### Changed<br><br>- Store LINSTOR S=
atellite logs on the host.<br>- Updated images:<br>=C2=A0 * LINSTOR 1.23.0<=
br>=C2=A0 * LINSTOR CSI 1.1.0<br>=C2=A0 * DRBD Reactor 1.2.0<br>=C2=A0 * HA=
 Controller 1.1.4<br>=C2=A0 * external CSI images upgraded to latest versio=
ns<br><br>### Fixed<br><br>- Fixed a bug where `LinstorSatellite` resources=
 would not be cleaned up when the satellite is already gone.<br>- Fixed a b=
ug where the LINSTOR Controller would never report readiness when TLS is en=
abled.<br>- Fixed order in which patches are applied. Always apply user pat=
ches last.<br><br><br>Operator v1.10.4 Changelog<br>-----------------------=
---<br><br>### Changed<br><br>- Set User-Agent Header when querying LINSTOR=
.<br>- Skip registration of non-running Controller Pods.<br>- Default image=
s:<br>=C2=A0 * LINSTOR 1.23.0<br>=C2=A0 * LINSTOR CSI 1.1.0<br>=C2=A0 * DRB=
D Reactor 1.2.0<br>=C2=A0 * external CSI images upgraded to latest versions=
<br></div>

--000000000000db3b4e05fc863063--
