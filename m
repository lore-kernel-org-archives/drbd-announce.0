Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0A8F9420619
	for <drbd-announce@lists.linbit.com>;
	Wed, 17 Feb 2021 16:40:43 +0100 (CET)
Received: by mail-wm1-f45.google.com with SMTP id x16so2492485wmk.3
	for <drbd-announce@lists.linbit.com>;
	Wed, 17 Feb 2021 07:40:43 -0800 (PST)
Date: Wed, 17 Feb 2021 16:40:40 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210217154040.GD2233@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbdd v0.1.0-rc.1
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

Dear DRBD-users,

Today we announce a new component in the DRBD ecosystem, which we call
"drbdd". drbdd is a daemon that monitors changes on DRBD resources and
then triggers actions based on such changes (e.g., when a disk goes from
UpToDate to some other state, or a resource might be promoted,...).

One of the key features is that drbdd consists of a core and multiple
plugins that accomplish different jobs. The core spawns these plugins
and there can even be multiple instances of the same plugin.

A very quick overview about the existing and planed plugins:

- debugger
The most trivial plugin that just prints all the state changes to the
logger.  Never the less a good starting point especially for developers

- promoter
This is a more interesting plugin that detects if a resource might be
promoted, and if so starts user defined services. If the resource looses
quorum, services are stopped. If you combine that for example with a
systemd mount service and the linstor-controller.service, you trivially
get a form of HA without the complexity of a pacemaker setup, all
handled by drbdd and DRBD quorum.

- umh
This is a plugin we discussed internally and the one which I'm going to
work on next. It will replace the usermode helpers as you know them
(i.e., no more triggered from the kernel). More importantly this will
also allow users to define their own rules besides the handlers we
provided.

There are many more plugins we envision for this. Examples can include
all kind of monitoring like, but not limited to, a Prometheus endpoint.

An architecture overview and further documentation, especially about the
plugins can be found here:
https://github.com/LINBIT/drbdd

Public packages can be found here:
https://packages.linbit.com/rck/drbdd_0.1.0~rc.1-1_amd64.deb
https://packages.linbit.com/rck/drbdd-0.1.0~rc.1-1.x86_64.rpm

Please note that this *requires* the latest drbd-utils (9.16.0).

Please test. Eventually - at least after umh got implemented - this will
be shipped basically with every DRBD installation. The config file
format and the input for plugins should be fixed (we will see :)), so
this is a good time to make this public.

Regards, rck
