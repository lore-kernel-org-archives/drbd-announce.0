Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 386711011B96
	for <drbd-announce@lists.linbit.com>;
	Fri, 20 Jul 2018 16:25:39 +0200 (CEST)
Received: by mail-wm0-f51.google.com with SMTP id s14-v6so10053641wmc.1
	for <drbd-announce@lists.linbit.com>;
	Fri, 20 Jul 2018 07:25:39 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 20 Jul 2018 16:17:36 +0200
Message-ID: <14324274.gieGNbbc9o@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.15-0rc1
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

Another DRBD release is coming up. Please help in testing the release
candidate.

This release contains one important fix for users that use DRBD9
in combination with LINSTOR or DRBDmanage and intend to do live
migrations of VMs.

What is in for everyone is the performance optimization, giving the
users of NVMe SSDs up to 30% more IOPs.

9.0.15-0rc1 (api:genl2/proto:86-114/transport:14)
=2D-------
 * fix live migrate of VMs on DRBD when migrated to/from diskless
   nodes; before that fix a race condition can lead to one of the nodes
   seeing the other one as consistent only
 * fix an IO deadlock in DRBD when the activity log on a secondary runs ful=
l;
   In real world this was very seldom triggered but can be easily reproduced
   with a workload that touches one block every 4M and writes them all in
   a burst
 * fix hanging demote after IO error followed by attaching the disk again
   and the corresponding resync
 * fix DRBD dopping connection after an IO error on the secondary node
 * improve details when online changing devices from diskless to with disk =
and
   vice versa. (Including peers freeing bitmap slots)
 * remove no longer relevant compat tests
 * expose openers via debugfs; that helps to answer the question why does
   DRBD not demote to secondary, why does it give tell me "Device is held
   open by someone"
 * optimize IO submit code path; this can improve IOPs up to 30% on a system
   with fast backend storage; lowers CPU load caused by DRBD on every workl=
oad

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.15-0rc1.tar.gz
https://github.com/LINBIT/drbd-9.0/commit/fc844fc366933c60f7303694ca1dea734=
dcb39bb

=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.



