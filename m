Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0F4CD420231
	for <drbd-announce@lists.linbit.com>;
	Fri, 26 Feb 2021 11:08:14 +0100 (CET)
Received: by mail-wr1-f48.google.com with SMTP id b18so1519484wrn.6
	for <drbd-announce@lists.linbit.com>;
	Fri, 26 Feb 2021 02:08:14 -0800 (PST)
Date: Fri, 26 Feb 2021 11:08:13 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210226100812.GI2233@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbdd v0.1.0
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

this is the first release of drbdd. It is now the suggested way for
LINSTOR controller HA[1]. Of course, if you already have a pacemaker
setup, or use an external database that is highly available (you still
would need linstor-controller.service switching), or there are already
other means as in k8s, then feel free to use that. But otherwise drbdd
is a simple way to solve a complex problem. We assume this will be the
standard way for LINSTOR integration in Proxmox, Opennebula, and such.

Notable changes since RC2:
- the promoter plugin now drbdadm adjusts the resources it monitors on
  startup, so we don't need a dependency on drbd.service (the shell
  script one shipped with drbd-utils). Obviously especially needed for
  the LINSTOR controller HA as we can not expect that linstor itself
  brings up the volume.
- rpm: mark drbdd.toml as config
- plugins are split in init/run phases, and there is now a Plugin trait.
  So with that and PluginUpdate the plugin API should be pretty stable
  (no guarantees at all).
- support for systemd sd_notify, and therefore "Type=notify".
- less noise in the logs
- confirm that there will be a prometheus.io plugin (no time frame for
  now)

Regards, rck

GIT: https://github.com/LINBIT/drbdd/releases/tag/v0.1.0
TAR: https://www.linbit.com/downloads/drbd/utils/drbdd-0.1.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1]
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-linstor_ha
