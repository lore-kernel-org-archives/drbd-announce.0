Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: annoucements@drbd.org
Date: Fri, 16 Jul 2004 10:56:48 +0200
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Message-Id: <200407161056.49093.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.0.tar.gz
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

This opens a new series of stable releases.

0.7.0 (api:74/proto:74)
---
  Drbd-0.7 was actually forked off from drbd-0.6.1 (actually -pre18). 

  *) Complete new way of doing resynchronisation. Does no longer need
     to do tricks with the nice value, and delivers very good performace.
  *) Decoupling of role assignment (primary/secondary) from the direction
     of resynchronisation. (Necessary for primary/primary)
  *) All "ack" and "ping" packets now go through the msock. 
     (Prerequisite for primary/primary)
  *) Reworked a lot of internals to work with sector_t instead of
     blocknumbers. DRBD works now with XFS, and will be complete
     immune to changes in the block size.
  *) Reworked the tl_ code, the user no longer has to specify the size
     for a preallocated transfer-log.
  *) Improved metadata; Ao the device size is now stored in metadata,
     users no longer need to configure it.
  *) Online resizing via "drbdsetup resize"
  *) Resynchronisation groups "drbdsetup syncer -g"
  *) New (very short!) sys-v init scripts, new userland tool "drbdadm"
  *) Changes to the way we allocate memory. We want to survive hard OOM
     situations. (partially done, partially ongoing work) 
  *) Implemented the Activity-Log and the persistent bitmap.

Of course there are a few things that are not as they should be, 
the first thing that comes to mind is that a comprehensive 
upgrade guide is still missing.

Here is the WARNING for the not so experienced users:

********************************************************************
 Upgrading from drbd-0.6.x to drbd-0.7.x is not trivial, and should
 only be done if you _really_ _understand_ how drbd-0.7.x stores 
 its metadata.
********************************************************************

 We will add the missing upgrade guide, updated .spec files, missing
 translations (this is a hint to people who can do translations) etc...
 in subsequent releases.

The important thing is that from now on roling upgrades will be possible
for all drbd-0.7.x releases.

BTW, next week I am on holiday, and there is no internet on 
     the sailing boat :)

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
