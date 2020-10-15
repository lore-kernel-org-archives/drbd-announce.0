Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0BF0442006F
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Oct 2020 15:03:46 +0200 (CEST)
Received: by mail-wm1-f52.google.com with SMTP id j136so3552923wmj.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 15 Oct 2020 06:03:46 -0700 (PDT)
Received: from [10.43.71.1] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214])
	by smtp.gmail.com with ESMTPSA id b5sm4388397wrs.97.2020.10.15.06.03.43
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 15 Oct 2020 06:03:44 -0700 (PDT)
Date: Thu, 15 Oct 2020 15:03:37 +0200
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <1YU8IQ.T0D5ZF8N1QX22@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-operator v1.1.0 release
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

Dear LINSTOR on Kubernetes users

We just released version 1.1.0 of our operator! If you are new to the 
LINSTOR Operator, check out the users guide[1].

This release, we focused on integrating with existing authorization 
tools in your Kubernetes cluster. All containers are started with the 
minimum set of privileges required to run. We also provide integration 
for Pod Security Policies and Security Context Constraints if required.

Another improvement we made: You can now run the LINSTOR Controller as 
a deployment with multiple replicas! This requires a very recent 
version of the LINSTOR image, so make sure to update to LINSTOR v1.9.0 
in advance.

For details on upgrading from a previous version, check out the upgrade 
guide[2].
To get a full list of all available options, you can check out the 
settings reference[3].

The latest releases of linstor-operator are available here[4].
Upstream code can be found here[5].

Best regards,
Moritz

[1]: 
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#ch-kubernetes
[2]: 
https://github.com/piraeusdatastore/piraeus-operator/blob/v1.1.0/UPGRADE.md#upgrade-from-v10-to-v11
[3]: 
https://github.com/piraeusdatastore/piraeus-operator/blob/v1.1.0/doc/helm-values.adoc
[4]: https://charts.linstor.io/
[5]: https://github.com/piraeusdatastore/piraeus-operator

The changes in detail:

Breaking changes
----------------
* The LINSTOR Controller deployment requires a recent image version (>= 
v1.9.0). Older images
  will fail to register with the Kubernetes service.

Added
-----
* LINSTOR controller can be started with multiple replicas. Set 
'operator.controller.replicas'.
* The pv-hostpath helper chart automatically sets up permissions for 
non-root etcd containers.
* Disable securityContext enforcement by setting 
'global.setSecurityContext=false'.
* Add cluster roles to work with OpenShifts SCC system.
* Control volume placement and accessibility by using CSIs Topology 
feature. Controlled by setting 'csi.enableTopology=true'.
* All pods use a dedicated service account to allow for fine-grained 
permission control.
* The new helm section 'psp.*' can automatically configure the 
ServiceAccount of all components to use the appropriate PSP roles.

Changed
-------
* Default values:
  - 'operator.controller.controllerImage': 
drbd.io/linstor-controller:v1.9.0
  - 'operator.satelliteSet.satelliteImage': 
drbd.io/linstor-satellite:v1.9.0
  - 'stork.storkImage': docker.io/openstorage/stork:2.5.0
* linstor-controller no longer starts a privileged container.

Removed
-------
* legacy CRDs (LinstorControllerSet, LinstorNodeSet) have been removed.
* v1alpha CRD versions have been removed.



