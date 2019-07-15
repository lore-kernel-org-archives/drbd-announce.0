Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 02307101E043
	for <drbd-announce@lists.linbit.com>;
	Mon, 15 Jul 2019 14:08:58 +0200 (CEST)
Received: by mail-wm1-f43.google.com with SMTP id v15so14917421wml.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 15 Jul 2019 05:08:58 -0700 (PDT)
Date: Mon, 15 Jul 2019 14:08:57 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20190715120857.ne25hsvnnsjcerjb@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox-3.0.4 (+APIVER 2)
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

Dear Proxmox users,

Today I released v3.0.4. This should fix a bug[1] where volumes have no
longer been visible in the GUI. All users with a recent LINSTOR client
should update.

There is now a RC on github master (not in 3.0.4), that finally
updates/implements the functions for Proxmox APIVER 2 [2].

Please help testing the current master. Just overwrite
/usr/share/perl5/PVE/Storage/Custom/LINSTORPlugin.pm and
systemctl restart pvedaemon

Next steps:
- Switch from using the LINSTOR-client to using LINSTOR's REST-API
- See if it works (does not look like it?) for PVE6.

Regards, rck

[1] https://github.com/LINBIT/linstor-proxmox/issues/20
[2] https://github.com/LINBIT/linstor-proxmox/issues/15

https://www.linbit.com/en/drbd-community/drbd-download/
https://github.com/LINBIT/linstor-proxmox
