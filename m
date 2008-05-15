Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 15 May 2008 11:03:35 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200805151103.36052.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.2.6rc1.tar.gz
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

The final 8.2.6 release will happen in a few days.

Please help testing the new before-resync-target handler and
the default implementation of it called snapshot-resync-target-lvm.sh .

As the name implies this allowes one to take a snapshot of a
volume just in the moment before it become target of a 
resynchronisation process.

The obvious benefit of this is, that it in case your primary node
dies during the resync, you still have an consistent albeit
a bit outdated copy of your important data in the snapshot.

While this might appear as a must have, it has to be pointed
out that the LVM snapshot code might have bring considerable
loss of performance to the resync speed.

PS: Using a bigger chunksize of lvcreate (-c) was always
    beneficial in my test so far.

The Changelog:

8.2.6rc1 (api:86/proto:86-88)
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
 * Merged all changes from 8.0.11 -> 8.0.12 into 8.2

http://git.drbd.org/?p=drbd-8.2.git;a=tag;h=drbd-8.2.6rc1
http://oss.linbit.com/drbd/8.2/drbd-8.2.6rc1.tar.gz

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
