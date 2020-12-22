Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
	[209.85.218.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 51529420640
	for <drbd-announce@lists.linbit.com>;
	Tue, 22 Dec 2020 14:28:37 +0100 (CET)
Received: by mail-ej1-f54.google.com with SMTP id x16so18231299ejj.7
	for <drbd-announce@lists.linbit.com>;
	Tue, 22 Dec 2020 05:28:37 -0800 (PST)
Received: from [192.168.1.25] (178-191-227-105.adsl.highway.telekom.at.
	[178.191.227.105]) by smtp.gmail.com with ESMTPSA id
	p12sm10247644ejc.116.2020.12.22.05.28.36
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 22 Dec 2020 05:28:36 -0800 (PST)
Date: Tue, 22 Dec 2020 14:28:30 +0100
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <IFTQLQ.ZESC553U2CFI3@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-csi 0.11.0 released
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

Dear LINSTOR on Kubernetes Users,

We just released version 0.11.0 of LINSTOR CSI.

The main changes in this release is a complete rework of the way 
snapshots are handled internally. This fixes a number of bugs that lead 
to snapshots looking like they succeeded in Kubernetes, only to not 
exist at all in LINSTOR.

There was also a bug repored that the LayerList parameter would not 
work when using a non-default PlacementPolicy. Resources are now 
created with the specified layers in all cases.

The new image is available to download from drbd.io

docker pull drbd.io/linstor-csi:v0.11.0

Source code is available, as always, upstream at 
https://github.com/piraeusdatastore/linstor-csi

Best regards,
Moritz


Full changelog
--------------

Changed
- Snapshot information is persisted using native LINSTOR Snapshots 
instead of storing it in properties of RDs.
- Snapshots are marked as ready only after LINSTOR reports success
- Generate fallback id for a snapshot based on the suggested name using 
UUIDv5
- Only create a single snapshot in volume-from-volume scenarios

Fixed
- LayerList was ignored when not using the AutoPlace scheduler. All 
schedulers not pass this information to LINSTOR.



