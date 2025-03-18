Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
	[209.85.218.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 07C1216097B
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Mar 2025 14:39:33 +0100 (CET)
Received: by mail-ej1-f43.google.com with SMTP id
	a640c23a62f3a-aaf0f1adef8so519219066b.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Mar 2025 06:39:33 -0700 (PDT)
Date: Tue, 18 Mar 2025 14:39:28 +0100
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: LINSTOR Gateway v1.8.0
Message-ID: <20250318133928.xzxmq%christoph.boehmwalder@linbit.com>
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

a new version of LINSTOR Gateway has just been released: v1.8.0

https://github.com/LINBIT/linstor-gateway/releases/tag/v1.8.0

Here is the relevant excerpt from the changelog:

-----------------------------------
## [1.8.0] - 2025-03-18

### Changes

* Add a health check for the `fuser` tool (20f28d80)
* Disallow uppercase characters when creating iSCSI IQN (9754bf6d)

### Fixes

* Fix a typo in a REST route (ae74e771)
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
