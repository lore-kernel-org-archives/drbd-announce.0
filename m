Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [213.229.1.138])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 8753E16879
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Mar 2006 11:53:06 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 14 Mar 2006 11:53:51 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200603141153.51388.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0_pre1.tar.gz
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

Hi there,

=46inally the time has come to bring the DRBDv8 development code to=20
a broader audience. Here is the ChangeLog that outlines most improvements:

8.0-pre1 (api:80/proto:80)
=2D-------
 * Removed support for Linux-2.4.x
 * Cleanup of the wire protocol.
 * Added optional peer authentication with a shared secret.
 * Consolidated state changes into a central function.
 * Improved, tunable after-split-brain recovery strategies.
 * Always verify all IDs used in the protocol that are used as pointers.
 * Introduced the "outdate" disk state, and commands for managing it.
 * Introduced the "drbdmeta" command, and require the user to create=20
   meta-data explicitly.
 * Support for primary/primary (for OCFS2, GFS...)=20
 * Replaced the sync-groups with the sync-after mechanism.
 * The "common" section in the configuration file.
 * Replaced the generation counters (GCs) with data-generation-UUIDs
 * Improved performance by using Linux-2.6's BIOs with up to 32k per
   IO request. Before we transferred only up to 4k per IO request.
 * A Warning if the disk sizes are more than 10% different.
 * A connection teardown packet to differentiate between a crash
   of the peer and a peer that is shut down gracefully.
 * External imposable SyncPause states, to serialize DRBD's resynchronisati=
on
   with the resynchronisation of backing storage's RAID configurations.
 * Backing storage can be hot added to disk less nodes.
 * Prepared for advanced integration to Heartbeat-2.0
 * Changed internal APIs so that missed writes of the meta-data super
   block are reported as they happen.
 * The http://usage.drbd.org sub project.
 * Rewrote the scanner/parser of drbd.conf. 10 times smaller/faster and=20
   easier to maintain.
 * Asynchronous meta-data IO [ Code drop from the DRBD+ branch ]

Of course there is no documentation for DRBDv8 yet, nor it is feature
complete. But the still outstanding features are only minor changes.

So it is time for you to start testing this code on your testing=20
and staging clusters.=20

Please do:
 * stress tests
    IO pressure, memory pressure etc...

 * coverage tests
    Try to test all possible failure and recovery scenarios.

 * Performance comparison tests between drbd-0.7.x and drbd-8.0.x

 * Put OCFS2 / GFS on top of it (still untested from my side)

Please send _usefull_ reports to drbd-dev@lists.linbit.com . Please note
that that list is moderated, and we try to keep the traffic there
quite low.

Send random observations regarding DRBD-8 to drbd-user@lists.linbit.com

http://oss.linbit.com/drbd/8.0/drbd-8.0_pre1.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0_pre1/

Thanks!
=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
