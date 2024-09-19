Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 462124201EE
	for <drbd-announce@lists.linbit.com>;
	Thu, 19 Sep 2024 14:08:29 +0200 (CEST)
Received: by mail-lj1-f169.google.com with SMTP id
	38308e7fff4ca-2f74e468baeso8688801fa.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 19 Sep 2024 05:08:29 -0700 (PDT)
Date: Thu, 19 Sep 2024 14:08:24 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: drbd-reactor v1.5.0-rc.1
Message-ID: <ZuwUOOQZS3SROVGm@arm64>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

this is the first RC of the upcoming drbd-reactor version 1.5.0. There
are smaller fixes and improvements all over the place, the important
changes happened in startup of the daemon and the promoter plugin:

We have customers that have hundreds of promoter resources managed by
drbd-reactor. So far every instance on startup wrote their systemd
target units and then called `systemctl daemon-reload`. That takes some
time and in sum systemd might kill the drbd-reactor service because it
did not start in time. We now call daemon-reload only once, and we
improved sd_notify(3) communication between reactor and systemd. Startup
with lots of plugins should now be faster and timeouts should no longer
be a problem.

Please test, if we don't find any bugs I will do the final release in
about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/49a7b49b1a3278356a75e7409f374c3b61e6660c
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.5.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Lars Ellenberg ]
* promoter: fix Description override to use %N not %p

[ Roland Kammerer ]
* doc: fix start-until procedure
* promoter: check for '/' in service names
* ctl: improve evict error message
* build: add sbom files to tarballs
* build: rm packaging targets
* promoter: add trace logging around adjust
* promoter: systemctl daemon-reload only once
* promoter: use EXTEND_TIMEOUT_USEC in sd_notify
* promoter: use Stdio::null() for systemctl commands
* all: stop using plugin::system and use Command
* daemon: use Stdio::null() for stdin
* systemd: improve notify
