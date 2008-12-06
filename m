Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Sat, 6 Dec 2008 12:21:44 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200812061221.44669.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.0rc2.tar.gz
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

After a week of heavy work on DRBD we have fixed two regressions,
and three bugs that were in the code base longer, updated the 
documentation (user's guide and man pages...). We feel pretty
confident that this will become the final 8.3.0 in a few days.

8.3.0rc2 (api:86/proto:86-89)
--------
 * Fixed a bug in the new epoch code (introduced with 8.2.7).
   Might cause crash at reconnect after connection loss during heavy IO
   (Bugz 160)
 * Fixed a bug that could lead to a crash when detaching/attaching
   on the primary under heavy IO (Bugz 171)
 * Fixed the verify-alg and csums-alg negotiating in case the user
   configures different ones on this two nodes (reg)
 * Fixed online resize (reg)
 * Fix for stack smashing in drbdmeta
 * Renamed 'state' to 'role'
 * Added support for stacked resources to the bash completion stuff
 * Added missing documentation (manpages)

http://oss.linbit.com/drbd/8.3/drbd-8.3.0rc2.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.0rc2

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
