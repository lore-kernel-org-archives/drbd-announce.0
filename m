Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B714716275C
	for <drbd-announce@lists.linbit.com>;
	Tue,  9 Dec 2025 17:04:48 +0100 (CET)
Received: by mail-wm1-f53.google.com with SMTP id
	5b1f17b1804b1-4775895d69cso29516345e9.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 09 Dec 2025 08:04:48 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Tue, 9 Dec 2025 17:04:36 +0100
Message-ID: <CAKnz9xK9_om3z6Xt+5Hy2GAqP2VhZ_nV5iL_AkEKeJp6hLep0Q@mail.gmail.com>
Subject: LINSTOR Operator 2.10.3
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

We updated the LINSTOR CSI driver to 1.10.4 to fix an issue affecting
"S3" snapshots that could not be restored when created with LINSTOR
CSI version 1.10.0 to 1.10.3.

We also update the RBAC resources for the CSI sidecar containers to
fix an issue with the resizer.

Lastly, HA Controller and DRBD Shutdown Guard have been updated to fix
some unexpected warnings that have been generated in normal
operations.

We recommend all users of release 2.10.x to update to this latest release.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.10.3.yaml

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

----
### Fixed

- Update RBAC for `csi-resizer` sidecar.

### Changed
- Updated images:
    * LINSTOR CSI 1.10.4
    * HA Controller 1.3.2
    * DRBD Shutdown Guard 1.1.2
