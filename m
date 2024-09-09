Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C3DF04201EE
	for <drbd-announce@lists.linbit.com>;
	Mon,  9 Sep 2024 08:24:33 +0200 (CEST)
Received: by mail-ot1-f52.google.com with SMTP id
	46e09a7af769-7093ba310b0so2051012a34.2
	for <drbd-announce@lists.linbit.com>;
	Sun, 08 Sep 2024 23:24:33 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Mon, 9 Sep 2024 08:24:21 +0200
Message-ID: <CAKnz9xKV5_0Od40OFgVxjyzSZ23HhuT7EMtib82o7PMPNSsyPA@mail.gmail.com>
Subject: LINSTOR Operator v2.6.0
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

We've recently released version 2.6.0 of our Kubernetes Operator.

This release contains a new way to map Kubernetes Node labels and
annotations to LINSTOR properties: It is now possible to use a
wildcard pattern to map one or more labels to one or more properties
at once. For example, you might want to assign the
node-role.kubernetes.io/* labels to a single Aux/role property in
LINSTOR.

Other than that, the release includes updates for LINSTOR and DRBD,
matching the latest upstream release.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.6.0.yaml

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

Operator v2.6.0 Changelog
-------------------------
### Added

- Support wildcard patterns when referencing property values from node
labels and annotations.

### Changed

- Updated images:
  * LINSTOR 1.29.0
  * DRBD 9.2.11
  * Latest CSI Sidecars
