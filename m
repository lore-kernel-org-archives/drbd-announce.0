Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 30 May 2008 14:04:17 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200805301404.17733.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.2.6.tar.gz
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

And finally the 8.2.6 release. 

Besides the new features (before-resync-target handler, and
the bash completion support), I have to point out that this
has quite a number of bug fixes (i.e. the 8.0.11 -> 8.0.12
changes.)

8.2.6 (api:86/proto:86-88)
--------
 * The details of the LRU data structures is now hidden from
   /proc/drbd but can be re-enabled by echoing 1 to
   /sys/module/drbd/parameters/proc_details
 * Bash completion support for drbdadm (Installs on all distributions
   but RedHat, since they lack the /etc/bash_completion.d directory)
 * Fixed the out-of-sync handler it never fired.
 * Added the before-resync-target handler, and a default
   implementation of a handler that snapshots the target
   of a resynchronisation in case it is a LVM2 logic volume.
 * Improved error messages and documentation in regards to
   false positives of online verify and data-integrity-alg
   mechanisms in the presence of ReiserFS or the Linux
   swap code.
 * Added the max-bio-bvecs option to workaround issues in
   a stack of DRBD/LVM/Xen.
 * Merged all changes from 8.0.11 -> 8.0.12 into 8.2
 * Fixed online resizing in case it is triggered from the
   secondary node.

http://git.drbd.org/?p=drbd-8.2.git;a=tag;h=drbd-8.2.6
http://oss.linbit.com/drbd/8.2/drbd-8.2.6.tar.gz
http://www.linbit.com/support/drbd-8.2.6/

-phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
