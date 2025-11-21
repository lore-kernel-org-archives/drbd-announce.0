Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
	[209.85.218.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 686A21627CC
	for <drbd-announce@lists.linbit.com>;
	Fri, 21 Nov 2025 14:08:32 +0100 (CET)
Received: by mail-ej1-f50.google.com with SMTP id
	a640c23a62f3a-b73875aa527so317725566b.3
	for <drbd-announce@lists.linbit.com>;
	Fri, 21 Nov 2025 05:08:32 -0800 (PST)
Date: Fri, 21 Nov 2025 14:08:30 +0100
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: LINSTOR GUI v2.0.0
Message-ID: <20251121130830.zOaXR%christoph.boehmwalder@linbit.com>
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

a new version of LINSTOR GUI has just been released: v2.0.0

https://github.com/LINBIT/linstor-gui/releases/tag/v2.0.0

Here is the relevant excerpt from the changelog:

-----------------------------------
# 2.0.0 - 2025-11-20=0D=0A=
=0D=0A=
### Added=0D=0A=
=0D=0A=
- New modern UI design=0D=0A=
- Prometheus / Grafana integration with embedded charts and dashboards=0D=
=0A=
=0D=0A=
### Fixed=0D=0A=
=0D=0A=
- User store migration logic from "users" to "__gui__users" namespace=0D=0A=
- `vsanAvailable` flag reset when switching modes=0D=0A=
- Storage pool name conflict prevention=0D=0A=
- Various UI styling issues=0D=0A=
=0D=0A=
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
