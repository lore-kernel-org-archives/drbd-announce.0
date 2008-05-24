Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Sat, 24 May 2008 22:26:02 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200805242226.02483.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.2.6rc2.tar.gz
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

We decided to push the DRBD/LVM/Xen workaround into the 8.2.6
release. This makes a second release candidate necessary:

8.2.6rc2 (api:86/proto:86-88)
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
 * Added the max-bio-size option to workaround issues in
   a stack of DRBD/LVM/Xen.
 * Merged all changes from 8.0.11 -> 8.0.12 into 8.2

http://git.drbd.org/?p=drbd-8.2.git;a=tag;h=drbd-8.2.6rc2
http://oss.linbit.com/drbd/8.2/drbd-8.2.6rc2.tar.gz

-Phil
