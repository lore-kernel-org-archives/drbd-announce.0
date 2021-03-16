Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 24A8442938D
	for <drbd-announce@lists.linbit.com>;
	Tue, 16 Mar 2021 10:06:34 +0100 (CET)
Received: by mail-wr1-f41.google.com with SMTP id v11so7017882wro.7
	for <drbd-announce@lists.linbit.com>;
	Tue, 16 Mar 2021 02:06:34 -0700 (PDT)
Date: Tue, 16 Mar 2021 10:06:32 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210316090631.GB10854@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbdd v0.2.0-rc.1
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

This is RC1 of the upcoming 0.2.0 release of drbdd. The main new feature
is the "user mode helper" plugin, which allows users to define simple
filters for DRBD state changes that are then matched. A match triggers
the execution of a user defined script. Information is passed via
environment variables.

A quick example for a rule that sends an alert whenever a resource gets
diskless looks like this:

[[umh.device]]
name = "now Diskless"
command = "sms.sh $(uname -n): $DRBD_RES_NAME $DRBD_NEW_DISK_STATE"
event-type = "Change"
old.disk-state = { operator = "NotEquals", value = "Diskless" }
new.disk-state = "Diskless"

I think the umh plugin has great potential to remove many hackish
scripts that did some kind manual DRBD state tracking.

There is extensive documentation on rules, types, environment
variables,.. [1,2]. This brings me to the second, not that exciting
change since 0.1.0: drbdd now has proper man pages for the daemon, the
config, and all plugins [3].

Please test. As usual, if there is no feedback that would require
changes, I will release the final version in about a week from now.

Eventually this will also replace the helper scripts that are currently
triggered by the kernel, but that will require more work on the kernel
and low level user space parts.

[1] https://github.com/LINBIT/drbdd/blob/master/src/plugin/umh.md
[2] man drbdd.umh
[3] drbdd(1), drbdd.toml(5), drbdd.promoter(5), drbdd.umh(5),
drbdd.debugger(5)

Regards, rck
GIT: https://github.com/LINBIT/drbdd/releases/tag/v0.2.0-rc.1
PGKS:
https://transfer.sh/4szld/drbdd_0.2.0-rc.1-1_amd64.deb
https://transfer.sh/2AXWl/drbdd-0.2.0-rc.1-1.x86_64.rpm
c508064d0a0af8ab9a7066fce6a0a8bb9529e2e2e0d9bb57550841ad99d8f010
./drbdd_0.2.0~rc.1-1_amd64.deb
56cba78701b0f2fd07b16d939e89e37aaa3b01ca72de5fc50bac367c52f3b2bf
./drbdd-0.2.0~rc.1-1.x86_64.rpm
