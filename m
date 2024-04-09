Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com
	[209.85.161.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 15771420360
	for <drbd-announce@lists.linbit.com>;
	Tue,  9 Apr 2024 08:31:59 +0200 (CEST)
Received: by mail-oo1-f43.google.com with SMTP id
	006d021491bc7-5aa2a74c238so1515566eaf.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 08 Apr 2024 23:31:59 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Tue, 9 Apr 2024 08:31:48 +0200
Message-ID: <CAKnz9xJEy=jCkwWDPeN3YOcYRyoMRhzSn3faR9NM8Vf0Xh+sYw@mail.gmail.com>
Subject: LINSTOR Operator v2.5.0
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
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

Dear LINBIT SDS on Kubernetes users,

We've recently released version 2.5.0 of our Kubernetes Operator.

This contains updated LINSTOR, CSI driver and HA COntroller versions,
as well as support for ZFS storage pools configured directly with
LinstorSatelliteConfiguration resources.

The new LINSTOR version also fixes the issue affecting LINSTOR
Controllers shutting down caused by an error in the space tracking
service.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.5.0.yaml

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

Operator v2.5.0 Changelog
-------------------------
### Added

- Support for managing ZFS Storage Pools using LinstorSatelliteConfiguration.

### Changed

- Updated images:
  * LINSTOR 1.27.0
  * LINSTOR CSI 1.5.0
  * High Availability Controller 1.2.1
  * Latest CSI sidecars
