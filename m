Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
	[209.85.218.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 001194207B6
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Nov 2020 13:31:50 +0100 (CET)
Received: by mail-ej1-f54.google.com with SMTP id f20so2534262ejz.4
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Nov 2020 04:31:50 -0800 (PST)
Received: from [192.168.1.25] (91-113-58-239.adsl.highway.telekom.at.
	[91.113.58.239])
	by smtp.gmail.com with ESMTPSA id g7sm868471edl.5.2020.11.11.04.31.49
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 11 Nov 2020 04:31:49 -0800 (PST)
Date: Wed, 11 Nov 2020 13:31:42 +0100
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <UGTMJQ.VLNJ5MKJZ6G62@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-csi 0.10.0 released
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

Dear LINSTOR on Kubernetes users,

We just released version 0.10.0 of our Container Storage Interface 
(CSI) Plugin.

The main addition in this release is ReadOnlyMany (ROX) support for 
filesystem and block volumes. This was always possible with LINSTOR, 
now it is integrated with Kubernetes, simply by using "accessModes: 
[ReadOnlyMany]" in your PVCs.

The updated image is available to download from drbd.io

Best regards,
Moritz

The changes in detail:
Added
-----
  * Support for ROX filesystem and block volumes
  * Support all currently available LINSTOR layers
    * DRBD
    * STORAGE
    * LUKS
    * NVME
    * CACHE (new)
    * OPENFLEX (new)
    * WRITECACHE (new)

Changed
-------
  * Use storage pools for CSI topology support.
  * 'replicasOnSame' and 'replicasOnDifferent' always use auxiliary 
properties



