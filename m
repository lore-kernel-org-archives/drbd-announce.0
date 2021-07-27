Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 88C8E420218
	for <drbd-announce@lists.linbit.com>;
	Tue, 27 Jul 2021 10:42:15 +0200 (CEST)
Received: by mail-wm1-f47.google.com with SMTP id
	a192-20020a1c7fc90000b0290253b32e8796so939898wmd.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 27 Jul 2021 01:42:15 -0700 (PDT)
Date: Tue, 27 Jul 2021 10:42:13 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210727084213.GB1404@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.4.2
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

this is version 0.4.2 of drbd-reactor. Again, this mixes a small bug fix
with a feature:

As you might know the promoter plugin can use OCF agents, which are used
by specifying "ocf:$vendor:$agent name kwargs" in the "start = []" list of the
services. The regex used was too strict and did not work if the agent
had a '-' in it for example (it was class [[:word:]]).

The feature in this release is that one can auto-reload the daemon on
new configuration snippets. Usually a drbd-reactor setup is pretty
static, one uses the Prometheus plugin and 1, 2 pet DRBD resources that
are made highly available with the promoter plugin, like the LINSTOR
controller DB. In this case users use 'drbd-reactorctl edit ...' and it
does the daemon reloading for them. But we are also using drbd-reactor
in future versions of linstor-gateway (removing the dependency on
pacemaker) and in LINSTOR vSAN. These are more dynamic and highly
available iscsi/nfs targets are created dynamically by the users. Long
story short, in these setups it would be nice to just drop (or remove) a
configuration snippet to /etc/drbd-reactor.d/ and the rest is handled
automatically. And that is the feature. We now ship
drbd-reactor-reload.{path,service} in the example/ directory. One can
copy these to for example /etc/systemd/system and 'systemctl enable
--now drbd-reactor-reload.path' (the .service gets triggered by the path
unit, don't enable it). drbd-reactorctl was made aware of that and only
restarts/reloads drbd-reactor if necessary (i.e., not done by the path
unit) to avoid unnecessary reloads. Usually, users still just want to
use drbd-reactorctl which does the right thing (tm) without automatic
reloading, but if you are in a more dynamic situation you now know that
automatic reloading is possible.

GIT: https://github.com/LINBIT/drbd-reactor/releases/tag/v0.4.2
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.4.2.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Regards, rck

Changelog:
[ Rene Peinthor ]
* gitlab: add coverage report and use prebuilt image

[ Roland Kammerer ]
* promoter: fix ocf regex
* ctl: use tempfile not in snippets
* core,ctl: add autoload
