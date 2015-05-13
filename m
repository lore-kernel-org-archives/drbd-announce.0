Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 13 May 2015 20:50:54 +0200
Message-ID: <1690725.RESZuFhZB1@nuc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.0rc3.tar.gz & drbd-utils-8.9.3rc1.tar.gz
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

with this drbd-9.0 release we made great progress. First to mention,
the comparability with drbd-8.4 was improved a lot. Connecting to 8.4
have either side primary, resync etc, should work now. I.e. all the things
necessary for performing a rolling upgrade.

A lot of time and effort was put into debugging and improving the
two-phase commit protocol implementation. That is the building
block under secondary->primary state transitions as well as attach,
detach, connect and disconnect operations.
Now it seems that it scales to at least 10 nodes. More testing remains
to be done in that area.

On the front of RDMA, performance and testing under load some
issues where fixed as well.

While drbd-9.0.0 is in its BETA-phase, we offer all interested
parties access to repositories for RHEL6, RHEL7 and Ubuntu 14.04
for free.

If you are interested in the beta-program, please drop us
an e-mail at office@linbit.com.


drbd
9.0.0rc3 (api:genl1/proto:86-110)
--------
 * Merged changes of 8.4.6 release
 * Minor fixes in DRBD9 core for the RDMA transport
 * All log messages are not prefixed with drbd and resource_name
 * Fixed  wire protocol compatibility with drbd-8.4 for role changes
 * A lot of work on the two-phase commits: if two commits conflict
   one will succeed always; fixed bugs that caused tow-phase commits
   to hang
 * Fixed discard/trim in drbd9; was broken since the transport
   abstraction code was merged
 * Fixed the resync rate controller
 * Fixed protocol A
 * Fixed binding to the right port if for multiple peers the same
   local address with different ports is configured

http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=refs/tags/drbd-9.0.0rc3
http://oss.linbit.com/drbd/9.0/drbd-9.0.0rc3.tar.gz


drbd-utils
8.9.3rc1
--------
  * Rewrite the parser for configure options; Reuse the data structures
    describing drbdsetup options
  * No longer try to set peer-device-options with the connect or attach
    commands; Only do it with the up and attach commands
  * Fixed issues with stderr messages might go into arbitrary FDs
  * Allow recursive includes; drbdadm includes each config file only once
  * Fix parsing cut-off proxy sections
  * When converting 8.4 to 9.0 meta-data produce meta-data the drbd9
    kernel driver will accept
  * Obey max-peers for all volumes when creating meta-data
  * Do not re-register at usage.drbd.org when the module is not loaded
    when drbdadm is invoked

http://git.drbd.org/gitweb.cgi?p=drbd-utils.git;a=tag;h=refs/tags/v8.9.3rc1
http://oss.linbit.com/drbd/drbd-utils-8.9.3rc1.tar.gz

-phil

