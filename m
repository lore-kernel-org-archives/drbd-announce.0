Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 23 Dec 2016 14:55:18 +0100
Message-ID: <7665562.5gW1P1bkcl@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.6 and drbd-utils-8.9.10
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

In this cycle we where driven by users using DRBD9 with OpenStack.
So we got improvements in handling many resources event to the extent
of a new tool to get an quick overview of many DRBD resources.

 drbdmon

 drbdmon displays on limited screen space as much information as
 possible about as many resources as possible. It is an interactive
 display, i.e. it updates the screen as changes happens.

The other highlights are performance optimization of activity log
updates on secondaries and quicker connect times.

Please note that drbd-9 still does not come with nice pacemaker
integration (no crm-fence-peer, no ocf resource agent).
This is an area where drbd-9 is not yet complete, and we will address
this as soon as possible.


DRBD 9.0.6-1 (api:genl2/proto:86-112/transport:14)
--------
 * fixed error handling in del_path
 * merge fixes from drbd-8.4; a potential NULL deref with kernel_sendmsg()
 * fix multiple issues with concurrent two-phase-commits
 * improve connect time; with older releases it usually took between 20 to
   40 seconds to establish a connection; now it usually works now in less than
   2 seconds
 * allow multiple updatese per AL-transaction on a secondary; this can
   (depending on the IO pattern) dramatically increase the the write
   throuput and decrease IO amplification
 * reorganize data structures of receiver for efficiency
 * upon an open for read-only access, wait for up the auto-promote-timeout
   for accessible data

http://www.drbd.org/download/drbd/9.0/drbd-9.0.6-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/refs/tags/drbd-9.0.6

8.9.10
--------
 * new drbdmon tool, which provides a compact overview about resources.
   In contrast to drbdsetup status it provides live monitoring.
   This requires a C++11 compiler.
 * drbdadm parser got substantially faster for thousands of resources
 * send SIGKILL to childs if parent (drbdadm) dies.

http://www.drbd.org/download/drbd/utils/drbd-utils-8.9.10.tar.gz
http://git.drbd.org/drbd-utils.git/tag/refs/tags/v8.9.10

cheers,
 Phil
