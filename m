Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 640594207B8
	for <drbd-announce@lists.linbit.com>;
	Wed, 27 Jul 2022 15:52:22 +0200 (CEST)
Received: by mail-qt1-f171.google.com with SMTP id x11so12604105qts.13
	for <drbd-announce@lists.linbit.com>;
	Wed, 27 Jul 2022 06:52:22 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Wed, 27 Jul 2022 15:52:10 +0200
Message-ID: <CAKnz9x+rokd30t7h=uJ0fhzstt=Z9oY2uie==nU6Kjd-AEzisQ@mail.gmail.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator 1.9.1
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

We just released LINSTOR Operator 1.9.1.

Right before we wanted to announce 1.9.0 today, we noticed an issue,
so here is the announcement for 1.9.1 instead.

This is for the most part a maintenance release, updating component
versions. In particular, the latest LINSTOR 1.19.1.

One significant change with this release is the deprecation of the
included HA Controller component. We have replaced it with a
completely new version, available as a separate chart from our Helm
repository. This new LINSTOR HA Controller does not need any special
annotation on the Pods to work, and can be deployed by running:

  helm repo update
  helm install linstor-ha-controller linstor/linstor-ha-controller

Another new component is the LINSTOR Affinity Controller. It ensures
that affinity on PersistentVolume is always in sync with LINSTOR. This
is important if you want to use strict affinity for improved data
locality, but have to change nodes from time to time. This is also
available as a separate chart:

  helm repo update
  helm install linstor-affinity-controller linstor/linstor-affinity-controller

The new chart is available from https://charts.linstor.io. New images
are available from drbd.io. The usual upgrade procedure applies:

$ helm repo update
$ helm upgrade linstor-op linstor/linstor -f orig.yaml

An updated User's Guide with detailed instructions will be available
shortly. For more information, please take a look at the upgrade
guide. [1]

Source code is, as always, available upstream. [2]

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator

Full Changes
------------

### Added

- Support for custom labels and annotations with added options to `values.yaml`.

### Changed
- Satellite operator now reports basic satellite status even if
controller is not reachable
- Query single satellite devices to receive errors when the satellite
is offline instead of assuming
  devices are already configured.
- Disabled the legacy HA Controller deployment by default. It has been
replaced a separate chart linstor-ha-controller
- Default images:
  * LINSTOR 1.19.1
  * LINSTOR CSI 0.20.0
  * DRBD 9.1.8
  * DRBD Reactor 0.8.0
  * external CSI images to latest versions

### Fixed
- `last-applied-configuration` annotation was never updated, so
updating of some fields was not performed correctly.
- Patch logic forgot to include `last-applied-configuration`
annotation in some cases.
