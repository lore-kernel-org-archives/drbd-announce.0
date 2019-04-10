Return-Path: <johannes@johannesthoma.com>
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 3BCF01011BFC
	for <drbd-announce@lists.linbit.com>;
	Wed, 10 Apr 2019 15:37:44 +0200 (CEST)
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <813c1cf5-2215-b151-3409-9e42d715fc9a@johannesthoma.com>
Date: Wed, 10 Apr 2019 15:32:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] WinDRBD 0.9.2 released
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

Dear DRBD community,

We just release a new version of WinDRBD. WinDRBD is the port of
the DRBD kernel driver and userspace utilities to the Microsoft
Windows family of operating systems.

Most core features of DRBD are currently working, including
connection to other Windows or Linux host, On line data replication,
Synchronization, Diskless Primary and proper handling of
disk, node and network failures. For the 0.9.2 release we
reworked the networking layer so that setups with more
than 2 (Linux and/or Windows) nodes should work now. In
addition we upgraded the DRBD version WinDRBD is based on
to 9.0.17, so that WinDRBD inherits the fixes from that
DRBD release as well.

To obtain an installable version of WinDRBD please go to:

https://www.linbit.com/en/drbd-community/drbd-download/

scroll down to DRBD 9 Windows Driver and download the latest
(0.9.2) installer package. Since WinDRBD is still beta,
we don't recommend currently to run it on production machines.

To obtain the sources of WinDRBD, please go to:

https://github.com/LINBIT/windrbd

In the source repository, there are two documentation files
that might be nteresting for you:

FEATURES: explains what currently works, what does not work yet
and what we plan to implement next.

KNOWN-BUGS: During our endurance tests we discovered some
issues which are documented in this file.

In order to get professional support for WinDRBD please contact
sales@linbit.com

Thank you for improving WinDRBD by using it.

- Johannes Thoma
