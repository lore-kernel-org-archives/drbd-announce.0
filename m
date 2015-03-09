Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 09 Mar 2015 17:52:10 +0100
Message-ID: <1929969.JzEkQ2ER9K@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.0rc2.tar.gz & drbd-utils-8.9.2rc3.tar.gz
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

The focus for this release was to create a second transport
for DRBD. So far DRBD was capable of using networking infrastructure
that provides a BSD sockets API. That is basically:
TCP/IP (over Ethernet networks).

The new transport is called "RDMA". It allows to use DRBD on
networking infrastructure that provides a "verbs" interface.
E.g. InfiniBand, RoCE (RDMA over Converged Ethernets) or iWARP
adapters. That essentially boils down to "more speed".

  Using DRBD on high end servers with such 40GBit/sec RDMA cards,
  immediately showed bottlenecks in DRBD that did not stand out
  as long as the network API was the bottleneck. So we where able
  to drive the hardware to 20GBit/sec ~2GByte/second mirrored
  write performance. Work will continue in this area.

  Given that you have compatible hardware using the RDMA transport
  is trivial. The necessary change in the config is:

  [...]
  net {
       transport rdma;
       sndbuf-size 10M;
       rcvbuf-size 10M;
       max-buffers 4096;
  }

While drbd-9.0.0 is in its BETA-phase, we offer all interested
parties access to repositories for RHEL6, RHEL7 for free.
(Ubuntu 14.04 (say OpenStack!) will be added within a week)
These repositories also have the mentioned rdma-transport. It
is named "kmod-drbd-transport-rdma".

If you are interested in the beta-program, please drop us
an e-mail at office@linbit.com.

drbd-utils are moving with the changes in the 9.0 kernel driver
branch as well with the new environment with systemd on RHEL7.


drbd
9.0.0rc2 (api:genl1/proto:86-110)
--------
 * implemented trivial corking (network packet coalescing) in drbd,
   that makes the use of packet oriented transport feasible
 * create a new configuration object 'peer-device'; move config
   params of resync to the peer-device
 * move max_buffers from disk options to net options
 * merge 8.4 fixes
 * more work on the transport interface (triggered by the work
   on the RDMA transport)
 * Expose the loaded transports in /proc/drbd
 * Use git submodules to share code between drbd core, user-space
   tools and drbd transports

http://oss.linbit.com/drbd/9.0/drbd-9.0.0rc2.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=refs/tags/drbd-9.0.0rc2

drbd-utils
8.9.2rc3
--------
  * change systemd unit file: basically just call the init script
  * make some previously hardcoded timeouts configurable
  * drbdadm: New command peer-device-options
  * drbd: Move max_buffers to net_conf
  * drbdadm 9: Log errors to syslog if stderr is not available
  * init script: fixes for stacked resources
  * fix regression corner cases in bitmap size calculation
  * allow create-md to initialize peer-max-bio-size to 1M
  * make transport selectable
  * fix aggregating drbdsetup / drbdmeta exit statii
  * some documentation fixes (content and build)
  * added direct-connect command
  * incompatible drbd-9 metadata format changeuse: node_id as index for
    peer_md instead of the bitmap_index
  * drbdadm/meta/usage_cnt: ensure output is visible
  * drbdsetup: fix arguments for all commands expecting a peer_device
  * exit codes: redefine E_USAGE to 1 (not 3)
  * some build changes
  * init script: on start, first try to load the module
  * drbdsetup events2: Improve how timestamps are assigned

http://oss.linbit.com/drbd/drbd-utils-8.9.2rc3.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-utils.git;a=tag;h=refs/tags/v8.9.2rc3

best regards,
 Phil

