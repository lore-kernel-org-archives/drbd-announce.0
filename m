Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E3AC9420323
	for <drbd-announce@lists.linbit.com>;
	Thu,  5 Jan 2023 12:55:33 +0100 (CET)
Received: by mail-wm1-f50.google.com with SMTP id
	fm16-20020a05600c0c1000b003d96fb976efso1111077wmb.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 05 Jan 2023 03:55:33 -0800 (PST)
Date: Thu, 5 Jan 2023 12:55:32 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <Y7a6tJfAbNAwivtJ@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.0.0-rc.2
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

this is RC2 of the upcoming version 1.0.0. There have not been any
reported issues with RC1, but I implemented a small feature for
drbd-reactorctl I'd like to squeeze in before the final release. I'm
again going to mainly quote the commit message. The new feature is a
"start-until" subcommand that is useful for promoter plugin controlled
resources.

This allows one to start a target until a certain unit. This might be useful
for debugging. For example assume you have a typical LINSTOR HA setup with a
start list of start = ["var-lib-linstor.mount", "linstor-controller.service"]

Then assume you want to debug the controller because it does not start up
successfully. Then one would run:

$ drbd-reactorctl disable --now linstor_db # on all nodes nodes

On one node that is used for debugging one would then execute
$ drbd-reactorctl start-until var-lib-linstor.mount linstor_db

Which would start the implicit drbd-promote service and the mount unit.  Then
one can manually start the linstor-controller service and debug it.  Afterwards
one should execute

$ systemctl stop linstor_db.target # to stop all start-until services
$ drbd-reactoctl enable linstor_db # on all nodes

The until argument can be a name like "var-lib-linstor.mount", or it can
be an index. Using an index is especially useful when dealing with OCF
agents that can have multi-line configuration options themselves. In the
above one could have written

$ drbd-reactorctl start-until 1 linstor_db

Why would one not just disable linstor_db (or even just stop drbd-reactor) and
then stop the linstor-controller.service? The problem there is that if you stop
that one service, systemd will also stop the target unit and therefore all the
other units as well including the one that handles DRBD device promotion. If
the snippet was not disabled then drbd-reactor would try to immediately
start the target again, that is it's job. If the snippet was disabled,
it would still be cumbersome to manually start the services. For example
one would need to know how the service is named that is implicitly
started that promotes the DRBD device. Only after that is started one
could start the var-lib-linstor.mount unit. With "start-until" we can
automate that and make the users life easier.

Please help to test the RC (the server parts from RC1 are far more
interesting). If we don't find any problems I will release the final
version in about a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/9d1721861ab616e0b0ea4027df9ab94bde6d40bc 
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.0.0-rc.2.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Roland Kammerer ]
* ctl: add start-until
