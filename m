Return-Path: <philipp.reisner@linbit.com>
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id BCCBA42053E
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Dec 2020 15:12:12 +0100 (CET)
Received: by mail-io1-f50.google.com with SMTP id y5so20586045iow.5
	for <drbd-announce@lists.linbit.com>;
	Tue, 15 Dec 2020 06:12:12 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 15 Dec 2020 15:12:00 +0100
Message-ID: <CADGDV=X3FnBToeAJ2BiFkiVBOqB3cs_RvpeUpk4+3Q4pUBCy6Q@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.26-rc4
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

What a week. So many changes came in. I will write some more text for the final
9.0.26. We hope to have it ready in a week from now.

This is a release candidate, please help testing it.

9.0.26-0rc4 (api:genl2/proto:86-118/transport:14)
--------
 * fix a source of possible data corruption; related to a resync and
   a primary node that is connected to the sync-source node only
 * restore protocol compatibility with 9.0.25 and earlier
 * fix for sporadic "Clearing bitmap UUID for node" log entries;
   a potential source of problems later on leading to false split-brain
   or unrelated data messages.
 * retry connect properly in case of bitmap-uuid changes during the handshake
 * complete size 0 reads immediately; some workloads (KVM and
   iscsi targets) in combination with a ZFS zvol as the backend can lead to
   a kernel OOPS in ZFS; this is a workaround in DRBD for that
 * improve error reporting for failures during attach
 * reduce lock contention on the secondary for many resources; can improve
   performance significantly
 * Compatibility with Linux 5.10

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.26-0rc4.tar.gz
https://github.com/LINBIT/drbd/commit/b6537aa8b890890a1e22aee26f65bc1c3e097b97
