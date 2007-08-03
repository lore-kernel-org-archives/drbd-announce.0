Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (unknown [81.16.158.130])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 46E502E2DB28
	for <drbd-announce@lists.linbit.com>;
	Fri,  3 Aug 2007 12:39:09 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 3 Aug 2007 12:39:08 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200708031239.08270.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.5.tar.gz
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

Hi,

Nearly all on the list are rather exotic corner cases, but due
to the length of the list, it might be a good idea to upgrade.

8.0.5 (api:86/proto:86)
--------
 * Changed the default behaviour of the init script. Now the init
   script terminates in case the devices refuse to because they
   had a split brain. Introduced an option to preserve the old
   behaviour.
 * Fixed a bug where the local_cnt could get imbalanced upon a
   state change.
 * Fixed an bug in the UUID algorithm, that could lead to both
   sides in cs:WFBitMapT state. It was triggered when the disk
   on the SyncTarget gets detached and attached.
 * Implemented proper size checking on strings that get communicated
   with DRBD's netlink protocol.
 * Changed the maximal length of device names from 32 characters to
   128 characters. (udev based disk names might be very long nowadays)
 * Fixed the after-sb-0pri policies discard-younger/discard-older
 * When the resync speed was changed to a considerably lower
   value while resync was running, it could happen that we erronously
   decremented the local_cnt too often.
 * Fixed a bug in the UUID code, that caused drbd to erronously report
   a split brain after changing the role of a diskless node multiple
   times.
 * Both nodes ended up in SyncSource when a state change occured on
   one node while the disk state on the other node is in the temporal
   'Negotiating' state. Fixed got fixed.
 * drbdmeta's parse/scan code for meta-data dumps got fixed for
   huge devices, and an improved error reporting.
 * drbdadm had difficulties with option values of type string that
   start with an digit. Fixed.
 * Fixed a code path that should it make possible to unload the
   module even in case some of our receive buffers leaked.
 * The usermode helper program is now user definable. It is no
   longer hardcoded set to 'drbdadm'.

http://www.linbit.com/support/drbd-8.0.5/
http://oss.linbit.com/drbd/8.0/drbd-8.0.5.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0.5/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
