Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 6 Jul 2011 17:01:25 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201107061701.25797.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.0rc4.tar.gz
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

This is intended to be the final RC. It is inteded to build and work
on RHEL 5.x (where x >= 3), RHEL 6.x, SELS11SPx, Debian 6, Debian 5
with backports kernels, Ubuntu 10.04. 

I think all the issues reported for rc3 where fixed. Please provide
testing and feedback.

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.4.0rc4 (api:genl1/proto:86-100)
--------
 * Enforce application of activity log after primary crash in user space
 * Features from drbd-8.3: Allow detach from frozen backing devices with the
   new --force option; configurable timeout for backing devices by the new
   disk-timeout option
 * Fixes from drbd-8.3: RHEL 6.1 compatibility, fixes for >16TiB support,
   fixed bit_size negotiation with drbd < 8.3.7
 * Fixed state transitions in case attach fails
 * Fixed OOPS on RHEL5 kernels; By delivering a workaround for a bug in
   RHEL5's header files
 * Renamed --dry-run of connect to --tentative; plus alias in drbdsetup
 * Removed drbdadm --yes option
 * drbdadm got a "help" sub command, that shows the specific options
 * drbdadm can now process all options in random order, and ignores the "--"
   separator; compatibility aliases with the old calling conventions; now it
   is compatible with the pre 8.4 way of calling.

http://git.drbd.org/?p=drbd-8.4.git;a=tag;h=drbd-8.4.0rc4
http://oss.linbit.com/drbd/8.4/drbd-8.4.0rc4.tar.gz

-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
