Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 3D44F14030
	for <drbd-announce@lists.linbit.com>; Fri, 18 Jun 2004 15:18:32 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 18 Jun 2004 15:18:31 +0200
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Message-Id: <200406181518.31657.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7_pre8.tar.gz
Sender: drbd-announce-admin@lists.linbit.com
Errors-To: drbd-announce-admin@lists.linbit.com
Reply-To: drbd-user@lists.linbit.com
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>
List-Id: Announcements of new releases and critical bugs found <drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce/>

Hi!

This has the codename Release-Candidate-1

What happened in the last month:

* Zero-copy IO disabled for now, since it cases data-corruption after
  resync. This will be investigated further...
* Bitmap code rewritten and seperated into own source file.
  In the progress a few bugs were discovered and fixed.
* New metadata flag MDF_FullSync to indicate that we need a full sync 
  next time. -> This makes sure that we never loose a full sync event,
  even if we crash during writing the bitmap.
* PARTNER_CONSISTENT flag, so we won't sync against or read from
  some inconsistent peer.
* sync handshake improved. detects split brain, detects inconsistent 
  local or peer data, detects whether full sync is neccessary.
* moved syncer handshake and detach ioctl into their own functions
* meta data is initialised as inconsistent, need full sync.
* Added the "on-disconnect stand_allone;" and the ko-count options.
* Some work on drbdsetup's man page.
* Added "drbddisk [resource] status" for integration with heartbeat.
* Improved module usage count.
* Included the CTH (cluster test harness) for automatic testing.

It behaves quite good in the automatic test suite by now, but
a few things remain to be done:

+ Find out how to use zero-copy-IO properly.
+ More work on the open issues with XFS ( seems to be realated
  to blocksizes != 4k)
+ Find and fix more bugs.

You can download it from LINBIT's download area as .tar.gz or
fetch it from CVS as tag "rel-0_7-pre8".

Happy testing !

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
