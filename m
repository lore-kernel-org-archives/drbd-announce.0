Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4521A4203D4
	for <drbd-announce@lists.linbit.com>;
	Mon, 16 Sep 2019 12:00:07 +0200 (CEST)
Received: by mail-wm1-f44.google.com with SMTP id b24so1151408wmj.5
	for <drbd-announce@lists.linbit.com>;
	Mon, 16 Sep 2019 03:00:07 -0700 (PDT)
Date: Mon, 16 Sep 2019 11:59:05 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20190916095905.GB18779@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox-4.1.0rc1
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

Dear Proxmox users,

You probably have heard of LINSTOR resource groups ("templates"). This
adds resource groups to the Proxmox plugin. Note that this is the preferred way
to set up storage/set DRBD properties. The old way (setting
'storagepool'/'redundancy') still works, but if a 'resourcegroup' is set, the
values from the resource group are used. Eventually the old way will be
removed.

The important commit message with some howto:

This adds support for LINSTOR resource groups. This is now the preferred way to
set up storage for the plugin (and in general in LINSTOR).  Resource groups are
used whenever the keyword 'resourcegroup' is found in the configuration.

Resource groups in LINSTOR are like templates. For example let's create a
resource group that autoplaces every VM disk to two nodes, to the fast ssd
storage pool:

linstor rg c -s ssd --place-count 2 onfaststorage
linstor vg c onfaststorage

Note that you *have to* set a storage pool (-s). And also note that you have to
create exaclty one LINSTOR volume group (vg).

The configuration in /etc/pve/storage.cfg then looks like this:
drbd: ssdtwice
  content images,rootdir
  controller 10.43.8.119
  resourcegroup onfaststorage

Every other LINSTOR/DRBD option then can be set on the template and gets
automatically applied (even for existing resources).

Please test. Use the latest LINSTOR release.

http://packages.linbit.com/rck/linstor-proxmox_4.1.0~rc1-1_all.deb
https://github.com/linbit/linstor-proxmox

Regards, rck
