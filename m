Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 20 Feb 2008 22:53:34 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200802202253.34534.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.2.5.tar.gz
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

Especially in case you run drbd-8.2.4 on a Linux kernel
of 2.6.16 or older you want to upgrade to this version.

8.2.5 (api:86/proto:86-88)
--------
 * Fixed a race between online-verify and application writes.
   It caused drbd to report false positives, and very likely
   deadlocked immediately afterwards.
 * When DRBD is build for kernels older than 2.6.16 mutexes are
   provided by a wrapper include file which is shipped with DRBD.
   We had a bug in there that caused one of DRBD's threads to
   lockup after the first connection loss. Fixed.
 * Merged all changes from 8.0.8 -> 8.0.11 into 8.2

http://oss.linbit.com/drbd/8.2/drbd-8.2.5.tar.gz
http://git.drbd.org/?p=drbd-8.2.git;a=tag;h=drbd-8.2.5
http://www.linbit.com/support/drbd-8.2.5/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
