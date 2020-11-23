Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
	[209.85.218.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5EB6B4207C1
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Nov 2020 09:23:45 +0100 (CET)
Received: by mail-ej1-f53.google.com with SMTP id k9so7223157ejc.11
	for <drbd-announce@lists.linbit.com>;
	Mon, 23 Nov 2020 00:23:45 -0800 (PST)
Received: from [192.168.1.25] (88-117-69-65.adsl.highway.telekom.at.
	[88.117.69.65])
	by smtp.gmail.com with ESMTPSA id u8sm4574278edr.2.2020.11.23.00.23.43
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 23 Nov 2020 00:23:44 -0800 (PST)
Date: Mon, 23 Nov 2020 09:23:36 +0100
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <CZP8KQ.H6AFRCAXTSQ4@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-operator v1.2.0 release
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

Dear LINSTOR on Kubernetes users!

We released version 1.2.0 of our LINSTOR operator.

The two standout additions in this release are our improved storage 
pool configuration and the operators dynamic upgrade ability.

While previous opertor versions could already do some basic physical 
device and storage pool configuration, this new release combines both 
to create a flexible way to set up your LINSTOR storage. As a 
consequence, the old "automaticStorageType" setting is deprecated, 
please use the "devicePaths" setting on storage pools instead. For more 
information, take a look at the updated User Guide. [1]

The operator is now finally able to update and change the resources it 
controls. Updates to the LinstorController, LinstorSatelliteSet and 
LinstorCSIDriver resource will trigger updates in all created 
workloads. This also means that v1.2.0 is the first version to support 
upgrading the operator by running "helm upgrade ...". See the new 
upgrade section in our User Guide. [2]

Apart from the two features above, v1.2.0 contains the usual update to 
the new LINSTOR version. As a consequence of some of the updated 
default images, LINSTOR operator requires Kubernetes 1.17+.

If you are running Openshift (4.4+), you can also check out our new 
User Guide chapter here. [3]

The new chart is available from https://charts.linstor.io or by running 
"helm repo update".

As always, code is available in our upstream project here. [4]

Best regards,
Moritz

[1]: 
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-storage
[2]: 
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[3]: 
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#ch-openshift
[4]: https://github.com/piraeusdatastore/piraeus-operator

All changes
-----------

== Added
- storagePools can now also set up devices similar to 
automaticStorageType, but with more fine grained control. See the 
updated storage guide
- New Helm options to disable creation of LinstorController and 
LinstorSatelliteSet resource operator.controller.enabled and 
operator.satelliteSet.enabled.
- New Helm option to override the generated controller endpoint: 
controllerEndpoint
- Allow overriding the default securityContext on a component basis:
  * etcd.podsecuritycontext sets the securityContext of etcd pods
  * stork.podsecuritycontext sets the securityContext of stork plugin 
and scheduler pods
  * csi-snapshotter.podsecuritycontext sets the securityContext of the 
CSI-Snapshotter pods
  * operator.podsecuritycontext sets the securityContext of the 
operator pods
- Example settings for openshift
- LINSTOR controller runs with additional GID 1000, to ensure write 
access to log directory

== Changed
- Fixed a bug in pv-hostpath where permissions on the created directory 
are not applied on all nodes.
- Volumes created by pv-hostpath are now group writable. This makes 
them easier to integrate with fsGroup settings.
- Default value for affinity on LINSTOR controller and CSI controller 
changed. The new default is to distribute the pods across all available 
nodes.
- Default value for tolerations for etcd pods changed. They are now 
able to run on master nodes.
- Updates to LinstorController, LinstorSatelliteSet and 
LinstorCSIDriver are now propagated across all created resources
- Updated default images:
  * csi sidecar containers updated (compatible with Kubernetes v1.17+)
  * LINSTOR 1.10.0
  * LINSTOR CSI 0.10.1

== Deprecation
- Using automaticStorageType is deprecated. Use the storagePools values 
instead.



