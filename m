Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: annoucements@drbd.org
Date: Fri, 27 Aug 2004 15:31:58 +0200
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Message-Id: <200408271531.59546.philipp.reisner@linbit.com>
Cc: 
Subject: [DRBD-announce] drbd-0.7.3.tar.gz
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

Only minor things changes. Maybe you want to upgrade your 0.7.2 installation
sometimes to 0.7.3, but there is no need to hurry.

0.7.3 (api:75/proto:74)
-----
 * Fixed minor bugs in the handling of the generation counters.
 * prevent possible in-kernel buffer overflow in drbd_proc.c
 * Fixed debian's postinst script to create /dev/drbd? instead of /dev/nb?
 * drbd status:
   be nice to heartbeat, include "OK" in output.
 * added FullSync meta data flag to read/write gc.pl
 * make the RHEL3 happy (page_count no longer in mm.h, but in mm_inline.h)
 * [Patch by Pavel Semerad]. Also use the drbd_devfs_name on Linux-2.4.x
 * fix missing dependencies on drbd_config.h

Please note the new download URL:

http://oss.linbit.com/

No account creation necessary any longer!

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
