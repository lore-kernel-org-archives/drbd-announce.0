Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 21111160878
	for <drbd-announce@lists.linbit.com>;
	Mon, 30 Mar 2026 15:34:19 +0200 (CEST)
Received: by mail-wm1-f52.google.com with SMTP id
	5b1f17b1804b1-48700b1ba53so40065535e9.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 30 Mar 2026 06:34:19 -0700 (PDT)
Date: Mon, 30 Mar 2026 15:34:17 +0200
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: LINSTOR GUI v2.4.0
Message-ID: <20260330133417.kPjaJ%christoph.boehmwalder@linbit.com>
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

a new version of LINSTOR GUI has just been released: v2.4.0

https://github.com/LINBIT/linstor-gui/releases/tag/v2.4.0

Here is the relevant excerpt from the changelog:

-----------------------------------
# 2.4.0 - 2026-03-30=0D=0A=
=0D=0A=
### Added=0D=0A=
=0D=0A=
- Platform info for node=0D=0A=
=0D=0A=
### Changed=0D=0A=
=0D=0A=
- Expand the sidebar by default=0D=0A=
- Updated DRBD options and property definitions=0D=0A=
- Improved Resource Group properties display=0D=0A=
=0D=0A=
### Fixed=0D=0A=
=0D=0A=
- Resource definition name validation in the create form=0D=0A=
- Click area for actions on the resource overview and related list pages=0D=
=0A=
- Keep users logged in after a successful password change=0D=0A=
- Prevent blinking on Storage Pool charts=0D=0A=
- Correct DRBD options boolean mapping from `true/false` to `no/yes`=0D=0A=
- Correct `diskless_on_remaining` value handling=0D=0A=
=0D=0A=
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
