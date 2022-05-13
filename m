Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E529E4202A8
	for <drbd-announce@lists.linbit.com>;
	Fri, 13 May 2022 14:28:19 +0200 (CEST)
Received: by mail-wm1-f51.google.com with SMTP id
	1-20020a05600c248100b00393fbf11a05so6839949wms.3
	for <drbd-announce@lists.linbit.com>;
	Fri, 13 May 2022 05:28:19 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Fri, 13 May 2022 14:27:08 +0200
Message-ID: <CAKnz9x+6tdmB2iYYYpq35YmNnPurN_4vx_tB1RNVWgx450_P6Q@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator release 1.8.1
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

We just released LINSTOR Operator 1.8.1.

As expected for a patch release, no dramatic changes here, instead
just bringing all components to their latest release:

- LINSTOR 1.18.1: includes some stability improvements and support for
DRBD 9.1.7 features.
- DRBD 9.1.7: improves the way suspend of workloads works when losing quorum.
- LINSTOR CSI 0.19.0: fixes issues when provisioning big file system
volumes and when restoring a backup in a zoned cluster.

For LINSTOR CSI, there is one important note: If you provisioned an
empty volume using <0.19.0, but never used it until upgrading to
0.19.0 the volume will not attach. The solution is to delete the claim
and create it again. As the volumes were empty and never used, this
likely doesn't actually impact anyone.

For the operator itself: if you are using the "k8s" backend, you no
longer need to confirm creating a backup of the database before
upgrading: this is now directly handled by the operator, and the charm
hook was removed.

The new chart is available from https://charts.linstor.io. New images
are available from drbd.io. The usual upgrade procedure applies:

$ helm repo update
$ helm upgrade linstor-op linstor/linstor -f orig.yaml

For more information, please take a look at the upgrade guide. [1]

Source code is, as always, available upstream. [2]

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator

Full Changes
------------

### Changed

- Default images:
  * LINSTOR 1.18.1
  * LINSTOR CSI 0.19.0
  * DRBD 9.1.7
  * DRBD Reactor 0.6.1

### Added

- Upgrades involving k8s databases no longer require manually
confirming a backup exists using
  `--set IHaveBackedUpAllMyLinstorResources=true`.
