Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 4FAB41013836
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Oct 2018 11:38:37 +0200 (CEST)
Received: by mail-wm1-f52.google.com with SMTP id y140-v6so1513450wmd.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Oct 2018 02:38:37 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 25 Oct 2018 11:31:04 +0200
Message-ID: <12043119.jtIGZ2XMAb@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.16
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

=46inal. No changes relative to rc1.=20

What really made us to release now, is fixing the regression introduced with
9.0.15. It was probably not triggered by many parties, because you can only
trigger it if you have requests in flight in excactly the moment a
timer comes by to check if the network timeout expired.

The distributed connect loop was never seen in the wild, maybe only=20
our test suite ever reproduced it.

The fixes to the quorum code ensure that recovery works as expected
after a primary node lost quorum.

9.0.16-1 (api:genl2/proto:86-114/transport:14)
=2D-------
 * Fix regression (introduced with 9.0.15) in handling request timeouts;
   all pending requests always considered as overdue when the timer function
   was executed; this led to false positives in detecting timeouts
 * Fix a possible distributed loop when establishing a connection
 * Fix a corner case in case a resync "overtakes" an other one
 * Fix clearing of the PRIMARY_LOST_QUORUM flag
 * Check peers (to ensure quorum is not lost) before generating new current
   UUID after loosing a node
 * In case the locally configured address of a connection is not
   available keep on retrying until it comes back

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.16-1.tar.gz
https://github.com/LINBIT/drbd-9.0/releases/tag/drbd-9.0.16-1

=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.



