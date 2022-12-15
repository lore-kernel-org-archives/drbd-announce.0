Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
	[209.85.216.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 210FC422145
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Dec 2022 16:57:55 +0100 (CET)
Received: by mail-pj1-f43.google.com with SMTP id js9so10935223pjb.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Dec 2022 07:57:55 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Thu, 15 Dec 2022 16:57:43 +0100
Message-ID: <CAKnz9xLzDKnkJ9pEoH-oHY-41QjZOMftrefxvrj51Q4UZop2CQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator v1.10.1
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

We've recently released version 1.10.1 of our Operator.

This release is mostly about updating some components, so I will
include notable changes from these components here:

* LINSTOR 1.20.2 fixes an issue where snapshots shipped to S3 would
not properly restore on the original cluster. The resources would be
left in an "Inconsistent" state forever. This is now fixed.
* LINSTOR CSI 0.22.0 fixes an issue where snapshots downloaded from S3
would not actually choose the correct snapshot to download. This meant
that users could potentially restore the wrong resource. This is now
fixed.

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
