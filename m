Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: annoucements@drbd.org
Date: Tue, 14 Dec 2004 17:15:17 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline
Message-Id: <200412141715.17086.philipp.reisner@linbit.com>
Cc: 
Subject: [DRBD-announce] drbd-0.7.7.tar.gz
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

Hi DRBD fellows,

This release (finally) fixes various issues, you would run
into with earlier releases, if you want to have a high
number of resources.

[ This was tested on an installation with 10 resources! ]

0.7.7 (api:77/proto:74)
-----
 * "drbdadm adjust [res...]" now does the calls to drbdsetup 
   in an improved order, first the disk config of all devices,
   then the syncer and net config last. With the old scheme
   drbdadm run in a timeout when setting up more than about 
   6 devices at once (startup script...).
 * New progress indication in the startup script.
 * Bugfix to a race that could cause a OOPS on a BUG() macro
   in mod_timer while starting resync. The more devices you have 
   the higher the probability to hit this race condition.
 * Fixed a bug in the sync-groups conde, that only showed up
   when you have more than 4 resources in your config. 
   The resync process was continued too early on the node in
   SyncTarget state.
 * Fixed a stupid typo in the range-check code, that was intoduced
   in 0.7.6. Drbdsetup allowed "max-buffers" to be in the range 
   from 32 to 32.
 * Makefiles are gcc-2.95 compatible again.

TGZ is at http://oss.linbit.com/drbd/0.7/drbd-0.7.7.tar.gz
SVN is at http://svn.drbd.org/drbd/tags/drbd-0.7.7/

RPMs for i386 and x86_64 are at https://www.linbit.com/support/drbd-0.7.7/
for subscribers to LINBIT's DRBD support.

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
