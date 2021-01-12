Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 28F2942060F
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 Jan 2021 12:37:11 +0100 (CET)
Received: by mail-wr1-f51.google.com with SMTP id y17so2116443wrr.10
	for <drbd-announce@lists.linbit.com>;
	Tue, 12 Jan 2021 03:37:11 -0800 (PST)
Received: from [192.168.43.79] (089144197198.atnat0006.highway.a1.net.
	[89.144.197.198])
	by smtp.gmail.com with ESMTPSA id t1sm4537453wro.27.2021.01.12.03.37.10
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 12 Jan 2021 03:37:10 -0800 (PST)
Date: Tue, 12 Jan 2021 12:37:03 +0100
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <R9KTMQ.VW3EGBYRZWZJ3@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-k8s-ha-controller 0.1.2 released
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

We just released a new version of our High Availability Controller for 
Kubernetes.

This releases fixes a bug that caused frequent crashes and restarts of 
the HA Controller Pod. Depending on the exact cluster configuration, 
watches on Kubernetes Resources can time out after 10-30 minutes. This 
release recovers from such time outs without requiring a complete 
restart.

The updated image is available on drbd.io: 
drbd.io/linstor-k8s-ha-controller:v0.1.2

If you are using our Helm chart, you can update to this release by 
running:
 > helm upgrade <release-name> linstor/linstor --reuse-values --set 
haController.image=drbd.io/linstor-k8s-ha-controller:v0.1.2

Best regards,
Moritz

Complete changelog:
* Restart Kubernetes resource watches in case of timeouts.
* Adds a --leader-election-resource-name command line flag to override 
the lease name used by default.


