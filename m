Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
	[209.85.218.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1EA41160650
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Jul 2025 18:52:35 +0200 (CEST)
Received: by mail-ej1-f51.google.com with SMTP id
	a640c23a62f3a-ae0a0cd709bso17329066b.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Jul 2025 09:52:35 -0700 (PDT)
Date: Tue, 15 Jul 2025 18:52:34 +0200
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: LINSTOR GUI v1.9.8
Message-ID: <20250715165234.-XSR-%christoph.boehmwalder@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

Hello,

a new version of LINSTOR GUI has just been released: v1.9.8

https://github.com/LINBIT/linstor-gui/releases/tag/v1.9.8

Here is the relevant excerpt from the changelog:

-----------------------------------
# 1.9.8 - 2025-07-15=0D=0A=
=0D=0A=
### Added=0D=0A=
=0D=0A=
- Backup Count column to remote list=0D=0A=
- Unit tests for key components (SizeInput, PropertyForm, utils)=0D=0A=
- Snapshot restore to new resource functionality=0D=0A=
- Request optimization on resource overview page=0D=0A=
=0D=0A=
### Fixed=0D=0A=
=0D=0A=
- Improve bulk delete UX and layout consistency=0D=0A=
- Property form shows previous value on RG page=0D=0A=
- Property editor incorrect item display after canceled deletion=0D=0A=
- Correct error message for password reset failure=0D=0A=
- Incorrect placement of user logo and add warning for oversized logos=0D=
=0A=
- Display backup count only for s3_remotes=0D=0A=
- Chart container style on node detail page=0D=0A=
- Add check for resource selection when creating backup=0D=0A=
=0D=0A=
### Changed=0D=0A=
=0D=0A=
- Show properties and auto select filters on resource group list page=0D=0A=
- Improve StoragePool chart display logic and responsiveness=0D=0A=
=0D=0A=
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
