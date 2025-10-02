Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5D00A16094F
	for <drbd-announce@lists.linbit.com>;
	Thu,  2 Oct 2025 13:45:21 +0200 (CEST)
Received: by mail-ed1-f51.google.com with SMTP id
	4fb4d7f45d1cf-6364eb32535so1696732a12.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 02 Oct 2025 04:45:21 -0700 (PDT)
Date: Thu, 02 Oct 2025 13:45:19 +0200
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: LINSTOR GUI v1.9.10
Message-ID: <20251002114519.QtT0a%christoph.boehmwalder@linbit.com>
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

a new version of LINSTOR GUI has just been released: v1.9.10

https://github.com/LINBIT/linstor-gui/releases/tag/v1.9.10

Here is the relevant excerpt from the changelog:

-----------------------------------
# 1.9.10 - 2025-10-01=0D=0A=
=0D=0A=
### Added=0D=0A=
=0D=0A=
- Chunk splitting support to improve handling of large data payloads=0D=0A=
- Option to skip the enforced admin password change in authentication workf=
low (for automation / migration scenarios)=0D=0A=
- CloudStack maintenance mode support=0D=0A=
- CloudStack / NFS tags displayed on the node list page for clearer role id=
entification=0D=0A=
=0D=0A=
### Fixed=0D=0A=
=0D=0A=
- Removed the DRBD port field from the resource overview page=0D=0A=
- Pagination data now refreshes correctly when "Show default" is checked on=
 the Storage Pool related listing (previously stale results could appear)=
=0D=0A=
=0D=0A=
### Changed=0D=0A=
=0D=0A=
- Centralized KV store namespaces and admin credential constants to reduce =
duplication and ease future maintenance (internal refactor)=0D=0A=
- GUI users namespace changed from "users" to "\_\_gui_users"=0D=0A=
=0D=0A=
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
