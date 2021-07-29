Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 702AF420209
	for <drbd-announce@lists.linbit.com>;
	Thu, 29 Jul 2021 11:19:48 +0200 (CEST)
Received: by mail-wm1-f52.google.com with SMTP id n11so3255701wmd.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 29 Jul 2021 02:19:48 -0700 (PDT)
Date: Thu, 29 Jul 2021 11:19:46 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210729091946.GM1404@rck.sh>
References: <20210729080221.GJ1404@rck.sh>
 <20210729085530.GL1404@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210729085530.GL1404@rck.sh>
Subject: Re: [DRBD-announce] linstor-proxmox v5.2.1 and PVE7 information
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

On Thu, Jul 29, 2021 at 10:55:30AM +0200, Roland Kammerer wrote:
> On Thu, Jul 29, 2021 at 10:02:21AM +0200, Roland Kammerer wrote:
> > With this release and the hopefully soon to show up proxmox-7 repo we
> > should be ready for PVE7.
> 
> repo is online now.

One more thing. We currently have two repos (drbd-9 and drbd-9.0), which
contain exactly the same components except for the kernel dkms
(drbd-dkms).

For the time being, the drbd-9.0 series is still supported, but there is no
reason to not switch to drbd-9 (which basically is the rolling release repo
for 9.1.x, 9.2.x,...). I will update the docs to point to 'drbd-9' soon.

https://packages.linbit.com/proxmox/dists/proxmox-7/drbd-9.0/binary-amd64/
vs.
https://packages.linbit.com/proxmox/dists/proxmox-7/drbd-9/binary-amd64/

Regards, rck
