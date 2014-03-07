Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 07 Mar 2014 17:54:11 +0100
Message-ID: <14530289.PxyiQHnXlM@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.0pre9.tar.gz
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

This release is synchronized with the drbdmanage release again.
Lots of bugs fixed, though one important update to the "Weak"
logic did not made it into this release.

For sure the most outstanding change for you is, that the user-
space tools are no longer part of the kernel driver package.

In order to use this drbd-9 pre release you must fetch the
drbd-utils-8.9.0rc1 package as well!

This drbd-utils package will replace the userspace bits of
drbd-8.4 (and 8.3) as well! -- One userland package for
the different major releases of DRBD.


9.0.0pre9 (api:genl1/proto:86-110)
--------
 * fixed the "list corruption bug"
 * moved the user space code to a dedicated repository (with
   that the driver no longer uses autotools)
 * fixed race conditions with changing the in kernel objects
 * fixed UUID modifications for attach & detach operations
 * allow a diskless node to become primary when there is
   up-to-date data on secondary nodes
 * the transition into disk state Negotiating is now a two-phase
   commit. With that only one disk in a resource is allowed at
   a time in Negotiating state.
 * Completed the resync-negotiation for disk getting attached
   to a diskless node that has multiple peers
 * a dedicated disk state for Detaching (previously Failed was
   used for a detaching disk)


http://oss.linbit.com/drbd/9.0/drbd-9.0.0pre9.tar.gz
http://oss.linbit.com/drbd/drbd-utils-8.9.0rc1.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=drbd-9.0.0pre9
http://git.drbd.org/gitweb.cgi?p=drbd-utils.git;a=tag;h=v8.9.0rc1

Best regards,
 Phil
