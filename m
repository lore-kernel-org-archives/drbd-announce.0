Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D6636164D21
	for <drbd-announce@lists.linbit.com>;
	Wed,  6 May 2026 11:19:24 +0200 (CEST)
Received: by mail-wm1-f48.google.com with SMTP id
	5b1f17b1804b1-488ad135063so58246965e9.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 06 May 2026 02:19:24 -0700 (PDT)
MIME-Version: 1.0
From: Moritz Tanner <moritz.wanzenboeck@linbit.com>
Date: Wed, 6 May 2026 11:19:13 +0200
Message-ID: <CAKnz9x+yjOqXQQFP8fok8nGx-5bYErdvBRjPtdffufxO+DA+=g@mail.gmail.com>
Subject: LINSTOR Operator 2.10.6
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

There are two primary reasons for this patch release: we have updated
LINSTOR and DRBD to their latest version, and we have updated LINSTOR
CSI.

LINSTOR and DRBD have been updated to address an issue affecting
thinly allocated volumes that might cause incomplete resyncs when new
nodes are added at a later time.

LINSTOR CSI on the other hand contains some fixes related to RWX
volume validation, preventing users from creating volumes that cannot
be used. It also contains a fix for an issue that could cause the CSI
attacher to time out by repeatedly trying to reattach already attached
volumes.

We recommend all users of release 2.10.x to update to this latest release.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.10.6.yaml

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
### Added

- Image configuration for Ubuntu 26.04 (Resolute Raccoon)

### Fixed

- Fixed NFS Server DaemonSet capabilities.

### Changed

- Updated images:
    * LINSTOR 1.33.2
    * LINSTOR CSI 1.11.0
    * DRBD 9.2.18
    * LINSTOR Affinity Controller 1.4.0
