Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A3D574205C7
	for <drbd-announce@lists.linbit.com>;
	Thu, 22 Feb 2024 13:37:19 +0100 (CET)
Received: by mail-ot1-f48.google.com with SMTP id
	46e09a7af769-6e47a0fad63so58989a34.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 22 Feb 2024 04:37:19 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Thu, 22 Feb 2024 13:37:07 +0100
Message-ID: <CAKnz9xJFfCvgVfbWvW7HhgF9hbDA2Bbbh0Y7=Y+iDKxVsr-zMw@mail.gmail.com>
Subject: LINSTOR Operator v2.4.0
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

We've recently released version 2.4.0 for our Kubernetes Operator.

The two major improvements in this new release are additional
validation for LINSTOR CSI StorageClass resources and an update to the
way we deploy LINSTOR Satellites.

The LINSTOR Operator deployment now also creates a ValidatingWebhook
targeting StorageClasses. In particular, it will look for any
StorageClasses using the "linstor.csi.linbit.com" provisioner and
validate the parameters. This is particularly useful when using late
volume binding, as invalid parameters are not directly visible to
users there. With this change, invalid parameters will be rejected
immediately when creating the StorageClass.

The LINSTOR Operator will now also use DaemonSets to manage LINSTOR
Satellites. This improves integration with Kubernetes maintenance
commands like "kubectl drain". It also means that all satellite names
now start with "linstor-satellite". This change should be completely
transparent, any changes made to the satellite Pods in previous
versions are converted to the equivalent changes on the DaemonSet.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.4.0.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait

To get specific instructions to apply the update, check our users guide[1].

If you need to upgrade from Operator v1, check out our recently
released upgrade guide[2].

Source code is, as always, available upstream[3].

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://charts.linstor.io/migration/
[3]: https://github.com/piraeusdatastore/piraeus-operator

Operator v2.4.0 Changelog
-------------------------
### Added

- Validating Webhook for LINBIT SDS StorageClasses.

### Breaking

- Use DaemonSet to manage Satellite resources instead of bare Pods.
This enables better integration with
  common administrative tasks such as node draining. This change
should be transparent for users, any patches
  applied on the satellite Pods are internally converted to work on
the new DaemonSet instead.

### Changed

- Change default monitoring address for DRBD Reactor to support
systems with IPv6 completely disabled.
- Updated images:
  * LINSTOR 1.26.1
  * LINSTOR CSI 1.4.0
  * DRBD 9.2.7
  * High Availability Controller 1.2.0
  * Latest CSI sidecars
