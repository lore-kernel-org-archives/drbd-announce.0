Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 80B3D4207F3
	for <drbd-announce@lists.linbit.com>;
	Fri,  4 Dec 2020 10:53:02 +0100 (CET)
Received: by mail-wr1-f44.google.com with SMTP id g14so4660841wrm.13
	for <drbd-announce@lists.linbit.com>;
	Fri, 04 Dec 2020 01:53:02 -0800 (PST)
Received: from [192.168.1.25] (91-115-48-136.adsl.highway.telekom.at.
	[91.115.48.136])
	by smtp.gmail.com with ESMTPSA id 34sm2851695wrh.78.2020.12.04.01.53.00
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 04 Dec 2020 01:53:00 -0800 (PST)
Date: Fri, 04 Dec 2020 10:52:54 +0100
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <6G7TKQ.MXKBGVH3RPKJ3@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-csi 0.10.2 released
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

We just released version 0.10.2 of LINSTOR CSI.

This release contains fixes for the following issues:

- Under specific conditions it was possible for
  a PV to be created in Kubernetes without the matching
  LINSTOR resources being available. Any Pods using these
  PVs would forever be stuck, as LINSTOR CSI would fail
  to attach the volume. Any PV created in this way has
  to be deleted and re-created.

- Another possible outcome of the above bug was a complete
  crash of LINSTOR CSI on a node. On restart of the pod,
  it would immediatly crash again.

The update is available from our registry:

drbd.io/linstor-csi:v0.10.2

Updates can be applied by:

- Using the LINSTOR helm chart:
  Run helm upgrade, setting:
  csi.pluginImage=drbd.io/linstor-csi:v0.10.2

- Other linstor-operator deployments:
  Edit the LinstorCSIDriver resource and set:
  linstorPluginImage: drbd.io/linstor-csi:v0.10.2

Best regards,
Moritz


