Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 47B0A4201D7
	for <drbd-announce@lists.linbit.com>;
	Tue, 16 Apr 2024 16:10:55 +0200 (CEST)
Received: by mail-ej1-f49.google.com with SMTP id
	a640c23a62f3a-a51ddc783e3so556008366b.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 16 Apr 2024 07:10:55 -0700 (PDT)
Message-ID: <52ca453d-b662-4020-ae15-00d3b99234e2@linbit.com>
Date: Tue, 16 Apr 2024 16:10:53 +0200
MIME-Version: 1.0
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.12 released
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Dear WinDRBD users,

Today we released WinDRBD 1.1.12, a release mainly target at users that
use fencing instead of quorum in order to avoid split brain. There are
3 patches to DRBD included (one of which even made it into the
upstream drbd-9.1 and drbd-9.2 branches of DRBD) as well as
several small fixes in the WinDRBD code. If you are not using
fencing there is no urgent need to upgrade.

The changelog, as always, are described in the WHATSNEW.md file
of the WinDRBD repository:

https://github.com/LINBIT/windrbd/blob/windrbd-1.1/WHATSNEW.md

An installer suitable for evaluating WinDRBD can be downloaded from
the LINBIT homepage:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

LINBIT clients can download an installer suitable for production usage
from the packages.linbit.com repository:

https://packages.linbit.com/exe/windows/drbd-9/

(an API key is required).

As always, all the best and happy hacking :)

- Johannes

