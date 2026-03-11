Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 990B2160876
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Mar 2026 15:13:57 +0100 (CET)
Received: by mail-wm1-f49.google.com with SMTP id
	5b1f17b1804b1-48334ee0aeaso117382915e9.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Mar 2026 07:13:57 -0700 (PDT)
MIME-Version: 1.0
From: Moritz Tanner <moritz.wanzenboeck@linbit.com>
Date: Wed, 11 Mar 2026 15:13:44 +0100
Message-ID: <CAKnz9x+56xCHu1JgmXLuReqdFuM3dYpRD=Qu4ruvUkMZh4wJFA@mail.gmail.com>
Subject: LINSTOR Operator 2.10.5
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

We've just released another bug fix for our Kubernetes Operator.

This time, we have taken the plunge to update LINSTOR to 1.33.1, along
with updating to the latest DRBD 9.2.17. These fix a number of bugs,
so updating is recommended. In the next feature release, we will
update DRBD to 9.3.x.

On the Kubernetes front, we have updated the CSI driver to 1.10.6,
which brings some fixes for IPv6 only clusters, and better capacity
calculation for storage pools with disabled overprovisioning.

We recommend all users of release 2.10.x to update to this latest release.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.10.5.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait

To get specific instructions to apply the update, check our users guide[1].

Source code is, as always, available upstream[2].

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator
---
### Fixed

- Updated NFS server template to work with NFS Ganesha instances with
monitoring enabled.
- Ensure Satellites are always rescheduled on NoScheduled nodes as
long as the LinstorSatellite resource exists.

### Changed

- Updated images:
    * LINSTOR 1.33.1
    * LINSTOR CSI 1.10.6
    * DRBD 9.2.17
    * DRBD Reactor 1.11.0
    * Latest CSI sidecars
