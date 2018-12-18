Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 39EB0101AC67
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Dec 2018 10:52:28 +0100 (CET)
Received: by mail-wr1-f47.google.com with SMTP id p4so15195468wrt.7
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Dec 2018 01:52:28 -0800 (PST)
Date: Tue, 18 Dec 2018 10:52:26 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20181218095226.bkel3qp5egupnaxa@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.7.1
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

Hi DRBD users,

This release contains a single bug fix for drbdsetup used in DRBD9. Due
to a regression, the wait-for family of commands did not honor its
timeout and waited basically for ever. Such a command wout be:

drbdsetup wait-connect-resource --wfc-timeout 5 foo

LINSTOR was not affected by that, as it does its own state tracking via
"events2". The only plugin, IIRC, making use of a wait-for command is
the Proxmox plugin, but this one does not use a timeout on drbdsetup
level.

9.7.0
--------
 * drbdsetup,v9: partially revert commit that broke wait-for

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.7.1.tar.gz
https://github.com/LINBIT/drbd-utils/tree/9.7.1

Regards, rck
