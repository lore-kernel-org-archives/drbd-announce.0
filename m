Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (unknown [86.59.100.100])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id ED3822D9DFA0
	for <drbd-announce@lists.linbit.com>;
	Wed, 24 Jan 2007 16:42:25 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 24 Jan 2007 16:42:23 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200701241642.23457.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.0.tar.gz
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

Hi There,

We have something to celebrate here...

   DRBD - 8.0.0
   ============

This is the official entry to the changelog:

8.0.0 (api:86/proto:86)
--------
 * No effecitve changes to rc2.


But I want to remind you about the changes relative to the 0.7
release of DRBD:
----------------
 * Removed support for Linux-2.4.x
 * Cleanup of the wire protocol.
 * Added optional peer authentication with a shared secret.
 * Consolidated state changes into a central function.
 * Improved, tunable after-split-brain recovery strategies.
 * Always verify all IDs used in the protocol that are used as pointers.
 * Introduced the "outdate" disk state, and commands for managing it.
 * Introduced the "drbdmeta" command, and require the user to create
   meta-data explicitly.
 * Support for primary/primary (for OCFS2, GFS...)
 * Replaced the sync-groups with the sync-after mechanism.
 * The "common" section in the configuration file.
 * Replaced the generation counters (GCs) with data-generation-UUIDs
 * Improved performance by using Linux-2.6's BIOs with up to 32k per
   IO request. Before we transferred only up to 4k per IO request.
 * A Warning if the disk sizes are more than 10% different.
 * A connection teardown packet to differentiate between a crash
   of the peer and a peer that is shut down gracefully.
 * External imposable SyncPause states, to serialize DRBD's resynchronisation
   with the resynchronisation of backing storage's RAID configurations.
 * Backing storage can be hot added to disk less nodes.
 * Prepared for advanced integration to Heartbeat-2.0
 * Changed internal APIs so that missed writes of the meta-data super
   block are reported as they happen.
 * The http://usage.drbd.org sub project.
 * Rewrote the scanner/parser of drbd.conf. 10 times smaller/faster and
   easier to maintain.
 * Asynchronous meta-data IO [ Code drop from the DRBD+ branch ]

http://oss.linbit.com/drbd/8.0/drbd-8.0.0.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0.0/
http://www.linbit.com/support/drbd-8.0.0/

To have our release policy more transparent in the future:

Bugfix releases will increase the 3rd number, e.g. 8.0.1, 8.0.2 etc...

Releases that introduce small new features will increase the second
number, resetting the third number: 8.1.0 etc...

In the next weeks we will try to update the http://www.drbd.org
with a bit of new content.

Oh, yes, and then we will prepare it for inclusion into 
Linus' mainline Linux.

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
