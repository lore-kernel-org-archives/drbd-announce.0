Return-Path: <roland.kammerer@linbit.com>
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id F242F160872
	for <drbd-announce@lists.linbit.com>;
	Fri, 13 Feb 2026 13:23:08 +0100 (CET)
Received: by mail-lj1-f178.google.com with SMTP id
	38308e7fff4ca-387090ae5b1so6091631fa.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 13 Feb 2026 04:23:08 -0800 (PST)
Received: from localhost (static.57.82.181.135.clients.your-server.de.
	[135.181.82.57]) by smtp.gmail.com with ESMTPSA id
	38308e7fff4ca-387069066b8sm12347121fa.35.2026.02.13.04.23.07
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 13 Feb 2026 04:23:07 -0800 (PST)
Date: Fri, 13 Feb 2026 13:23:06 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: linstor-proxmox v8.2.0-rc.1
Message-ID: <aY8Xqi_E44ebbIBJ@arm64>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

this is the first RC of the upcoming 8.2.0 release. We added NVMe-oF
support, allowing LINSTOR-managed NVMe over Fabrics resources alongside
existing DRBD setups. See the commit for requirements and limitations.
We will update the official documentation soon. We also added a
configurable allowtwoprimaries option that allows using DRBD replication
protocols other than C (at the cost of disabling live migration), and
fixed list_images to correctly show all volumes in the storage pool
regardless of which node you query from.

Please test, if we don't find any issues I will release the final
version in about a week from now. Packages are available in the public
testing repos.

Regards, rck

GIT: https://github.com/LINBIT/linstor-proxmox/commit/a61b58a765e12e8b411720c66af6b2eb79145aa8
TGZ: https://pkg.linbit.com/downloads/connectors/linstor-proxmox-8.2.0-rc.1.tar.gz

Changelog:
[ Roland Kammerer ]
* Add configurable allow-two-primaries option

[ Tydus ]
* Fix list_images to show all volumes in storage pool
* Add NVMe-oF support
