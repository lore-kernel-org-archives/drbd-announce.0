Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 171124205F3
	for <drbd-announce@lists.linbit.com>;
	Wed, 17 Feb 2021 17:18:34 +0100 (CET)
Received: by mail-wr1-f47.google.com with SMTP id t15so17936801wrx.13
	for <drbd-announce@lists.linbit.com>;
	Wed, 17 Feb 2021 08:18:34 -0800 (PST)
Date: Wed, 17 Feb 2021 17:18:33 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210217161833.GE2233@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox v5.1.5
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

Dear PVE/LINSTOR/DRBD users,

after I had the pleasure to announce drbdd written in a modern language,
I today can also announce an update for the plugin written in something
that can barely be considered a programming language at all...

The new version of the plugin supports multiple LINSTOR controllers,
separated in the config file by a ','. It will try to reach one IP after
the other until it gets a successful answer from one of the controllers.

On its own this is not very useful, but if this is combined with drbdd's
promoter plugin[1], this allows easy LINSTOR controller HA, where the
resource that hosts the contoller DB is mounted and the controller
service gets started by drbdd.

We will document such HA setups after drbdd v0.1.0 gets released
(currently there is rc1), this is a preparation release for that.

https://github.com/LINBIT/linstor-proxmox/commit/6e8d13533b5d94c23a25fa60f116bf063477245b
https://www.linbit.com/downloads/connectors/linstor-proxmox-5.1.5.tar.gz

Regards, rck

[1] https://github.com/LINBIT/drbdd/blob/master/src/plugin/promoter.md
