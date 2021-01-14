Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
	[209.85.218.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 201754202D9
	for <drbd-announce@lists.linbit.com>;
	Thu, 14 Jan 2021 18:13:09 +0100 (CET)
Received: by mail-ej1-f51.google.com with SMTP id d17so9249482ejy.9
	for <drbd-announce@lists.linbit.com>;
	Thu, 14 Jan 2021 09:13:09 -0800 (PST)
Received: from x1-carbon
	(2a02-8388-1a84-d100-658a-8a00-5609-48dc.cable.dynamic.v6.surfer.at.
	[2a02:8388:1a84:d100:658a:8a00:5609:48dc])
	by smtp.gmail.com with ESMTPSA id
	s21sm1899633ejz.87.2021.01.14.09.12.07
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 14 Jan 2021 09:12:07 -0800 (PST)
Date: Thu, 14 Jan 2021 18:12:00 +0100
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <04PXMQ.U2YYOQ7H5H481@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-operator 1.3.1 released
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

We just released version 1.3.1 of our Kubernetes operator.

This release mostly contains updates to most of the deployed images.
* LINSTOR 1.11.1 fixes an important bug in the context of Kubernetes 
which prevented PVC with 2 replicas from automatically getting a third 
tie breaker resource associated.
* LINSTOR High Availability Controller was updated to no longer crash 
when running into Kubernetes API timeouts.
* A user reported a bug when running a specific Kernel version that 
would randomly crash the LINSTOR Controller. This is also fixed in the 
image update

As always, upgrades can be applied via Helm, as described in the Users 
Guide.

Best regards,
Moritz


Changelog:
----------

### Changed
* Default image updated:
  * operator.controller.controllerImage: 
drbd.io/linstor-controller:v1.11.0
  * operator.satelliteSet.satelliteImage: 
drbd.io/linstor-satellite:v1.11.1
  * haController.image: drbd.io/linstor-k8s-ha-controller:v0.1.3
  * pv-hostpath: chownerImage: quay.io/centos/centos:8



