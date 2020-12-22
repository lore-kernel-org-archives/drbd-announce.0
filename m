Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
	[209.85.218.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8C2E74207F7
	for <drbd-announce@lists.linbit.com>;
	Tue, 22 Dec 2020 15:14:49 +0100 (CET)
Received: by mail-ej1-f44.google.com with SMTP id ce23so18416823ejb.8
	for <drbd-announce@lists.linbit.com>;
	Tue, 22 Dec 2020 06:14:49 -0800 (PST)
Received: from [192.168.1.25] (178-191-227-105.adsl.highway.telekom.at.
	[178.191.227.105]) by smtp.gmail.com with ESMTPSA id
	e18sm10453802ejr.3.2020.12.22.06.14.47
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 22 Dec 2020 06:14:48 -0800 (PST)
Date: Tue, 22 Dec 2020 15:14:40 +0100
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <GKVQLQ.XXG3LSXQEV8J1@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-operator 1.3.0 released
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

We just released version 1.3.0 of the LINSTOR operator.

This release adds a new component to our Helm Chart: The LINSTOR High 
Availability Controller, or HA Controller for short. This component can 
reduce the time it takes Kubernetes to reschedule a Pod in case of node 
failure from 15+ minutes to 1 minute or less. Details and examples are 
available in section 3.9 of the User Guide. [1]

Other changes include removed deprecation warnings for the provided 
CRDs and the usual round of updated images.

Updated charts are available from https://charts.linstor.io. Take a 
look at section 3.10 on upgrades in our User Guide. [2]

Source code is available, as always, upstream at 
https://github.com/piraeusdatastore/piraeus-operator

Best regards,
Moritz

[1]: 
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-ha-controller
[2]: 
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade

Full changelog
--------------

Added
- New component: haController will deploy the LINSTOR High Availability 
Controller. More information is available in the optional components 
page
- Enable strict checking of DRBD parameter to disable usermode helper 
in container environments.
- Override the image used in "chown" jobs in the pv-hostpath chart by 
using --set chownerImage=<my-image>.

Changed
- Updated operator-sdk to v0.19.4
- Set CSI component timeout to 1 minute to reduce the number of retries 
in the CSI driver
- Default images updated:
  - operator.controller.controllerImage: 
drbd.io/linstor-controller:v1.11.0
  - operator.satelliteSet.satelliteImage: 
drbd.io/linstor-satellite:v1.11.0
  - csi.pluginImage: drbd.io/linstor-csi:v0.11.0

Fixed
- Fixed Helm warnings when setting "csi.controllerAffinity", 
"operator.controller.affinity" and "operator.satelliteSet.storagePools".



