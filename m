Return-Path: <philipp.reisner@linbit.com>
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id AC4AF42019F
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Aug 2024 22:24:30 +0200 (CEST)
Received: by mail-ed1-f41.google.com with SMTP id
	4fb4d7f45d1cf-5af6a1afa7bso5662322a12.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Aug 2024 13:24:30 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.1.22 and drbd-9.2.11
Date: Mon, 12 Aug 2024 22:24:28 +0200
Message-ID: <86plqdtrpf.fsf@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: drbd-user@lists.linbit.com
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


Hello DRBD-users,

A detail I never cared about is if a syscall gets restarted or returns
EINTR after the arrival of a signal. What made me learn this detail is a
customer whose system newly created processes get a signal. Often, a
process open()s the resources it needs to work with first, and on this
occasion, that was a drbd device.

When auto-promote is enabled (which it is by default), DRBD will promote
the drbd device to primary in the open() system call of a user space
process. It needs to exchange some network packets, which can easily
take milliseconds.

Now, when a (non-fatal) signal arrived at just that moment, DRBD
dutifully interrupted the promote operation and returned to user space,
with an errno indicating that the device was not primary.

And here is the problem for a random user-space process, it got an
unexpected errno from open() and terminated.

Then, I learned about EINTR and restartable syscalls. Starting with this
release, DRBD will restart the open() syscall in such a scenario unless
the user prepared to receive an EINTR from open() by calling sigaction()
and omitting SA_RESTART before.

Since the rc.1 the only change is a minor and straightforward fix to the
RDMA transport, which is relevant when the RDMA stack is cleaning up its
objects slowly (or not at all).


9.2.11 (api:genl2/proto:86-122/transport:19)
--------
 * Do not block del-minor or down operations if the RDMA/Infiniband
   stack cleans up slowly.
 * Changes merged from 9.1.22
  - Upgrade from partial resync to a full resync if necessary when the
    user manually resolves a split-brain situation
  - Fix a potential NULL deref when a disk fails while doing a
    forget-peer operation.
  - Fix a rcu_read_lock()/rcu_read_unlock() imbalance
  - Restart the open() syscall when a process auto promoting a drbd device gets
    interrupted by a signal
  - Remove a deadlock that caused DRBD to connect sometimes
    exceptionally slow
  - Make detach operations interruptible
  - Added dev_is_open to events2 status information
  - Improve log readability for 2PC state changes and drbd-threads
  - Updated compability code for Linux 6.9

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.11.tar.gz
https://github.com/LINBIT/drbd/commit/f52e5a3545e17fafd548b6b9c483206c32754955

https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.22.tar.gz
https://github.com/LINBIT/drbd/commit/d7212a2eaeda23f8cb71be36ba52a5163f4dc694
