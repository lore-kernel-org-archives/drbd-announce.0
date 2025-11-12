Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6F2A516225C
	for <drbd-announce@lists.linbit.com>;
	Wed, 12 Nov 2025 16:59:52 +0100 (CET)
Received: by mail-wm1-f49.google.com with SMTP id
	5b1f17b1804b1-47778704516so5358685e9.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 12 Nov 2025 07:59:52 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Wed, 12 Nov 2025 16:59:40 +0100
Message-ID: <CAKnz9xJVcnGkuRxhen8WguASbR=6XBrLGqHE+vbd0mgT=JeYng@mail.gmail.com>
Subject: LINSTOR Operator 2.10.1
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

We've just released a small bug fix for our Kubernetes Operator.

The three issues fixed are:
* A bug preventing the operator from making progress when running in a
cluster with Cluster API labels, but without the Cluster API CRDs
deployed
* A bug that caused excessive load on the Operator by repeatedly
updating the status conditions.
* A bug preventing the snapshot creation on clusters without
VolumeGroupSnapshot resources deployed.

We recommend all users of release 2.10.0 to update to this latest release.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.10.1.yaml

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
