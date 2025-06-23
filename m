Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 26BF2160912
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Jun 2025 14:46:11 +0200 (CEST)
Received: by mail-wm1-f43.google.com with SMTP id
	5b1f17b1804b1-45365b1a897so19540705e9.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Jun 2025 05:46:11 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Mon, 23 Jun 2025 14:45:59 +0200
Message-ID: <CAKnz9x+1HNsZTaoeKvRDnLvE7_85xzpZYNuTUWw7=OT3Gg-CpQ@mail.gmail.com>
Subject: LINSTOR Operator v2.9.0
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

This release brings a few new features and fixes.

On the operator front, the two major changes are centred around
tolations and Satellite deletions.

First, previous versions of LINSTOR Operator would automatically try
to evacuate a node when the LinstorSatellite resource was deleted.
This caused many users issues, as often these deletions happend "by
accident" due to misconfiguration, missing node labels and so on. This
behaviour is now no longer the default, but is controlled by the
deletionPolicy.

Secondly, previous versions of the Operator basically ignored the
usual node taintsm trying to run the Satellite workloads on all nodes
not excluded by some affinity or label selector. Control plane nodes
are usually only excluded from scheduling based on their taints, which
again caused confusion in many users. With this release we take the
taints of a node into account, and won't try to schedule Satellites on
tainted nodes, unless these taints are tolerated.

On the component side, LINSTOR CSI now automatically tries to
reconcile VolumeSnapshotClass resources with LINSTOR Remotes, which
bridges a gap when restoring snapshots from a remote location. DRBD
9.2.14 fixes an issue that was most prevalent in Kubernetes setups,
where restoring volumes from a snapshot in a typical 2 diskful + 1
tiebreaker configuration could lead to corrupted filesystems on the
restored volume.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.9.0.yaml

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

Operator v2.9.0 Changelog
--------------------------
---

### Added

- Support for different deletion policies on satellites.
- Option to select taints that should be tolerated by LINBIT SDS.
- Allow pinning images in the image configuration to a specific digest.
- Support overriding image configuration directly on the Operator
Deployment using RELATED_IMAGE_* environment variables.

### Changed

- Deletion of LinstorSatellite no longer causes a node evacuation by default.
- LINBIT SDS no longer runs on control plane nodes by default.
- "Inconsistent" resources no longer cause AlertManager notifications,
as long as there is resync progress.
- Updated images:
  * LINSTOR 1.31.2
  * LINSTOR CSI 1.8.0
  * DRBD 9.2.14
  * kTLS-utils 1.1.0
  * Latest CSI sidecars
