Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 9110D1011C03
	for <drbd-announce@lists.linbit.com>;
	Mon,  8 Jul 2019 17:16:02 +0200 (CEST)
Received: by mail-wm1-f47.google.com with SMTP id w9so252676wmd.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 08 Jul 2019 08:16:02 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 08 Jul 2019 17:09:49 +0200
Message-ID: <1580997.ZVVbd7a1Am@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.19-1
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

drbd-9.0.19 final is out!

This release mainly contains fixes all over the board. The only new
feature is that it allows to mark a remote as "write only". I.e.
DRBD will never try to ship read requests to it. That is of course
usefull for DR purposes.

As a side note, the changes in this release where mainly written by
Joel, Christoph and Roland. We are happy that the DRBD core team is
growing beyond Lars and Phil.


9.0.19-1 (api:genl2/proto:86-115/transport:14)
=2D-------
 * check on CAP_SYS_ADMIN instead of CAP_NET_ADMIN for certain operations
 * fix detection of unstable resync
 * fix possible stuck resync when resync started from an other secondary
   and later continued from a primary
 * fix NULL dereference with disk-timeout enabled; was introduced in 9.0.9
 * retry connect when own current UUID changes during UUID exchange
 * fix quorum tie-breaker diskless logic for settings other than "majority"
 * disable quorum tie-breaker for 0 voters
 * fix dax_direct_access() error return check
 * fix resync stuck at near completion; bug was intorduces with 9.0.17
 * unblock IO when on-quorum-lost policy is changed (suspend -> io-error)
 * introduce allow-remote-read configuration option; set it to "no" for
   DR links you only want to write, but never read
 * only complain about UUID changes during initial handshake

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.19-1.tar.gz
https://github.com/LINBIT/drbd-9.0/releases/tag/drbd-9.0.19-1
=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.



