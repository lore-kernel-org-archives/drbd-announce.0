Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 21 Oct 2016 14:10:48 +0200
Message-ID: <7439881.WKJSOYYADe@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.5 & drbd-8.4.9 & drbd-utils-8.9.9
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

Super release day!


For drbd-9 there is one very important fix. 

  All drbd-9.0.x version until now had the following bug:
  In case you are running with a diskless primary that is connected to
  two secondaries with disk, and there is a resync going on between the
  secondaries, it applies application writes from the primary only to
  the resync source. It marks those blocks as out of sync in the bitmap,
  but the marks stay there, the stay out of sync on the resync target
  and the resync terminates.

For the scenario, that you want to run with a small number of nodes
with disks (2, 3 maybe 4) and a bigger number of diskless nodes (.e.g 20)
you want to have only 4 or 5 bitmap slots and not 25 allocated.
Before 9.0.5 DRBD required to have a bitmap slot for each and every node.
Starting with 9.0.5 it does not allocate bitmap slots for permanently
diskless nodes. If you want to have many big volumes (like multi terabytes)
the memory consumptions matters, and this improvement helps you a lot.


Please note that drbd-9 still does not come with nice pacemaker
integration (no crm-fence-peer, no ocf resource agent). Do not try
to hack that with patches flying around, those are incomplete.
This is an area where drbd-9 is not yet complete, and we will address
this in the development cycle that opens with this release.


In drbd-8.4.9 there is no change, except compatibility code for upstream
Linux 4.8.


DRBD 9.0.5-1 (api:genl2/proto:86-112/transport:14)
--------
 * fix a bug that causes data inconsistency between mirrors. The bug triggered
   if you write on a diskless primary while a resync is going on between two
   nodes with disk.
   It might happen that the diskless primary chooses the not-updated mirror
   for subsequent reads of those blocks, then this bug manifests as data
   corruption.
 * no longer allocate bitmap-slots on diskfull nodes for nodes that are
   configures to be diskless; Saves bitmap-slots, thus allows you to use
   smaller max-peers numbers, thus saves memory and CPU resources
 * fix bugs in the try_become_up_to_date() logic; they caused hanging
   machines or hangs during state transitions
 * fix a IO deadlock that could happen when two secondaries are in a resync
   and a write on a third node (primary) is sent two the two resyncing nodes
 * fix two phase-commits when the nodes form a circular structure
 * fix support for WRITE_SAME. Was broken since merged from 8.4
 * balance read requests from diskless primary nodes among multiple peers
   (if available). In the past it read always from one node (that happened
   to be first in the internal data structures)
 * make sure it compiles with Linux 4.8

http://www.drbd.org/download/drbd/9.0/drbd-9.0.5-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/refs/tags/drbd-9.0.5


DRBD 8.4.9-1 (api:genl1/proto:86-101)
-------
 * compat fixes for linux kernels up to 4.8

http://www.drbd.org/download/drbd/8.4/drbd-8.4.9-1.tar.gz
http://git.drbd.org/drbd-8.4.git/tag/refs/tags/drbd-8.4.9


drbd-utils 8.9.9
--------
 * fix --skip-disk/--skip-net when used with more than one resource
 * events2 of v8.4: Fake peer-node-ids to make it in-line with  v9
 * fix drbdadm crashes in set-gi and new-current-uuid
 * new peer_device option (--bitmap=no) to indicate that for this peer
   no bitmap slot should be allocated in the meta-data; This is used
   by all peers of a (configured) diskless node; saves bitmap-slots,
   thus allows you to use smaller max-peers numbers, thus saves memory
   and CPU resources
 * removed sh-status from v9

http://www.drbd.org/download/drbd/utils/drbd-utils-8.9.9.tar.gz
http://git.drbd.org/drbd-utils.git/tag/refs/tags/v8.9.9

