Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 19 Apr 2016 23:55:26 +0200
Message-ID: <9369365.xEpsxRgIo1@phil-dell-xps.local>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.2
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

since a number of important bug-fixes accumulated in the master
branch it became necessary to tag the code base as 9.0.2.
No new features at this time.

9.0.2-1 (api:genl2/proto:86-111/transport:14)
--------
 * Fix list walks on the transfer log; Lead to crashes in _tl_restart()
   and (sometimes) other places.
 * Fix a corner case that lead to nodes showing the disk states of
   other nodes as Outdated after resync
 * Fix waiting for barrier acks; The bug was that demoting to secondary
   after AHEAD/BEHIND may blocked forever
 * Fix WRITE_SAME support
 * Fix a possible OOPS in got_peer_ack()
 * Fix resync controller; Was always on c-min-rate
 * Fix a possible deadlock on disconnect
 * Use modern kernel's expclicit plugging to reduce number of IOPs on
   the secondary node
 * Introduce a per resource max-io-depth limit; applies to each volume
   in the resource
 * Promptly send peer_acks if we can put the last reference on an
   activity log entry. Helps the to get the AL in use on secondaries
   down.

http://www.drbd.org/download/drbd/9.0/drbd-9.0.2-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/drbd-9.0.2


PS: Expect the next drbd-utils release in 3 weeks from now.

cheers,
 Phil
