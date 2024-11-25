Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 992E242006B
	for <drbd-announce@lists.linbit.com>;
	Mon, 25 Nov 2024 13:38:34 +0100 (CET)
Received: by mail-wm1-f43.google.com with SMTP id
	5b1f17b1804b1-43169902057so38688965e9.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 25 Nov 2024 04:38:34 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Mon, 25 Nov 2024 13:38:22 +0100
Message-ID: <CAKnz9xKRRPLQn3Hpi-azhBeNTpbJp44aEES3eDZ0gaxgbbFOvw@mail.gmail.com>
Subject: LINSTOR Operator v2.7.1
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

We've recently released version 2.7.1 of our Kubernetes Operator.

This patch release bumps the default versions for DRBD and DRBD
Reactor. There are no other changes compared to the 2.7.0 release.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.7.1.yaml

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

Operator v2.7.1 Changelog
-------------------------
### Changed

- Updated images:
  * DRBD 9.2.12
  * DRBD Reactor 1.6.0
