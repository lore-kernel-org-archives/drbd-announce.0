Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id A0BD81013806
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Aug 2018 14:36:57 +0200 (CEST)
Received: by mail-wm0-f41.google.com with SMTP id f21-v6so12117053wmc.5
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Aug 2018 05:36:57 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 14 Aug 2018 14:36:53 +0200
Message-ID: <4558613.lYSHrUl6ML@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.15
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

This is an upgrade ever drbd-9 user should follow. It has two important
fixes in the areas of=20

* handling IO errors reported by the backing device

  handling of IO errors on the backend was completely broken since=20
  drbd-9.0 including the recovery options like replacing a failed
  disk. When the disk was replaced even worse it was possible that
  DRBD would read from the new disk before the full sync finished.
  All fixed now, but very embarrassing.

* correctly handle UUIDs in case of live-migration

  That was the root cause for various strange behavior. E.g. a node
  considering some other as not up-to-date while the peer considers
  itself as up-to-date.

The goody of the release is that the submit code path was optimized
a bit, and that gives up to 30% increase (depending on CPU model and
performance of the backing device) in IOPs.

A lot of effort was spend to write more tests for the drbd9 test suite
( https://github.com/LINBIT/drbd9-tests ). DRBD-8.4 had its own, which
was more complete at its time, but now it is overdue to have a testing
coverage at least as good for the drbd-9 code base.

Apart form wok on the testsuite we will continue to put effort into
optimizing the IO submit code path. Very fast NVMe devices keep the
pressure on us to be able to fully utilize them when used as backing
device for DRBD.

Note: We will update the PPA on Thursday (Aug 16). Sorry for the delay
      (vacations and a bank holiday are the reasons)

9.0.15 (api:genl2/proto:86-114/transport:14)
=2D-------
 * fix tracking of changes (on a secondary) against the lost disk of a
   primary and also fix re-attaching in case the disk is replaced (has
   new meta-data)
 * fix live migrate of VMs on DRBD when migrated to/from diskless
   nodes; before that fix a race condition can lead to one of the nodes
   seeing the other one as consistent only
 * fix an IO deadlock in DRBD when the activity log on a secondary runs ful=
l;
   In the real world, this was very seldom triggered but can be easily
   reproduced with a workload that touches one block every 4M and writes
   them all in a burst
 * fix hanging demote after IO error followed by attaching the disk again
   and the corresponding resync
 * fix DRBD dropping connection after an IO error on the secondary node
 * new module parameter to disable support for older protocol versions,
   an in case you configured peers that are not expected to connect it
   might have positive effects because then this node does not need to
   assume that such peer is ancient
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
 * compat for v4.18 kernel

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.15-1.tar.gz
https://github.com/LINBIT/drbd-9.0/releases/tag/drbd-9.0.15

best regards,
 Phil
=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.



