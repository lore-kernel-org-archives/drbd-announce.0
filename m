Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 23 May 2011 18:49:31 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201105231849.32203.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.11rc1.tar.gz
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

This is a bugfix only release in of the 8.3 code branch.

The most subtlety bug fixed with this release is in the
area of the max_bio_size negotiation:
  Over the course of the last releases we where driving up
  the max_bio_size supported by DRBD. We had an optimistic
  negotiation of the agreed max_bio_size in place.
  Now, if one created a device, made it primary, connected
  it to a peer node with data, and attached the local disk
  after all that, he could cause DRBD to shrink the
  max_bio_size with that attach operation.
  But shrinking the max_bio_size is a problem if a BIO gets
  created with the old (larger) max_bio_size and gets 
  submitted when the new (smaller) max_bio_size is set.

The other fixes are quite on the same page:
  Rather not so common cases.

Interesting for long distance replication users, is the bugfix
for establishing connections.

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.3.11rc1 (api:88/proto:86-96)
--------
 * Fixed handling of read errors during online verify runs
 * Fixes for possible distributed deadlocks during online verify and
   checksum based resync processes
 * Fixed handling of IO errors with an on-io-error=pass-on policy; the
   disk state goes to inconsistent
 * Fixed the behaviour in case ping-timeout and ping-int are set to the
   same value
 * Fix for connecting on high latency network links
 * Fixed state transitions if fence-peer handler returns after connection was
   established again
 * Made the max_bio_size negotiation conservative instead of optimistic
 * Network timeouts for mirrored write requests are now always enforced,
   no longer only when the socket is congested

http://oss.linbit.com/drbd/8.3/drbd-8.3.11rc1.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=commit;h=drbd-8.3.11rc1

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
