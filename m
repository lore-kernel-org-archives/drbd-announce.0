Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E1349160657
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Apr 2025 09:52:36 +0200 (CEST)
Received: by mail-wr1-f54.google.com with SMTP id
	ffacd0b85a97d-39c0dfad22aso201333f8f.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Apr 2025 00:52:36 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Thu, 10 Apr 2025 09:52:24 +0200
Message-ID: <CAKnz9xKdLE5Da_3Lc76h-n-v3G0=H64sRn=C-3rnwehtq3cmMw@mail.gmail.com>
Subject: LINSTOR Operator v2.8.1
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

We've recently released version v2.8.1 of our Kubernetes Operator.

This release fixes a memory leak caused by the LINSTOR API cache: The
Operator Pod would continuously use more memory, while not making use
of the cache: this is now fixed.

We've also updated to use LINSTOR 1.31.0, improving memory usage and
reconnect behaviour, as well as generally cleaned up property handling
around "automatically" set quorum behaviour.

LINSTOR CSI 1.7.1 fixes issues when trying to restore snapshots that
use a different file system than what is currently requested by the
StorageClass: such restored volumes will now be mounted without
issues.

Finally, DRBD 9.2.13 fixes a number of bugs. We also provide an image
for SLES15, making LINBIT SDS usable out of the box for SLES15
clusters.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.8.1.yaml

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

Operator v2.8.1 Changelog
-------------------------
### Added

- Option to set the maximum time between reconciliations.

### Changed

- Updated default properties applied on controller level to match
LINSTOR release 1.31.0
- Updated images:
    * LINSTOR 1.31.0
    * LINSTOR CSI 1.7.1
    * DRBD 9.2.13, including images for SLES 15
    * Latest CSI sidecars

### Fixed

- Fix Operator caches not being indexed by a comparable key, leading
to cache misses and a memory leak.
- Fix missing `ports:` section on LINSTOR Satellites, need for certain
network mesh solutions.
