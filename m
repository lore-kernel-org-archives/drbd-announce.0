Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Date: Sun, 22 Dec 2013 22:26:03 +0100
Message-ID: <1446368.FGFGzKY3zx@quad>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [DRBD-announce] drbd-9.0.0pre7.tar.gz
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

Since the last pre-release DRBD9 got a very long way. Since the last
pre-release we developed an automated test suite for DRBD9. This new
test suite turned out to be a reliable source of DRBD9 bugs.
We have not yet emptied this pool of known bugs, therefore we did
not feel the need for a new pre-release.
In the same time period we got a new member in our development team,
working dedicated on the upcoming "drbdmanage" component. This effort
as well fills our DRBD9 bug queue.

Besides all this good news about hard and successful testing of the
code I really need to point out:

 It became a _lot_ better! Did DRBD9 crashed or behaved strange the 
 last time you had a look at it? Please try it again!

Please share the bugs/issues you find with us (via one of the
mailing lists)!

All the best and marry X-mas!


9.0.0pre7 (api:genl1/proto:86-110)
--------
 * Merge up and beyond 8.4.4
 * Do not crash if DRBD runs out of available bitmap slots
 * Fix reference counting (A few bugs in this area caused crashed
   when/after unloading the module)
 * Fix crashes on PAE/highmem
 * Many fixes to the two phase commit protocol (used for cluster
   wide state changes)
 * Lots of minor fixes

http://oss.linbit.com/drbd/9.0/drbd-9.0.0pre7.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=drbd-9.0.0pre7


