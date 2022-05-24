Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B4F32420471
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 May 2022 16:01:45 +0200 (CEST)
Received: by mail-wr1-f43.google.com with SMTP id u3so25881762wrg.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 May 2022 07:01:45 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Tue, 24 May 2022 16:01:33 +0200
Message-ID: <CAKnz9xKNaA++R5h7g_tROX8mRZ=bS8y0u9iajWggVMx=Rn5Q9w@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator 1.8.2 released
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

We just released LINSTOR Operator 1.8.2.

Again, this is just a release to update some components, notably the
latest LINSTOR 1.18.2.

- LINSTOR 1.18.2
- LINSTOR CSI 0.19.1: fixes issues around cluster with quorum disabled

The new chart is available from https://charts.linstor.io. New images
are available from drbd.io. The usual upgrade procedure applies:

$ helm repo update
$ helm upgrade linstor-op linstor/linstor -f orig.yaml

For more information, please take a look at the upgrade guide. [1]

Source code is, as always, available upstream. [2]

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator

Full Changes
------------

### Added
- Option to disable creation of monitoring resources.
- Optional sidecars and volumes for all created workloads.

### Changed

- Default images:
  * LINSTOR 1.18.2
  * LINSTOR CSI 0.19.1
  * DRBD Reactor 0.7.0
