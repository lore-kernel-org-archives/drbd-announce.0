Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7644E420195
	for <drbd-announce@lists.linbit.com>;
	Tue, 31 Oct 2023 17:07:21 +0100 (CET)
Received: by mail-ed1-f54.google.com with SMTP id
	4fb4d7f45d1cf-53e2308198eso9685418a12.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 31 Oct 2023 09:07:21 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 31 Oct 2023 17:07:18 +0100
Message-ID: <86v8amlqrt.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.17 and drbd-9.2.6
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


Happy Halloween our spooky friends
Our latest release shows we've made some mends

To make sure your data processing has little delay
We have brought back our RDMA from decay

Our new DRBD encryption is meant to be scary
It will definitely make any unauthorized parties be wary

Our last update is meant to be seen
Our new TCP transport is so fast you'll scream

Hopefully, some of our enhancements save you from fright,
And please, have a great Halloween tonight!



In the second week in release-candidate status, we got minor fixes on
the 9.2 branch and nothing on the 9.1 branch. It feels ready now.

I just read over my announcements of rc.1 and rc.2 and wondered why I
described the news in such a confusing way. Trying it again:

TLS: If you want to enable TLS put this into your config

net {
  tls yes;
}

More details, here:
https://linbit.com/drbd-user-guide/drbd-guide-9_0-en/#s-tcp_ip-tls


Load-balancing over multiple TCP connections:

net {
  load-balance-paths yes;
}

For that to do something useful, you need to have multiple paths for a
connection in your config. See here for more:
https://linbit.com/drbd-user-guide/drbd-guide-9_0-en/#s-configuring-multiple-paths

As of this release, you can not use 'tls' and 'load-balance-paths' together.

The RDMA transport got several fixes and two new configuration options.


9.2.6 (api:genl2/proto:86-122/transport:19)
--------
 * a series of fixes to the RDMA transport, making it compatible with
   more recent Mellanox cards and fixes in general to the RDMA code
 * Tuning parameter rdma-ctrl-(snd|rcv)buf-size for fine tuning
 * Makefile updates for compiling with OFED
 * optional TLS encryption for the TCP transport, based on kTLS with
   TLS handshakes in userspace
 * a new load-balancing TCP transport "lb-tcp" that establises all
   configured paths in paralle and distributes the packet load
   over them
 * a new config net option 'load-balance-paths' that easens
   the steps of renaming the transports tcp to tcp-legacy and
   lb-tcp to tcp and the final removal of the older tcp
   implementation
 * changes merged from drbd-9.1.17
  - fix a potential crash when configuring drbd to bind to a
    non-existent local IP address (this is a regression of drbd-9.1.8)
  - Cure a very seldom triggering race condition bug during
    establishing connections; when you triggered it, you got an OOPS
    hinting to list corruption
  - fix a race condition regarding operations on the bitmap while
    forgetting a bitmap slot and a pointless warning
  - Fix handling of unexpected (on a resource in secondary role) write
    requests
  - Fix a corner case that can cause a process to hang when closing the
    DRBD device, while a connection gets re-established
  - Correctly block signal delivery during auto-demote
  - Improve the reliability of establishing connections
  - Do not clear the transport with `net-options --set-defaults`. This
    fix avoids unexpected disconnect/connect cycles upon an `adjust`
    when using the 'lb-tcp' or 'rdma' transports in drbd-9.2.
  - New netlink packet to report path status to drbdsetup
  - Improvements to the content and rate-limiting of many log messages
  - Update compatibility code and follow Linux upstream development
    until Linux 6.5

https://github.com/LINBIT/drbd/commit/36c922e6b26d558e256ed490a5e859afbbed08c3
https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.17.tar.gz

https://github.com/LINBIT/drbd/commit/52144c0f90a0fb00df6a7d6714ec9034c7af7a28
https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.6.tar.gz
