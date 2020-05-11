Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E37994203D6
	for <drbd-announce@lists.linbit.com>;
	Mon, 11 May 2020 15:32:20 +0200 (CEST)
Received: by mail-io1-f52.google.com with SMTP id w11so9617287iov.8
	for <drbd-announce@lists.linbit.com>;
	Mon, 11 May 2020 06:32:20 -0700 (PDT)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 11 May 2020 15:31:08 +0200
Message-ID: <CADGDV=WaEdZBaMW9gm-nW7xpFX0cz-ffqLqkGtTrezMTO-1RtA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] Kubernetes - LINSTOR volume locality (STORK plugin)
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

Hi,

Exciting news! Christoph finished the initial work on a STROK plugin.
That enables to influence the placement of PODs in K8s in a way that
they usually run on exactly the node where LINSTOR has a local replica
of the PersistentVolume the POD needs.

Here is the documentation
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-stork

Please get the containers from here
https://hub.docker.com/repository/docker/linbit/stork
https://hub.docker.com/repository/docker/linbit/stork-cmdexecutor

Here is the code
https://github.com/LINBIT/stork/tree/linstor-driver

best regards,
 Phil
