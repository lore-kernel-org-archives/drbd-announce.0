Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id AAABF16091D
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Feb 2025 10:26:03 +0100 (CET)
Received: by mail-wr1-f47.google.com with SMTP id
	ffacd0b85a97d-38f2f783e4dso1972700f8f.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Feb 2025 01:26:03 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Mon, 17 Feb 2025 10:25:51 +0100
Message-ID: <CAKnz9xLGkcOi3VBmdO9+qJ0YvUA2=f3+d2LjXP0kr7ChtM-buA@mail.gmail.com>
Subject: LINSTOR Operator v2.8.0
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

We've recently released version 2.8.0 of our Kubernetes Operator.

This release improves support for reusing existing LINSTOR clusters to
provide storage for Kubernetes in a few different ways.

First, you can now specify multiple controller URLs when setting up
the connection. This is commonly used when setting up a highly
available LINSTOR Controller with DRBD Reactor: specify the possible
IP addresses where the Controller is running, and the Operator and
components will automatically connect to the right node.

Secondly, the Operator will now automatically try to determine the
LINSTOR version from the external controller, and deploy the matching
Satellite version by default.

With the usual update of image versions, we also now support the
x-replicas-on-different setting on StorageClasses[1]. For example, to
deploy 2 replicas per zone, you can now set:

parameters:
  linstor.csi.linbit.com/xReplicasOnDifferent: |
    topology.kubernetes.io/zone: 2

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.8.0.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait

To get specific instructions to apply the update, check our users guide[2].

If you need to upgrade from Operator v1, check out our upgrade guide[3].

Source code is, as always, available upstream[4].

Best regards,
Moritz

[1]: https://linbit.com/blog/distributing-volume-replicas-for-high-availability-disaster-recovery-using-linstor/
[2]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[3]: https://charts.linstor.io/migration/
[4]: https://github.com/piraeusdatastore/piraeus-operator

Operator v2.8.0 Changelog
-------------------------
### Added

- Automatically set the LINSTOR Satellite image version when using an
external LINSTOR Controller.

### Changed

- Disable debug logging by default for the Operator.
- Allow specifying multiple controller URLs for external LINSTOR clusters.
- Updated images:
    * LINSTOR 1.30.4
    * LINSTOR CSI 1.7.0
    * DRBD Reactor 1.8.0
    * LINSTOR HA Controller 1.3.0
    * Latest CSI sidecars
