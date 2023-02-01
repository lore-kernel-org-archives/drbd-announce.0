Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com
	[209.85.221.169])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4243A42066B
	for <drbd-announce@lists.linbit.com>;
	Wed,  1 Feb 2023 14:39:05 +0100 (CET)
Received: by mail-vk1-f169.google.com with SMTP id l20so9099822vkm.11
	for <drbd-announce@lists.linbit.com>;
	Wed, 01 Feb 2023 05:39:05 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Wed, 1 Feb 2023 14:38:53 +0100
Message-ID: <CAKnz9xLgdVm4dNPDGnhZ=FahLrRBHk01GHeBbipvQtaf=uO8SA@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator v1.10.2
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

We've recently released version 1.10.2 of our Operator.

This release is mostly about updating some components, so I will
include notable changes from these components here:

* DRBD 9.1.13 improves quorum situation around diskless nodes. It also
fixes a situation in which a disk would report no quorum because it
expects more peers then there are.
* LINSTOR 1.20.3 fixes an issue with slow satellites because of
pvdisplay blocking on existing DRBD devices.

The new chart is available from https://charts.linstor.io. New images
are available from drbd.io. The usual upgrade procedure applies:

$ helm repo update
$ helm upgrade linstor-op linstor/linstor -f orig.yaml

An updated User's Guide with detailed instructions is available. For
more information, please take a look at the upgrade guide. [1]

Source code is, as always, available upstream. [2]

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator
