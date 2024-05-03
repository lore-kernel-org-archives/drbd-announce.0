Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com
	[209.85.160.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C707F420471
	for <drbd-announce@lists.linbit.com>;
	Fri,  3 May 2024 12:16:09 +0200 (CEST)
Received: by mail-oa1-f47.google.com with SMTP id
	586e51a60fabf-23dd52c6176so1145575fac.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 03 May 2024 03:16:09 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Fri, 3 May 2024 12:15:57 +0200
Message-ID: <CAKnz9xJ=KoiQhuoiaVQ4sqdijNBbR9Kh9cMde+FtpJxpAesZ_w@mail.gmail.com>
Subject: LINSTOR Operator v2.5.1
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
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

We've recently released version 2.5.1 of our Kubernetes Operator.

This contains updated LINSTOR, CSI driver and DRBD versions, as well
as default priority class settings for all components.

The LINSTOR 1.27.1 release fixes issues with new ZFS versions, along
with other small bug fixes around storage pools with different
allocation granularity.

The LINSTOR CSI driver enables the creation of LINSTOR-to-LINSTOR
backups using regular VolumeSnapshot resources.

A recent release of the "thin-send-recv" tool turned out to not be
fully backward compatible, which broke LINSTORs "Backup to S3"
feature. We have temporarily rolled back to a previous version of this
tool in our container images.

The new DRBD 9.2.9 release fixes an issue that was triggered by the
CSI drivers resource deletion procedure. If encountered, it could
cause the node to crash. We have also added support for the newly
released Ubuntu 24.04.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.5.1.yaml

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

Operator v2.5.1 Changelog
-------------------------
### Added

- Default PriorityClasses for all components

### Changed

- New DRBD loader detection for:
  * Ubuntu Noble Numbat (24.04)
- Updated images:
  * LINSTOR 1.27.1
  * LINSTOR CSI 1.6.0
  * DRBD 9.2.9
