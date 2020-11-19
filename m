Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5D92F420604
	for <drbd-announce@lists.linbit.com>;
	Thu, 19 Nov 2020 15:16:40 +0100 (CET)
Received: by mail-wm1-f45.google.com with SMTP id s13so6891445wmh.4
	for <drbd-announce@lists.linbit.com>;
	Thu, 19 Nov 2020 06:16:40 -0800 (PST)
Received: from [192.168.1.25] (91-113-58-239.adsl.highway.telekom.at.
	[91.113.58.239]) by smtp.gmail.com with ESMTPSA id
	109sm40863016wra.29.2020.11.19.06.16.38
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 19 Nov 2020 06:16:39 -0800 (PST)
Date: Thu, 19 Nov 2020 15:16:32 +0100
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <KNR1KQ.K31PZQYN20DP2@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-csi 0.10.1 released
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

We just released version 0.10.1 of our Container Storage Interface 
(CSI) Plugin.

Last week's 0.10.0 introduced a bug that ultimately lead to any Pod 
using LINSTOR volumes hanging in a Terminating state indefinitly.

Unfortunatly the fix for this issue means that ROX Block volumes are 
not usable with DRBD < 9.0.26. ROX Filesystem volumes are not affected.

Best regards,
Moritz

The changes in detail:

Changed
-------
 * The underlying device for ROX volumes is set RO by 'blockdev 
--setro' instead of using 'losetup --readonly'. This makes ROX Block 
volumes unusable with DRBD < 9.0.26. Older DRBD versions will fail to 
return the approriate error when opened to write even if the RO flag is 
set.



