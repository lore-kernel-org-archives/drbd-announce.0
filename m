Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 17 Mar 2009 15:23:09 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200903171523.09671.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.0.15rc1.tar.gz
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

8.0.15rc1 (api:86/proto:86)
--------
 * Adding a missing range check in ensure_mdev()
 * Fix for several potential memory leaks when allocating a device (Bugz 135)
 * Fixed error code pathes in request processing (Bugz 149)
 * Fixed an minor issue with the exposed data UUID logic (Bugz 164)
 * Fixed tight attach/detach loops (Bugz 171)
 * Fixed drbdadm adjust, when a running config contains "--discard-my-data" (Bugz 201)
 * Fix stack smashing in drbdmeta
 * Adding a missing range check in ensure_mdev() (Bugz 199)
 * Compatibility with Linux 2.6.27 and 2.6.28

http://git.drbd.org/?p=drbd-8.0.git;a=tag;h=drbd-8.0.15rc1
http://oss.linbit.com/drbd/8.0/drbd-8.0.15rc1.tar.gz

The 8.3.1rc1 will follow soon.

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

