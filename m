Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7E58142040F
	for <drbd-announce@lists.linbit.com>;
	Mon, 21 Sep 2020 11:49:46 +0200 (CEST)
Received: by mail-wr1-f42.google.com with SMTP id e16so12035620wrm.2
	for <drbd-announce@lists.linbit.com>;
	Mon, 21 Sep 2020 02:49:46 -0700 (PDT)
Date: Mon, 21 Sep 2020 11:48:44 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20200921094844.GG2145@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.14.1
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <https://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <https://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi DRBD users,

this bugfix release fixes a minor bug were the events2 stream did not
contain updates for "resync done" if called without '--statistics'. I
guess there are not too many users that even use the events2 stream, but
this information is also used by LINSTOR, so some users might have seen
no progress while the resync was actually executed/finished. The
regression was introduced with 9.14.0.

Regard, rck

PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
TAR: https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.14.1.tar.gz
GIT: https://github.com/LINBIT/drbd-utils/releases/tag/v9.14.1

9.14.0
--------
 * events2: fix regression to always print resync done
