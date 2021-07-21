Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1BB8C42062F
	for <drbd-announce@lists.linbit.com>;
	Wed, 21 Jul 2021 11:03:14 +0200 (CEST)
Received: by mail-wm1-f54.google.com with SMTP id f190so863673wmf.4
	for <drbd-announce@lists.linbit.com>;
	Wed, 21 Jul 2021 02:03:14 -0700 (PDT)
Date: Wed, 21 Jul 2021 11:03:12 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210721090312.GS1286@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.4.1
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

this is version 0.4.1 of drbd-reactor. The main reason for this release
is to bump the dependency on drbd-utils 9.18.1, as
drbd-reactor::promoter uses the probably broken on SELinux systemd
templates, especially when used with OCF agents.

But that version also contains a nice feature: So far when the promoter
plugin was used for HA (like making a LINSTOR controller highly
available), after the primary failed (or even on intentional
switch over), other nodes detected that they might promote the DRBD
resource and raced to become Primary. An arbitrary node won. Now the
local disk state is taken into consideration and nodes wait some time to
give other nodes the chance to be faster and promote earlier. For
example a Diskless nodes waits longer than an UpToDate one. By default
that penalty ranges from 0 to 6 seconds, but the configuration can
contain a scaling factor that gets applied.

TGZ:
https://pkg.linbit.com/downloads/drbd/utils/drbd-reactor-0.4.1.tar.gz
GIT: https://github.com/LINBIT/drbd-reactor/releases/tag/v0.4.1
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changes:
* treewide: update download urls
* promoter: add sleep based on disk state
* systemd: add !nocluster condition
* systemd: add Documentation
* drbd-utils: bump to 9.18.1

Regards, rck
