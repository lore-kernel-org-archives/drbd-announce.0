Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
	[209.85.218.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id ADE9D420194
	for <drbd-announce@lists.linbit.com>;
	Mon, 16 Oct 2023 22:19:05 +0200 (CEST)
Received: by mail-ej1-f50.google.com with SMTP id
	a640c23a62f3a-9be1ee3dc86so436455966b.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 16 Oct 2023 13:19:05 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 16 Oct 2023 22:19:03 +0200
Message-ID: <861qdumibs.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.17-rc.1 and drbd-9.2.6-rc.1
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


Hello,

This time, it took a bit longer, around ten weeks. For me, this was a
fascinating development cycle.

We got important fixes to the RDMA transport, which now works with the
more recent Mellanox cards and drivers. However, there is still room for
improvement in the performance of DRBD's RDMA transport module.

From now on, the TCP transport can use TLS encryption. The kernel does
the data encryption/decryption with kTLS, an additional daemon in
userspace performs the TLS handshakes.

Last but not least, we got a completely new, additional TCP
implementation named 'lb-tcp'. It enables establishing DRBD connections
over multiple paths in parallel and distributing the load between
them. It is important to note that 'lb-tcp' is not "wire protocol"
compatible with the traditional TCP transport.

With all these big changes, we have some unfinished edges. TLS is
available for the TCP transport, and we also need to bring it to LB-TCP.

LB-TCP will get a configuration option for enabling the
load-balancing. When that is disabled, it will be wire-compatible with
the traditional TCP transport again. That will allow us to remove the
old TCP transport in the future.

For now (rc.1 phase), one has to select the lb-tcp module explicitly
using the "transport" keyword in the configuration.

On the drbd-9.1 side, things are as they should be. Fixes for exotic
corner cases.

Please help test the release candidates.


9.2.6-rc.1 (api:genl2/proto:86-122/transport:19)
--------
 * a series of fixes to the RDMA transport, making it compatible with
   more recent Mellanox cards and fixes in general to the RDMA code
 * optional TLS encryption for the TCP transport, based on kTLS with
   TLS handshakes in userspace
 * a new load-balancing TCP transport "lb-tcp" that establishes all
   configured paths in parallel and distributes the packet load over
   them
 * changes merged from drbd-9.1.17
  - fix a potential crash when configuring drbd to bind to a
    non-existent local IP address (this is a regression of drbd-9.1.8)
  - Cure a very seldom triggering race condition bug during
    establishing connections; when you triggered it, you got an OOPS
    hinting to list corruption
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

https://pkg.linbit.com/downloads/drbd/9/drbd-9.2.6-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/0ea8cf3cec494f9388ad75b7d433fb6d9097a03d

https://pkg.linbit.com/downloads/drbd/9/drbd-9.1.17-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/b9caee7779dfd43ef1fbfd686d8fbb273d7b5cb4

cheers,
 Phil
