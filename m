Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 9DDCF16064F
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Sep 2025 15:36:36 +0200 (CEST)
Received: by mail-wm1-f46.google.com with SMTP id
	5b1f17b1804b1-46dfd711172so8257575e9.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Sep 2025 06:36:36 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Thu, 25 Sep 2025 15:36:24 +0200
Message-ID: <CAKnz9xLkwHVtmiFn84uHfDCdaip9rgaKT6GQ+ZbiGMsGiYB5Uw@mail.gmail.com>
Subject: LINSTOR Operator 2.9.1
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

We've recently released version v2.9.0 of our Kubernetes Operator.

This release mainly fixes features we noticed with the new scheduling
logic for Satellites. Namely, we now properly deal with ":NoSchedule"
taints like a DaemonSet.

There are also fixes in the different components, such as LINSTOR CSI
now properly validating the minimum volumes sizes and DRBD properly
marking resources as resynced in certain cases.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.9.1.yaml

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

Operator v2.9.1 Changelog
--------------------------

### Changed

- Do not remove existing satellites for `*NoSchedule` taints.
- Updated images:
    * LINSTOR 1.32.1
    * LINSTOR CSI 1.9.0
    * DRBD 9.2.15
    * DRBD Reactor 1.9.0
    * kTLS-utils 1.2.1
    * Latest CSI sidecars

### Fixed

- Fix a crash in the validation webhook when trying to change the type
of storage pool.
