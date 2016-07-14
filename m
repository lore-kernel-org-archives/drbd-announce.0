Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 14 Jul 2016 17:59:57 +0200
Message-ID: <6246816.vqD3T81mK3@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.3 & drbd-utils-8.9.7
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

to all users of drbd-9.0.2: You want to upgrade to 9.0.3. We fixed a 
significant number of serious bugs and a even higher number of other
bugs. It works a lot better now!
  An interesting change is that it allows now multiple primary that
  are not directly connected when:
   a) Both primaries are diskless
   b) Both have connections to a common secondary with disk
  That, of course, is useful for diskless hypervisors connected to
  one or multiple storage nodes. For live migration of a VM between
  such hypervisors this functionality is necessary.

We enhanced DRBD-utils for drbd-9 in many ways. Lots of it was driven
by drbdmanage's requirements. With DRBD being used as a software defined
storage solution for OpenStack, OpenNebula, Proxmox, ... we began
work to support higher number of resources/volumes. Expect more of that
in the future.

PS: Expect a drbdmanage release tomorrow, it will require the news
    drbd-utils release and you want to have the new kernel driver
    anyways.

drbd
9.0.3-1 (api:genl2/proto:86-111/transport:14)
--------
 * fix a deadlock in try_become_up_to_date()
 * fix an unintended overlay of an internal peer device flag and a device flag
   The bug manifested itself that sometimes DRBD forgot to create a new
   current UUID
 * Create a new current UUID when the peer's disk breaks, do not wait
   for a following write
 * In case of an auto-promote event with no up-to-date data present wait
   also wait for an connection with an up-to-date data peer for the time
   of the auto-promote-timeout
 * mark permanently diskless nodes in the meta-data of all nodes
 * rework online resizing
 * fix a reace condition that triggered a BUG() because it called
   add_timer() twice for the same timer object
 * fix multiple causes of outdated disks not becomming up-to-date
   after no longer being weakly connected
 * removed a use of an uninitialized value that might lead to an
   unexpected outdate of the local disk upon disconnect
 * found and fixed why sometimes a P_TWOPC_ABORT packet did not reached
   all nodes of a cluster; that was the reason for hanging two-phase
   commits
 * Allow multiple diskless primaries if they are connected to a common
   secondary that has a disk
 * empty flush requests no longer trigger a bogus "IO ERROR" log entry
 * restored the new-current-uuid --clear-bitmap functionality to skip
   the initial resync

http://www.drbd.org/download/drbd/9.0/drbd-9.0.3-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/drbd-9.0.3


drbd-utils
8.9.7
--------
 * allow to pass peer device options on the drbdadm command-line
 * fix drbdadm net-options by not passing the transport
   (the transport of a connection can not be changed while the connection is
    online)
 * options passed on the drbdadm command-line now overrule settings from
   the configuration file when calling drbdsetup
 * new resource option max-io-depth (v9 only)
 * allow partial adjust by --skip-disk and/or --skip-net
 * support for a new meta-data flag that helps resize operations
 * workaround for sysfs entries and del_gendisk and add_disk;
   in case drbdsetup sees those sysfs entries it exits immediately,
   that prevents half initialized drbd devices that can not be removed
 * drbdadm resize waits until new new size is user visible
 * support for the reload operation in the OCF resource agent
 * drbdadm's parser now reports too long strings with a meaningful
   error message
 * increased the size of the uniqueness hash-table, to support up to
   to 1000 resources

http://www.drbd.org/download/drbd/utils/drbd-utils-8.9.7.tar.gz
http://git.drbd.org/drbd-utils.git/tag/refs/tags/v8.9.7

cheers,
 phil
