Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
	[209.85.222.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 39CD6420225
	for <drbd-announce@lists.linbit.com>;
	Thu, 31 Aug 2023 16:34:40 +0200 (CEST)
Received: by mail-ua1-f51.google.com with SMTP id
	a1e0cc1a2514c-7a2785e34b6so395609241.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 31 Aug 2023 07:34:40 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Thu, 31 Aug 2023 16:34:28 +0200
Message-ID: <CAKnz9xKzNF-VLp4hwwKBwr3OoXsiLvpM0Dfeg7eM4VESe_b9jw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator v2.2.0 and v1.10.7
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

We've recently released updates for our Kubernetes Operator.

First, there is version v2.2.0 for users of our next-generation
Operator. Along with the common image updates, we've ditched the
dependency on cert-manager for the initial deployment, making LINBIT
SDS easier to install than ever.

We have also improved the way images are selected for all deployed
components, making it easier to source images from alternative
registries. This can be useful in air-gapped clusters.

For users of Operator v1, there is now version v1.10.7. This also
comes with the usual image updates, as well as inclusion of the HA
Controller as optional dependency.

A reminder for users of Operator v1: We will maintain the existing
Operator v1 with bug fixes and new software versions until the end of
2023. With recent improvements to LINSTOR, we are now ready for having
an assisted upgrade path to Operator v2. Watch out for further
announcements!

To get specific instructions to apply the update, check our users guide: [1]

Source code is, as always, available upstream. [2]

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator

Operator v2.2.0 Changelog
-------------------------

### Added

- A new `LinstorNodeConnection` resource, used to configure the
LINSTOR Node Connection feature in a Kubernetes way.
- Allow image configuration to be customized by adding additional
items to the config map. Items using a "greater" key
  take precedence when referencing the same images.
- Add image configuration for CSI sidecars.
- Check kernel module parameters for DRBD on load.
- Automatically set SELinux labels when loading kernel modules.

### Changed

- Upgrade to operator-sdk 1.29
- Upgrade to kubebuilder v4 layout
- Updated images:
  * LINSTOR 1.24.2
  * LINSTOR CSI 1.2.3
  * DRBD 9.2.5

### Removed

- Disable operator metrics by default. This removes a dependency on an
external container.
- Dependency on cert-manager for initial deployment.

### Fixed

- A crash caused by insufficient permissions on the LINSTOR Controller.
- Satellite will now restart if the Pods terminate for unexpected reasons.


Operator v1.10.7 Changelog
--------------------------

### Changed

- Package ha-controller chart from upstream.
- Default images:
  * LINSTOR 1.24.2
  * LINSTOR CSI 1.2.3
  * DRBD 9.1.16
