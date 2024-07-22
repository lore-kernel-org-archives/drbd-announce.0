Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 395374202FB
	for <drbd-announce@lists.linbit.com>;
	Mon, 22 Jul 2024 08:57:51 +0200 (CEST)
Received: by mail-ot1-f41.google.com with SMTP id
	46e09a7af769-70445bb3811so1771599a34.1
	for <drbd-announce@lists.linbit.com>;
	Sun, 21 Jul 2024 23:57:50 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Mon, 22 Jul 2024 08:57:39 +0200
Message-ID: <CAKnz9x+02MiSXFCOr_oZtTBVofkWGu=MTp_m5suUHqosS9PXVg@mail.gmail.com>
Subject: LINSTOR Operator v2.5.2
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

We've recently released version 2.5.2 of our Kubernetes Operator.

This contains updated LINSTOR, CSI driver and DRBD versions.

The LINSTOR CSI driver fixes some issues with the new caching
strategy, as well as an issue when using both a custom
"allowRemoteVolumeAccess" policy in combination with "diskless" worker
nodes.

DRBD 9.2.10 contains a fix for a potential deadlock that was triggered
by the way the CSI driver handled removing of volumes.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.5.2.yaml

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

Operator v2.5.2 Changelog
-------------------------
### Added

- Option to specify custom CA certificate resources for TLS configuration.
- Ensure all Certificate resources have `dnsNames` set.

### Changed

- Updated images:
  * LINSTOR 1.28.0
  * LINSTOR CSI 1.6.3
  * DRBD 9.2.10
  * DRBD Reactor 1.4.1
  * kTLS-utils 0.11
  * Latest CSI sidecars

### Fixed

- The operator will no longer restart reconciliation on every change
to `ServiceAccount` resources.
