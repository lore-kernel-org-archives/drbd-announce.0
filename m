Return-Path: <philipp.reisner@linbit.com>
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 13D4B420201
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Oct 2023 22:56:07 +0200 (CEST)
Received: by mail-lj1-f172.google.com with SMTP id
	38308e7fff4ca-2c5028e5b88so71704461fa.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Oct 2023 13:56:06 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 24 Oct 2023 15:46:27 +0200
Message-ID: <86y1fskua4.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.17-rc.2 and drbd-9.2.6-rc.2
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


Here are drbd-9.1.17-rc.2 and drbd-9.2.6-rc.2. Only a few changes on the
9.1 branch. After we had this UBSAN warning in rc.1 I want to give it
one more RC week.

The 9.2 branch saw way more changes than what is healthy for a release
candidate week.

I want to maintain only one TCP transport implementation in the long
run. I briefly mentioned this in the rc.1 announcement. So, for that, we
introduced a new config option for the net section: load-balance-paths.
When enabled, it selects the 'lb-tcp' implementation now. In a few
months, we will probably rename 'tcp' to 'tcp-legacy' and 'lb-tcp' to
just 'tcp'. Then the new 'tcp' implementation will be compatible with
both load-balanced multiple-path connections and older DRBD releases,
depending on the new load-balance-paths setting.

Building with the OFED kernels (RDMA) should be much easier with this rc.
Two new config options to fine tune RDMA performance.
Fixes to key handling in the new TLS code.

Known issues: As of rc.2 we know that disabling load-balance-paths and
forcing it to use lb-tcp results in an unstable system.
Do not use the transport keyword; use only the load-balance-paths
keyword to be on the save side.

Please help test the release candidates.


9.2.6-rc.2 (api:genl2/proto:86-122/transport:19)
--------
 * a new config net option 'load-balance-paths' that easens
   the steps of renaming the transports tcp to tcp-legacy and
   lb-tcp to tcp; and the final removal of the older tcp
   implementation
 * Build fixes for xenial and similar distros
 * Tuning parameter rdma-ctrl-(snd|rcv)buf-size for fine tuning
 * TLS key handling fixes
 * Makefile updates for compiling with OFED
 * dkms updates to include the compat handshake module
 * changes merged from drbd-9.1.17-rc.2
  - fix a UBSAN warning introduced in rc.1
  - fix a race condition regarding operations on the bitmap while
    forgetting a bitmap slot and a pointless warning


https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.17-rc.2.tar.gz
https://github.com/LINBIT/drbd/commit/2941f6f6a2942cf6f4c81269ceea471d8d18bb6b

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.6-rc.2.tar.gz
https://github.com/LINBIT/drbd/commit/cd5ed11da19b2885c0ccb5de862ce3e9c64b57fb

best regards,
 Philipp
