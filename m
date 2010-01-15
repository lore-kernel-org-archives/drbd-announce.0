Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 15 Jan 2010 14:22:21 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201001151422.21491.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.7.tar.gz
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

The two highlights of drbd-8.3.7:

 * New RPM packaging, which is very close to Fedora's packaging rules.
   In case you are using RPMs make sure that you install the needed
   subset of RPMs.

   The drbd-X.X.X-1.ARCH.rpm is now a virtual package that
   has dependencies on all the components: drbd-utils, drbd-udev,
   drbd-xen, drbd-bash-completion, drbd-heartbeat and drbd-pacemaker.

   Those in turn might depend on the component they bridge to drbd.
   I.e. drbd-udev depends on udev. 

   For a hassle free upgrade we omitted a few dependencies:
   drbd-xen does not depend on xen
   drbd-pacemaker does not depend on pacemaker
   drbd-heartbeat does not depend on heartbeat

   For new installations I recommend to install drbd-utils and drbd-udev,
   and the other integration package(s) you need, and to not install
   the virtual package (drbd).

 * New default config that suggests to use config-snippets in /etc/drbd.d/

   Adding new drbd resources to a pacemaker cluster with the new
   OCF based resource agent can be a challenging task. The issue
   is that pacemaker might execute a monitor operation every 
   second. Since the RA uses drbdadm, it will fail if you have a
   broken config on your machine. -- Broken configuration files
   may happen when adding new resources.

   One way out is to split the config into snippets:
   /etc/drbd.d/global_common.conf and some /etc/drbd.d/*.res
   A new resource is first created as /etc/drbd.d/something.new
   Then you check the syntax of the new resource with
   drbdadm -t /etc/drbd.d/something.new dump something
   and if it is successful activate that resource by renaming
   it's config snippet: mv something.new something.res

Changelog:

8.3.7 (api:86/proto:86-91)
--------
 * Lots of fixes to the new RPM packaging
 * Lots of fixes to the autoconfig stuff
 * Following the rename of CONFIG_LBD to CONFIG_LBDAF
 * Silenced an assert. Could trigger after changing write ordering (Bugz 261)
 * Fixed a race condition between detach and ongoing IO. Very hard to
   trigger, caused an OOPS in make_request/drbd_make_request. (Bugz 262)
 * Fixed a regression in the resync handshake code introduced before 8.3.3.
   That bug causes DRBD to block during the initial handshake when a partial
   resync is not possible but a full resync is necessary. Happens very rarely.
   (Bugz 260)
 * Do not drop into StandAlone mode when connection is lost during authentication
 * Corrected a null test in the authentication code, found by conccinelle,
   thanks to upstream integration. The chance to trigger that was probably 10^-9.
 * crm-fence-peer.sh is now also usable if DRBD is managed from the xen block
   helper script
 * Fixes to the init script's dependencies
 * Backported cleanups that where contributed to the in kernel DRBD
 * Allow online resizing of disconnected devices, new option to drbdsetup
   drbdsetup /dev/drbdX resize --assume-peer-has-space
 * Allow multiple after options in the syncer section for stacked setups
 * Correctly process relative paths in include statements in drbd.conf
 * New option (-t) for drbdadm to test syntax of config snippets
 * Following Linux upstream changes 2.6.32 (SHASH and in_flight issues)
 * New /etc/drbd.conf example that suggests the use of /etc/drbd.d/xxx.res

http://oss.linbit.com/drbd/8.3/drbd-8.3.7.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.7

With this release we have a new policy, that LINBIT's pre build RPMs and 
DPKGs are available 7 days after the release. This is Friday January 22,
for drbd-8.3.7.

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
