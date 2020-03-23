Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id BE2E2420008
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Mar 2020 10:20:27 +0100 (CET)
Received: by mail-wr1-f47.google.com with SMTP id b2so15957222wrj.10
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Mar 2020 02:20:27 -0700 (PDT)
Date: Mon, 23 Mar 2020 10:19:25 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20200323091925.GS9241@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.12.1
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

This is a bugfix release for pacemaker 2/crm-fence-peer.9.sh users. If you
don't use pacemaker 2 or you don't use this script for DRBD9, there is no need
install this update.

Quoting the original commit message:
> The sed-script to guess the pacemaker xml-id to be used in location
> constraints from the DRBD resource name expected '<master' tags, but
> with new pacemaker 2 xml, these are '<clone's, with "promotable=true"
> set in the meta attributes.
>
> Use the crm_feature_set version from the top level <cib/> tag
> to decide between the two.

Best, rck

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.12.1.tar.gz
https://github.com/LINBIT/drbd-utils/tree/9.12.1
