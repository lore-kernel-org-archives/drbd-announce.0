Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id E8E094202F3
	for <drbd-announce@lists.linbit.com>;
	Thu, 26 Mar 2020 15:29:27 +0100 (CET)
Received: by mail-wr1-f52.google.com with SMTP id a25so8108243wrd.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 26 Mar 2020 07:29:27 -0700 (PDT)
Date: Thu, 26 Mar 2020 15:28:25 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20200326142825.GA9241@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox-5.0.1
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

Dear PVE users,

This is a bugfix release that re-adds the "nodes" option. It is
important to know that this is not (and never was) an option the plugin
itself used to for example place its DRBD storage to these "nodes". It
is a filter for where the GUI/pvesm shows the storage. There are valid
cases where this makes sense like a 5 node PVE cluster with a
LINSTOR/DRBD cluster of only 3 nodes.

As these release notes are pretty short, let me use some bytes for an
important message: Perl sucks!

Best, rck

https://github.com/LINBIT/linstor-proxmox/commit/995f38c646f418375fa3d20a43e8cd6b2125cbc8
https://www.linbit.com/downloads/connectors/linstor-proxmox-5.0.1.tar.gz
