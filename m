Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
	[209.85.208.174])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 25B3F4202D7
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 Nov 2024 11:49:31 +0100 (CET)
Received: by mail-lj1-f174.google.com with SMTP id
	38308e7fff4ca-2fb4af0b6beso87131871fa.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 Nov 2024 02:49:31 -0800 (PST)
Date: Tue, 26 Nov 2024 11:49:29 +0100
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: LINSTOR Gateway v1.7.0
Message-ID: <20241126104929.yJEh4%christoph.boehmwalder@linbit.com>
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

a new version of LINSTOR Gateway has just been released: v1.7.0

https://github.com/LINBIT/linstor-gateway/releases/tag/v1.7.0

Here is the relevant excerpt from the changelog:

-----------------------------------
## [1.7.0] - 2024-11-26

### Changes

* Change the `scsi_sn` and `product_id` calculations so that they are both =
unique per volume. (0d144af9)
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
