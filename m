Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 51ED9105633D
	for <drbd-announce@lists.linbit.com>;
	Fri, 31 Mar 2017 22:10:07 +0200 (CEST)
Received: by mail-wr0-f182.google.com with SMTP id l43so115692571wre.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 31 Mar 2017 13:10:07 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 31 Mar 2017 22:10:04 +0200
Message-ID: <4974956.obosSvD51R@nuc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.7 & drbd-utils-8.9.11
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

Avoiding data divergence is the motto of this drbd-9 release. One the
one hand the fencing mechanism as known from the drbd-8.x world finally
works in drbd-9 as expected. Including the crm-fence-peer mechanism!

But those who care about fencing know that it is not trivial to implement.
It is about making sure the cluster does the right thing, if the main
replication network is interrupted. That involves having a second network
for pacemaker communication or to control fencing devices. -- Quite
frequently we see that such a "second network" is just an other VLAN on
the same physical infrastructure -> Which makes the whole fencing effort
point less.

An other approach to avoid data divergence in partitioned clusters is
to require quorum to modify the data. This approach does not need a
second network or fencing devices. But it only works if you have at
least 3 replicas.

The most outstanding convenience feature implemented in this cycle:
intentional diskless nodes are no longer red in the output of the
status command. 

This is a recommended update for every drbd-9 user.


drbd
9.0.7-1 (api:genl2/proto:86-112/transport:14)
--------
 * various fixes to the 2-phase-commit online resize
 * fix fencing and disk state transition and from Consistent; Now it is
   as complete as it was under drbd-8.4; Necessary for crm-fence-peer
 * fix moving previous current-uuid into bitmap slot for peer with
   inconsistent disk state. Old code produced false "split-brain detected"
 * fix calculation of authoritative nodes. Old code could lead to to
   false "split-bain detected"
 * udev workaround: Do not fail down if there is a read-only opener, instead
   wait up to a second if the read-only-opener goes away.
 * a primary notes if a "far away" nodes outdates itself, and records the
   fact in its meta-data.
 * report back to userspace if a node (or peer) is diskless by intention
 * restore "Outdated" peer disk state from the meta-data upon attach
 * Quorum to avoid data divergence, an alternative to fencing when the
   resource has 3 or more replicas
 * improve error reporting in case a promote/down/disconnect/detach
   operation failes. E.g. tells which peer declined a state transition
 * compiles with Linux 4.10

http://www.drbd.org/download/drbd/9.0/drbd-9.0.7-1.tar.gz
http://git.drbd.org/drbd-9.0.git/tag/refs/tags/drbd-9.0.7

drbd-utils
8.9.11
--------
 * better integration of drbd-proxy in drbd9 scenarios
 * OCF resource agent and crm-fence-peer for drbd9
 * introduce quorum support
 * expose information if node is intentionally diskless
 * do not set peer-device-options twice
 * various JSON output fixes
 * udev fixes for newer ubuntu releases
 * set bitmap to 0 on metadata creation

http://www.drbd.org/download/drbd/utils/drbd-utils-8.9.11.tar.gz
http://git.drbd.org/drbd-utils.git/tag/refs/tags/v8.9.11

best,
 phil

