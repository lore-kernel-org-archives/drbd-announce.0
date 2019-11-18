Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 459AD4203D1
	for <drbd-announce@lists.linbit.com>;
	Mon, 18 Nov 2019 09:35:17 +0100 (CET)
Received: by mail-wm1-f53.google.com with SMTP id u18so16393735wmc.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 18 Nov 2019 00:35:17 -0800 (PST)
Date: Mon, 18 Nov 2019 09:34:15 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20191118083415.GH1306@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox-4.1.1
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

Dear PVE-users,

Today we release v4.1.1, which fixes a bug in storage capacity reporting
(cli & web UI). This bug should only trigger for users with multiple
storage pools configured on DRBD.

Thanks to Andreas for providing a detailed bug report and testing the
fix.

Packages for PVE should be in our public repos soon:
https://docs.linbit.com/docs/linstor-guide/#ch-proxmox-linstor

Tarball & source:
https://www.linbit.com/downloads/connectors/linstor-proxmox-4.1.1.tar.gz
https://github.com/LINBIT/linstor-proxmox/

Regards, rck
