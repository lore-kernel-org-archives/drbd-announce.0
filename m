Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
	[209.85.218.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 02905160650
	for <drbd-announce@lists.linbit.com>;
	Wed, 14 May 2025 14:12:15 +0200 (CEST)
Received: by mail-ej1-f54.google.com with SMTP id
	a640c23a62f3a-ad1a87d93f7so1022287966b.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 14 May 2025 05:12:15 -0700 (PDT)
Date: Wed, 14 May 2025 14:12:13 +0200
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: LINSTOR GUI v1.9.6
Message-ID: <20250514121213.0XBf-%christoph.boehmwalder@linbit.com>
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

a new version of LINSTOR GUI has just been released: v1.9.6

https://github.com/LINBIT/linstor-gui/releases/tag/v1.9.6

Here is the relevant excerpt from the changelog:

-----------------------------------
# 1.9.6 - 2025-05-14

### Added

- Enhanced snapshot management:
  - Added snapshot rollback functionality
  - Added snapshot restore functionality
- Unlock LINSTOR system with passphrase
- Display creation status in backup list view
- Added back-to-top functionality
- Added PassphrasePrompt component for LINSTOR encryption
- Hide popups in development environment

### Changed

- Changed "NFS Targets" text to "NFS Exports"
- Reload page after unlock to update state

### Fixed

- Fixed back-to-top text display issue
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
