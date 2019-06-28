Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id C28981011BFF
	for <drbd-announce@lists.linbit.com>;
	Fri, 28 Jun 2019 11:37:06 +0200 (CEST)
Received: by mail-wm1-f43.google.com with SMTP id x15so8418326wmj.3
	for <drbd-announce@lists.linbit.com>;
	Fri, 28 Jun 2019 02:37:06 -0700 (PDT)
Date: Fri, 28 Jun 2019 11:37:04 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com
Message-ID: <20190628093704.fk4o6qifdoish4li@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: drbd-announce@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.19-0rc2
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

since rc1 there have been several fixes. All in all a bit more changes
than expected. Note that especially the fixed resync bugs existed for a
longer time and have not been introduced with the 9.0.19 series. Please
test!

9.0.19-0rc2 (api:genl2/proto:86-115/transport:14)
--------
 * quorum: no tie-breaker for 0 voters
 * quorum: ignore node when also no-read node
 * Fix detection of unstable resync
 * Fix multiple sync
 * Fix noisy UUID warnings when actually expected

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.19-0rc2.tar.gz
https://github.com/LINBIT/drbd-9.0/commit/31273b1cc1861486afddff12183c297fdca9a2c7

Regards, rck
