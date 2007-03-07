Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Date: Wed, 7 Mar 2007 13:43:22 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200703071343.22834.philipp.reisner@linbit.com>
Subject: [DRBD-announce] Attention drbd-8.0.x users, bug in connector
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

DRBD-8.x.y uses the connector to for the communication between
drbdsetup and DRBD's kernel code. The connector is included in the 
mainline kernel since linux-2.6.9 or so.

Unfortunately we found a bug in the connector code that might affect
all users of DRBD-8.x.y.

So far we where only able to trigger the bug on SMP machines, although
I think theoretically it is possible to hit the bug on an UP machine as well.

In case you hit it, you get an OOPS message like this in your
kernel log:

Mar  7 11:08:54 sour kernel: Unable to handle kernel NULL pointer dereference at 0000000000000000 RIP:
Mar  7 11:08:54 sour kernel: [<0000000000000000>] _stext+0x7fdff0e0/0xe0
Mar  7 11:08:54 sour kernel: PGD 76e2b067 PUD 71d70067 PMD 0
Mar  7 11:08:54 sour kernel: Oops: 0010 [1] SMP
Mar  7 11:08:54 sour kernel: CPU 0
[...]
Mar  7 11:08:54 sour kernel: Call Trace:
Mar  7 11:08:54 sour kernel: [<ffffffff881c0124>] :cn:cn_queue_wrapper+0x61/0x121
Mar  7 11:08:54 sour kernel: [<ffffffff881c00c3>] :cn:cn_queue_wrapper+0x0/0x121
Mar  7 11:08:54 sour kernel: [<ffffffff80247169>] run_workqueue+0x8f/0x137
Mar  7 11:08:54 sour kernel: [<ffffffff80243dcf>] worker_thread+0x0/0x14a
[...]

And all communication with DRBD in the kernel is cut off.

The bugfix was submitted to LKML for inclusion in the mainline kernel.
As of writing this mail, it has been signed off by the maintainer of
the connector, I expect it to arrive in the mainline kernel soon.

Here is the patch, in case you want to fix your system really soon.
http://lists.linbit.com/pipermail/drbd-dev/2007-March/000681.html

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
