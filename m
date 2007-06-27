Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (office.linbit [86.59.100.100])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id D6E1B2E07893
	for <drbd-announce@lists.linbit.com>;
	Wed, 27 Jun 2007 17:31:17 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 27 Jun 2007 17:31:16 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706271731.16625.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-8.0.4.tar.gz
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

The list got long, most of the issues are *really* hard to trigger,
or triggered by unusual usage. But nevertheless, it is a good idea
to upgrade.


8.0.4 (api:86/proto:86)
--------
 * Fixed an OOPS in case you do an invalidate on an diskless device. And
   made invalidates on diskless devices possible by using drbdmeta.
 * Fix for an possbile OOPS in drbd_al_to_on_disk_bm().
 * Fix for a possible OOPS. This issue was triggered when you do an
   attach very soon (ms) after the disk was dropped.
 * Fix for a race condition in receive_state(). Symptom was that the
   resync stalls at 100% on a node.
 * Some block devices fail requests by clearing the BIO_UOTODATE flag
   (that is ok), but not returning an error (that is strange).
   We now deal with that correctly.
 * Drbdadm's parser will now reject config files with resources with
   missing "on" sections. (Instead of segfaulting)
 * Init script continues in case the setup of a single resource failes.
 * Improvements to the "drbdsetup events" interface: Updates about
   the resync progress and initial state of all devices if called with "-a".
 * The benchmark/dm program can now also create curstom bandwith loads.

http://www.linbit.com/support/drbd-8.0.4/
http://oss.linbit.com/drbd/8.0/drbd-8.0.4.tar.gz
http://svn.drbd.org/drbd/tags/drbd-8.0.4/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
