Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
	[209.85.221.170])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 498984203B3
	for <drbd-announce@lists.linbit.com>;
	Tue,  1 Aug 2023 16:54:50 +0200 (CEST)
Received: by mail-vk1-f170.google.com with SMTP id
	71dfb90a1353d-486556dea4dso2361514e0c.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 01 Aug 2023 07:54:50 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Tue, 1 Aug 2023 16:54:38 +0200
Message-ID: <CAKnz9xKjqZbmdEOvv+bWaojjhanLp-fDiu6tbxq27avfS4xmrA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator v1.10.6
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

We've recently released an update for our Kubernetes Operator v1.

Release v1.10.6 brings the usual round of image updates, as well as
two small improvements:

First, in the (unannounced) v1.10.5, we added the option to set the
DNS policy for Satellite containers. This is useful if you use S3
Backups on remotes that are not publicly announced in DNS.

The second feature concerns monitoring: the CSI Driver uses a number
of sidecar containers, which are now also configured to export
prometheus metrics. This is enabled by default if a running prometheus
operator instance is detected.

A reminder for users of Operator v1: We will maintain the existing
Operator v1 with bug fixes and new software versions until the end of
2023. We will provide a dedicated upgrade path to Operator v2. We
recommend all v1 installations to continue to use v1. For all new
clusters we recommend using v2.

To get specific instructions to apply the update, check our users guide: [1]

Source code is, as always, available upstream. [2]

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator

Operator v1.10.6 Changelog
--------------------------

### Added

- Configure Monitoring for CSI Components if monitoring is enabled.

### Fixed

- A crash caused by insufficient permissions on the LINSTOR Controller.
- Invalid use of "HTTP" protocol specification for prometheus
monitoring, use "http" instead.

### Updated

- Default images:
  * LINSTOR CSI 1.2.2

Operator v1.10.5 Changelog
--------------------------

### Added

- Option to set the dns policy used for satellites.

### Changed

- Default images:
  * LINSTOR CSI 1.2.0
  * DRBD 9.1.15
  * external CSI images upgraded to latest
