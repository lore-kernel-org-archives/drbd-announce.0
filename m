Return-Path: <philipp.reisner@linbit.com>
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com
	[209.85.128.177])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 073BE4204B5
	for <drbd-announce@lists.linbit.com>;
	Mon, 14 Nov 2022 15:30:07 +0100 (CET)
Received: by mail-yw1-f177.google.com with SMTP id
	00721157ae682-3704852322fso107588057b3.8
	for <drbd-announce@lists.linbit.com>;
	Mon, 14 Nov 2022 06:30:07 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Mon, 14 Nov 2022 15:29:56 +0100
Message-ID: <CADGDV=WHxhP0WHBjiP34qBJbJtFVJWgH6TnHv9rLqYrY74zN=Q@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.1.12 & drbd-9.2.1
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

During the last week no showstopper came up. Here are the final releases.

The most outstanding improvement is supporting thinly provisioned backing
devices with discard granularities larger than 128MiB. Here I mean with
supporting, that during a resync we make sure not to cause unnecessary
allocations in the backing block device, and merging the discard requests
for good resync performance.
Previously DRBD was only dealing with discard granularities of up to 1MiB.

The LVM tools create big chunksizes in thinpools for large pools. The
chunksize is then what determines the discard granularity. ZFS on the other
hand always stays with 8k, and it consumes too much space for its metadata
on large pools. The middle ground would be optimal. We will write an article
on these chunksize considerations. Also mentioning how to set these settings
with LVM-thin and ZFS.

On top of that, we have a bunch of fixes and lots of progress with upstream
kernel compatibility.

9.2.1 (api:genl2/proto:110-121/transport:18)
--------
* fix spurious PingAck timeout, a regression of ack-processing in bottom
  half (introduced with 9.2.0)
* support merging of discards during resync even if the discard granularity
  of the backing device is larger than 128MiB
* merged changes from the drbd-9.1 branch, including
 - fix a race that could result in connection attempts getting aborted
   with the message "sock_recvmsg returned -11"
 - rate limit messages in case the peer can not write the backing storage
   and it does not finish the necessary state transitions
 - reduced the receive timeout during connecting to the intended 5 seconds
   (ten times ping-ack timeout)
 - losing the connection at a specific point in time during establishing
   a connection could cause a transition to StandAlone; fixed that, so
   that it keeps trying to connect
 - fix a race that could lead to a fence-peer handler being called
   unexpectedly when the fencing policy is changed at the moment before
   promoting

9.1.12 (api:genl2/proto:110-121/transport:17)
--------
* fix a race that could result in connection attempts getting aborted
  with the message "sock_recvmsg returned -11"
* rate limit messages in case the peer can not write the backing storage
  and it does not finish the necessary state transitions
* reduced the receive timeout during connecting to the intended 5 seconds
  (ten times ping-ack timeout)
* losing the connection at a specific point in time during establishing
  a connection could cause a transition to StandAlone; fixed that, so
  that it keeps trying to connect
* fix a race that could lead to a fence-peer handler being called
  unexpectedly when the fencing policy is changed at the moment before
  promoting

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.1.tar.gz
https://pkg.linbit.com//downloads/drbd/9/drbd-9.1.12.tar.gz

https://github.com/LINBIT/drbd/commit/86ec2326fef3aede9f4d46f52bfd35aac4d5eb7e
https://github.com/LINBIT/drbd/commit/bfc1691453a36de688e013239ce5c586263933fa
