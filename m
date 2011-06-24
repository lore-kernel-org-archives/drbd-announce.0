Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 24 Jun 2011 16:26:57 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201106241626.57579.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.4.0rc3.tar.gz
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

Since 8.4 is in freeze mode, developers start to tink about drbd-9.
This thinking process causes a bit of backscatter to 8.4, but since
8.4 is not yet released, and if this backscatter will make life
easier in the future it is a good thing.

  So, the most prominent changes, are to make the future transition
  from drbd-8.4 to drbd-9 a smooth experience.

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.4.0rc3 (api:genl1/proto:86-100)
--------
 * Renamed drbdsetup commands: new-connection -> new-resource,
   del-connection -> del-resource and xml -> xml-help
 * Renamed a configure option: --with-legacy-connector -> --with-legacy_utils
 * Renamed drbdadm options --force to --yes
 * drbdadm now passes drbdsetup options through, without the cumbersome
   "--" separator. They need to be given after the command on the command
   line. I.e. "drbdadm primary r0 --force". This is enabled for: attach, 
   disk-options, new-options, disconnect, resource-options, primary and 
   new-current-uuid.
 * Changes from the 8.3 branch up to 8.3.11rc3
 * Code cleanups ; Removal of compatibility code for kernels older than 2.6.18

http://git.drbd.org/?p=drbd-8.4.git;a=tag;h=drbd-8.4.0rc3
http://oss.linbit.com/drbd/8.4/drbd-8.4.0rc3.tar.gz

Best,
 Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
