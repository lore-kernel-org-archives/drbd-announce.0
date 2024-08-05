Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 68CF5420131
	for <drbd-announce@lists.linbit.com>;
	Mon,  5 Aug 2024 15:22:53 +0200 (CEST)
Received: by mail-wm1-f45.google.com with SMTP id
	5b1f17b1804b1-42819654737so65549875e9.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 05 Aug 2024 06:22:53 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: drbd-9.1.22-rc.1 and drbd-9.2.11-rc.1
Date: Mon, 05 Aug 2024 15:22:50 +0200
Message-ID: <86sevjt87p.fsf@linbit.com>
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
process open()s the resources it needs to work with first, and in this
occation, that was a drbd device.

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

Please help test the release candidate.

9.2.11-rc.1 (api:genl2/proto:86-122/transport:19)
--------
 * Changed merged rom 9.1.22
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


https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.22-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/d10418bf63f0b664305d9bd4779cb48965d434f5

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.11-rc.1.tar.gz
https://github.com/LINBIT/drbd/commit/c52d24bca2b1c659bfba19d19602c7e319c7416d
