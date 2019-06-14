Return-Path: <lars.ellenberg@linbit.com>
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id EEFAC1028A65
	for <drbd-announce@lists.linbit.com>;
	Fri, 14 Jun 2019 16:01:20 +0200 (CEST)
Received: by mail-wr1-f41.google.com with SMTP id x4so2670563wrt.6
	for <drbd-announce@lists.linbit.com>;
	Fri, 14 Jun 2019 07:01:20 -0700 (PDT)
Date: Fri, 14 Jun 2019 15:54:52 +0200
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-announce@lists.linbit.com
Message-ID: <20190614135452.GD30528@soda.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] [DRBD-user] drbd-9.0.19-0rc1
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

Hi,

already let out the RC a couple days ago,
but forgot to send the announcement.

A few fixes since 9.0.18, revolving around corner cases
during re-integration of a node that was isolated,
into an active three (or more) node setup.

If you have any test setups you can use to stress test this RC,
for any regressions, and for quirks in the above mentioned scenario,
please do so and let us know, so we may address any such issues before
the final DRBD 9.0.19.


Also one new feature: allow-remote-read.
You need utils 9.10.0 to be able to configure it.

In certain setups you rather want to fail locally
instead of trying to mask local IO failures
by reading via a WAN DR replication link.
So we now allow to disable remote reads, per connection.

9.0.19-0rc1 (api:genl2/proto:86-115/transport:14)
--------
 * Fix resync stuck at near completion
 * Fix NULL dereference with disk-timeout enabled
 * Fix wrong state change when current UUID changes during UUID exchange
 * Fix check on CAP_SYS_ADMIN
 * Fix quorum tie-breaker diskless majority calculation
 * Fix dax_direct_access() error return check
 * unblock IO when on-quorum-lost policy is changed (suspend -> io-error)
 * introduce allow-remote-read (disallow read from DR connections)
 * some build changes

http://www.linbit.com/downloads/drbd/9.0/drbd-9.0.19-0rc1.tar.gz
https://github.com/LINBIT/drbd-9.0/tree/d1e16bdf2b71

-- 
: Lars Ellenberg
: LINBIT | Keeping the Digital World Running
: DRBD -- Heartbeat -- Corosync -- Pacemaker

DRBD® and LINBIT® are registered trademarks of LINBIT
__
please don't Cc me, but send to list -- I'm subscribed
