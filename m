Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: annoucements@drbd.org
Date: Thu, 9 Sep 2004 23:13:44 +0200
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Message-Id: <200409092313.44641.philipp.reisner@linbit.com>
Cc: 
Subject: [DRBD-announce] drbd-0.7.4.tar.gz
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

I had the chance to install DRBD-0.7.3 on a SLES 8 system, and in
the progress I discovered a quite bad problem with Linux-2.4.x
and HIGHMEM. (This problem with HIGHMEM on Linux-2.4.x causes
DRBD to  drop connection and reconnect quite often, which in 
turn uncovered an other problem with caused the resync
progress to starve). -- BTW, all this happenden because a 
paying custromer asked us to install drbd-0.7.x on the
Linux-2.4.x based system.

The other important fix is the support of devices bigger than
2TB.

So, you want to upgrade to this release, if you have huge
devices, or if you want to run on Linux-2.4.x with HIGHMEM.

Otherwise, this release offers nothing new for you.

0.7.4 (api:76/proto:74)
-----
 * Fixed a critical bug with Linux-2.4.x and HIGHMEM!
 * Fixed a bug that only showed up with the HIGHMEM problem on 
   Linux-2.4.x -> It caused the resync process to starve.
 * The drbd.spec file now creates /dev/drbd in the post-install stage.
 * Fixed support for more than 2TB storage. Now DRBD supports up to
   3.99TB storage. It will also tell you, that it is not supported if 
   you try to set up a bigger device.
 * Debian's build rules file now knows about the adjust_drbd_config_h.sh
   file.
 * DRBD_DISABLE_SENDPAGE available in drbd_config.h

-Philipp

-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
