Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
	[209.85.218.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 43BF842006B
	for <drbd-announce@lists.linbit.com>;
	Tue, 22 Oct 2024 14:46:09 +0200 (CEST)
Received: by mail-ej1-f53.google.com with SMTP id
	a640c23a62f3a-a7aa086b077so664653866b.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 22 Oct 2024 05:46:09 -0700 (PDT)
Date: Tue, 22 Oct 2024 14:46:07 +0200
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: LINSTOR GUI v1.8.4
Message-ID: <20241022124607.MIigV%christoph.boehmwalder@linbit.com>
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

a new version of LINSTOR GUI has just been released: v1.8.4

https://github.com/LINBIT/linstor-gui/releases/tag/v1.8.4

Here is the relevant excerpt from the changelog:

-----------------------------------
# 1.8.4 - 2024-10-22

### Added

- Support for creating storage pools with the ZFS device provider
- Loading status for node adding

### Fixed

- Debounced request for gateway host check
- Node edit page blank error
- Capacity on Storage Pools displaying NaN in some cases
- Refetching list when a Storage Pool is created
- Support status check for open-sourced LINSTOR GUI
- Installation instructions for LINSTOR GUI on a LINSTOR controller node

### Changed

- Reduced bundle size
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
