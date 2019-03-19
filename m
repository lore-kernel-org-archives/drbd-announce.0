Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 6543A1011BF5
	for <drbd-announce@lists.linbit.com>;
	Tue, 19 Mar 2019 23:57:52 +0100 (CET)
Received: by mail-wr1-f50.google.com with SMTP id p10so678494wrq.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 19 Mar 2019 15:57:52 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 19 Mar 2019 23:49:32 +0100
Message-ID: <5671666.Hiv4TBkWxu@nuc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.17rc1
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

drbd-9.0.17 should be ready in a week from now. Please help
testing the pre-release

drbd
9.0.17-0rc1 (api:genl2/proto:86-114/transport:14)
--------
 * Fix UUID handling of a diskless primary that has not peer with
   usable data may not touch the current UUID
 * Fix resync-after dependencies; cross-resource dependencies
   and missing resources
 * Fix resync when the sync source suddenly connects to a more recent
   data set via an other connection and becomes sync target on that
   other connection; pause first resync; fix wrong display of negative
   resync progress percentage in this case
 * Fix volume numbers between 32767 and 65534
 * Fix the data integrity implementation; it was broken since drbd-9.0
   and reported only false positives
 * Fix for a corner-case when a promote action happens concurrently with
   a reconciliation resync
 * Improve resync code to be able to fully utilize fast storage
   backend devices and fast networks with resync traffic; as a side
   effect the settling time of the resync controller got shorter in
   for most cases
 * Show in the user-visible message who the opener is if if demote/down
   fails doe to someone holding a drbd device open
 * docker file for a "load drbd module container" and allow to disable
   user-mode-helpers, which is necessary for this container

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.17-0rc1.tar.gz
https://github.com/LINBIT/drbd-9.0/tree/drbd-9.0.17-0rc1

-phil


