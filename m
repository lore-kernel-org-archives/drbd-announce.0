Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Date: Wed, 14 Dec 2011 00:04:45 +0100
Message-ID: <189120882.i5bAbci32a@quad>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [DRBD-announce] drbd-8.4.1rc2.tar.gz
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

Relative to rc1 one ugly bug in the read load balancing code was
discovered.

  Local retry of read requests that where scheduled to the peer
  but failed there was broken.

Other than that we were only able to discover and fix bugs that
have been in DRBD since ever. Very rare race conditions that
are also in the 8.3 code base.

If you know any 8.4 specific dysfunctionally please let us know!

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.4.1rc2 (api:genl1/proto:86-100)
--------
 * Fixed a bug that might cause in kernel list corruption triggered by
   simultaneous IO on multiple volumes in a single resource
 * Fixed an issue in the receiver that could cause connection triggered by
   simultaneous IO on multiple volumes in a single resource
 * Consider the discard-my-data flag for all volumes
 * Fixed a rare compatibility issue with DRBD's older than 8.3.7
   when negotiating the bio_size
 * Fixed a rare race condition where an empty resync could stall with
   if pause/unpause events happen in parallel
 * Made the re-establishing of connections quicker, if it got a broken pipe
   once. Previously there was a bug in the code caused it to waste the first
   successful established connection after a broken pipe event.
 * crm-fence-peer.sh: Can now deal with multiple DRBD instances being in
   a master/slave group
 * Optional load balancing for read requests: new keyword "read-balance"

http://oss.linbit.com/drbd/8.4/drbd-8.4.1rc2.tar.gz
http://git.drbd.org/?p=drbd-8.4.git;a=tag;h=refs/tags/drbd-8.4.1rc2

Best,
 Phil
