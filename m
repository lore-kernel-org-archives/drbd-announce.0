Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4A349420202
	for <drbd-announce@lists.linbit.com>;
	Mon, 21 Jun 2021 16:05:02 +0200 (CEST)
Received: by mail-wr1-f44.google.com with SMTP id b3so9563024wrm.6
	for <drbd-announce@lists.linbit.com>;
	Mon, 21 Jun 2021 07:05:02 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Mon, 21 Jun 2021 16:04:51 +0200
Message-ID: <CAKnz9x+CdXr825-J+Z-eEg4v8H+G3GFx7Zc5tyvNGYg6Ldht9A@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator 1.5.1 release
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

Dear LINSTOR on Kubernetes users,

We just released a small update for our Operator and Helm Chart.

The only change is to the default images included in the Chart.
* LINSTOR Controller 1.13.0
* LINSTOR Satellite 1.13.0
* LINSTOR CSI driver 0.13.1
* drbd-reactor 0.4.0

Upgrades can be done via the usual "helm upgrade" path. [1]

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
