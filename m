Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A380A42006B
	for <drbd-announce@lists.linbit.com>;
	Sat, 20 Feb 2021 17:40:58 +0100 (CET)
Received: by mail-wr1-f49.google.com with SMTP id v1so14204465wrd.6
	for <drbd-announce@lists.linbit.com>;
	Sat, 20 Feb 2021 08:40:58 -0800 (PST)
Date: Sat, 20 Feb 2021 17:40:56 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210220164056.GG2233@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbdd v0.1.0-rc.2
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

Dear DRBD users,

this is RC2 of drbdd. This contains minor changes only, so you can keep
using/testing the binaries from RC1[1].

This release concerns mainly packaging and switching the logging library
to allow proper PPA packaging, as the original library was not packaged
for Ubuntu Focal. In the PPA we will only provide packages for Focal.
Packages for older Ubuntu releases will be available in our customer
repositories after the first final release. There are now also source
tarballs available.

Regards, rck

[1]
https://lists.linbit.com/pipermail/drbd-user/2021-February/025832.html

PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
GIT:
https://github.com/LINBIT/drbdd/commit/41b34a2ded70db570b06a246b546f988f68565f3
TAR: https://www.linbit.com/downloads/drbd/utils/drbdd-0.1.0-rc.2.tar.gz
