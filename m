Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 30 Apr 2013 18:45:50 +0200
Message-ID: <1931054.8NrXzn2lOq@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.0pre3.tar.gz
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

A rather ugly bug slipped into the 9.0.0pre2 release that caused
all secondary nodes to outdate them selfs when a primary was demoted
to secondary.  This bug and many many more where fixed in those two
weeks.

Establishing connections works very well now, also to multiple
peers at a time.
Resync decisions (directions and bits) should be correct.

Unclear at this time is if the bitmap compression code works
(When in doubt disable it with "net { use-rle no; }" for now)

Now is the right time to take a look at drbd-9 !

9.0.0pre3 (api:genl1/proto:86-110)
--------
 * Lots of bugs fixed in the two phase cluster wide commits
 * Work on the state engine, to fit it to multiple connections

http://oss.linbit.com/drbd/9.0/drbd-9.0.0pre3.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=refs/tags/drbd-9.0.0pre3

Best,
 Phil

