Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <3f00fdd6-59d7-ea74-980a-8404805a4de4@johannesthoma.com>
Date: Mon, 18 Nov 2019 17:10:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 0.10.3: fixed logging
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

Dear DRBD and WinDRBD community,

There is a quick fix release for WinDRBD: 0.10.3.
It fixes logging. Starting from 0.10.0 the syslog_ip
was hardcoded to an IP address which probably does
not exist on your setup. With WinDRBD 0.10.3 logging
to localhost should work again as expected.

To start the log server, do

	sc start windrbdlog

as Administrator.  The kernel log messages then should
appear in the file

	C:\windrbd\windrbd-kernel.log

Also note that disk devices (those without an explicit
mount point) will only work if you installed the
Virtual Bus device as explained in the windrbd-boot
techguide (chapter 5.9 - Install the WinDRBD bus device).
This techguide can be downloaded from

	https://downloads.linbit.com/

As always a signed driver and packaged utilities can be
downloaded from the Linbit homepage at:

https://www.linbit.com/en/drbd-community/drbd-download

If you just want to test WinDRBD (and not develop for it)
using Linbit's signed EXE is the recommended way to
obtain it (rather than build it from the sources).

As always, any feedback is highly appreciated,

Best wishes,

- Johannes

