Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 365A9420D47
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Sep 2020 11:18:19 +0200 (CEST)
Received: by mail-wr1-f44.google.com with SMTP id x14so5833675wrl.12
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Sep 2020 02:18:19 -0700 (PDT)
Date: Thu, 10 Sep 2020 11:18:18 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20200910091818.GU2145@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.14.0
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

Hi DRBD users,

This release contains several bug fixes and some new features. 

Fixes are mainly related to the HA area where Pacemaker compatibility
was improved and bugs got fixed. So if you face any issues, for example
with crm-fence-peer.9.sh, you might want to upgrade.

The most noteworthy feature are 'may_promote' and 'promotion_score' in
the events2 stream. Both are documented in the version 9 man page of
'drbdsetup'. In short 'may_promote' is a hint if promotion to Primary
may succeed. 'promotion_score' is an integer based on a heuristic to
find the best node to promote. This will help to enable further features
in higher level components.

Tests got improved as well. All in all this release is a bit bigger than
the last ones.

Regard, rck

PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
TAR: https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.14.0.tar.gz
GIT: https://github.com/LINBIT/drbd-utils/releases/tag/v9.14.0

9.14.0
--------
 * pacemaker: various fixes/improvements for PM >=1.1.15
   including the 2 series; crm-fence-peer.9.sh
 * systemd dependency for drbd-proxy
 * containers: multi-arch support, especially for s390x
 * multipathd: blacklist drbd
 * drbdsetup: code refactoring and improvements,
   as well as tests for events2!
   add "may_promote", "promotion_score". See man page.
 * build: compile fixes for gcc-10; CI pipeline
 * handlers: add "disconnected"
