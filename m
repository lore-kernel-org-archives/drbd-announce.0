Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 4D98510575B6
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 Jan 2018 13:56:50 +0100 (CET)
Received: by mail-wr0-f169.google.com with SMTP id 100so452258wrb.7
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 Jan 2018 04:56:50 -0800 (PST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 23 Jan 2018 13:50:35 +0100
Message-ID: <2159919.W1ZdbrFrnb@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.12
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

Lately we had a to do more releases than we like. This time we became aware
of an issue that can cause that a drbd-resource can not be removed from
the DRBD kernel driver. We decided that this bug is so annoying that we need
to release an update immediately.

It is a race condition so, it does not trigger reliably when you intend
to reproduce it. Currently this issue does not trigger on REHL/CentOs
systems at all.

In case you experience this issue, sometimes (depending on the value
of that counter) it is possible to down an affected resource by this
command:

drbdsetup down RESNAME </dev/drbdX

This sometimes works, because your shell opens the device for read-only
before executing the command. That might bring the open-count to a value
of 0. 

9.0.12-1 (api:genl2/proto:86-112/transport:14)
--------
* Fix a race condition in the device_open code path that can cause an
  internal counter to go negative; It only triggered on Ubuntu/Debian
  systems since the udev there uses FMODE_NDELAY when opening the
  devices; The effect was that such a device fails attempts to remove it

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.12-1.tar.gz
https://github.com/LINBIT/drbd-9.0/releases/tag/drbd-9.0.12


best regards,
 Phil
