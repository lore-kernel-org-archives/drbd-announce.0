Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 971DA420380
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Feb 2020 13:16:49 +0100 (CET)
Received: by mail-wr1-f49.google.com with SMTP id w12so23660838wrt.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Feb 2020 04:16:49 -0800 (PST)
Date: Tue, 18 Feb 2020 13:15:47 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20200218121547.GO9241@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.12.0
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

Dear DRBD users,

today we release version 9.12.0 of drbd-utils.

As usual, this includes low level tools for DRBD 8.4 and 9.0 of the DRBD
kernel module.

There is no urgent need to update, but the OCF resource agent learned
some nice tricks. Since rc1 and thanks to Anton Tykhyy we also fixed
some malformed json outputs in some corner cases.

Best, rck

9.12.0
--------
 * drbd.ocf: new wrc_timeout param, fail on attach failure,
   remove_master_score_if_peer_primary param,
   fail_promote_early_if_peer_primary param, improved helper logging
   no error if wait-connect fails
 * drbdadm,v9: fix dumping meta-disk in corner case
 * crm-fence-peer.9.sh: fix Pacemaker 2 compat
 * drbdsetup,v9: fixes for various json output corner cases

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.12.0.tar.gz
https://github.com/LINBIT/drbd-utils/commit/91629a4cce49ca0d4f917fe0bffa25cfe8db3052
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
