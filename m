Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 074E9162ED8
	for <drbd-announce@lists.linbit.com>;
	Thu, 27 Nov 2025 15:04:59 +0100 (CET)
Received: by mail-wm1-f47.google.com with SMTP id
	5b1f17b1804b1-477a2ab455fso8844415e9.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 27 Nov 2025 06:04:59 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Thu, 27 Nov 2025 15:04:48 +0100
Message-ID: <CAKnz9xJ8nF6bQSbDuUOg5DXhe1AkV-Kp6-LZ-nV_XMqzEYX-Pg@mail.gmail.com>
Subject: LINSTOR Operator 2.10.2
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
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

We've just released another small bug fix for our Kubernetes Operator.

We have updated DRBD to 9.2.16, and also updated LINSTOR CSI to 1.10.3
to fix some small issues with the new "fsck" checks on mounts.

In addition, we have added some configurable timeouts when using
graceful evacuation, and fixed a bug that prevented the SELinux
integration of LINSTOR CSI from working.

We recommend all users of release 2.10.x to update to this latest release.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.10.2.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait

To get specific instructions to apply the update, check our users guide[1].

If you need to upgrade from Operator v1, check out our upgrade guide[2].

Source code is, as always, available upstream[3].

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://charts.linstor.io/migration/
[3]: https://github.com/piraeusdatastore/piraeus-operator
