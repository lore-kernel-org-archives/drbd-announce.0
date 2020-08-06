Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
	[209.85.218.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 672874202B0
	for <drbd-announce@lists.linbit.com>;
	Thu,  6 Aug 2020 16:48:51 +0200 (CEST)
Received: by mail-ej1-f53.google.com with SMTP id d6so36786041ejr.5
	for <drbd-announce@lists.linbit.com>;
	Thu, 06 Aug 2020 07:48:51 -0700 (PDT)
Received: from [10.43.71.1] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214])
	by smtp.gmail.com with ESMTPSA id du2sm3976358ejc.2.2020.08.06.07.48.48
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 06 Aug 2020 07:48:50 -0700 (PDT)
Date: Thu, 06 Aug 2020 16:48:43 +0200
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <75DNEQ.L55K82L9LKNS1@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-operator v1.0.0 release
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

Today we released version v1.0.0 of linstor-operator!

Release v1.0.0 is our first stable version of linstor-operator, our 
all-in-one package for getting started with LINSTOR on Kubernetes. Like 
in the announcement for v0.5.0: if you are new to linstor-operator and 
want to learn more, I would recommend checking out the user guide[1].

Since last release, we removed a few obstacles for adopting 
linstor-operator. Namely we now support setting resource requests and 
limits on all pods, as well as custom affinity and tolerations settings.

We also needed to make some final breaking changes before settling on 
our first stable release. The big changes are:

Breaking Changes
----------------
* Renamed 'LinstorNodeSet' to 'LinstorSatelliteSet'. This brings the 
operator in line with other LINSTOR resources.
* Renamed 'LinstorControllerSet' to 'LinstorController'. The old name 
implied the existence of multiple (separate) controllers.
* Renamed helm option 'operator.controllerSet' to 'operator.controller'
* Renamed helm option 'operator.nodeSet' to 'operator.satelliteSet'
* Renamed helm option 'kernelModImage' to 'kernelModuleInjectionImage'
* Renamed helm option 'drbdKernelModuleInjectionMode' to 
'kernelModuleInjectionMode'

New Features
------------
* You can now set resource limits and requests for all containers.
* Starting multiple replicas for reduced failover deplay in most 
components.
* Set pod affinity and tolerations to customize where controller and 
satellites will run.

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
https://github.com/piraeusdatastore/piraeus-operator/blob/v1.0.0/UPGRADE.md#upgrade-to-v10
[3]: 
https://github.com/piraeusdatastore/piraeus-operator/blob/v1.0.0/doc/helm-values.adoc
[4]: https://charts.linstor.io/
[5]: https://github.com/piraeusdatastore/piraeus-operator


