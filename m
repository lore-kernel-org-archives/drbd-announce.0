Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 80A624201DC
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 Apr 2022 11:13:37 +0200 (CEST)
Received: by mail-wm1-f46.google.com with SMTP id
	1-20020a05600c248100b00393fbf11a05so60637wms.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 Apr 2022 02:13:36 -0700 (PDT)
Date: Tue, 26 Apr 2022 11:13:35 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Yme3v51RJ+pIxn63@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] PPA transition to Jammy
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

Dear PPA users,

As some might know we have a PPA providing the DRBD9 stack[1]. From
today I started building new releases (drbd-utils and linstor-server RC
as of later today) for Focal and Jammy, but no longer for Bionic.

I will build everything we already have (linstor client,
drbd-reactor,...) for Jammy in the next days. But there is now a period
where new stuff does no longer show up in Bionic, and Jammy is not yet
complete. Jammy should be complete at the end of the week, I will post
an update here.

I will delete all Bionic packages in about a month from when Jammy is
complete. This deletion only affects the PPA, our customers of course
still get support for all officially supported Ubuntu releases.

Regards, rck

[1] https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/
