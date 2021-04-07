Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
	[209.85.218.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6760F420167
	for <drbd-announce@lists.linbit.com>;
	Wed,  7 Apr 2021 14:37:30 +0200 (CEST)
Received: by mail-ej1-f42.google.com with SMTP id b7so27437343ejv.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 07 Apr 2021 05:37:29 -0700 (PDT)
Received: from x1-carbon
	(2a02-8388-1a84-d100-658a-8a00-5609-48dc.cable.dynamic.v6.surfer.at.
	[2a02:8388:1a84:d100:658a:8a00:5609:48dc])
	by smtp.gmail.com with ESMTPSA id
	l15sm7450168edb.48.2021.04.07.05.37.28
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 07 Apr 2021 05:37:29 -0700 (PDT)
Date: Wed, 07 Apr 2021 14:37:22 +0200
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <AQ17RQ.53WVLYF30K792@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [DRBD-announce] linstor-operator 1.4.0 released + linstor-csi
	0.12.1 released
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

We've just release new versions of our Kubernetes SDS components:

* Linstor Operator 1.4.0
* Linstor CSI 0.12.1

The CSI Driver contains fixes related to using resource which are in 
the process of being deleted. An unlucky timing of certain operations 
meant that users could be left with a volume that exists only in 
Kubernetes, but is not backed by a resource in Linstor.

Another fix in the CSI driver means that you now use Snapshots 
independently from their source volume. While on the topic of 
snapshots: XFS formatted volumes that had be restored from a snapshot 
could fail to mount in certain scenarios, this is also fixed.

The Operator brings the usual round of updates to images, including the 
CSI driver just released. There is also a fix for an issue that would 
show the Linstor controller as offline after certain events such as a 
node restart.

Apart from that there is some ground work for supporting advanced 
configurations in Linstor directly via the Linstor* resources. Lookout 
for the "additionalEnv" and additionalProperties" values if you want to 
learn more.

For all users of our Operators: we can also announce a new tool to 
manage your Linstor Cluster from the command line: kubectl-linstor is a 
command line utility to use the linstor client directly from where you 
are running kubectl. For more information, check out the project page 
[1]: https://github.com/piraeusdatastore/kubectl-linstor

To upgrade, please take a look at the upgrade notes in the User Guide. 
[2]

Source code is available upstream at:

- https://github.com/piraeusdatastore/piraeus-operator
- https://github.com/piraeusdatastore/linstor-csi

Best regards,
Moritz

[1]: https://github.com/piraeusdatastore/kubectl-linstor
[2]: 
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade


Changelog for Linstor Operator:
-------------------------------

## [v1.4.0] - 2021-04-07

- Additional environment variables and Linstor properties can now be 
set in the `LinstorController` CRD.
- Set node name variable for Controller Pods, enabling 
k8s-await-election to correctly set up the endpoint for hairpin mode.
- Update the network address of controller pods if they diverged 
between Linstor and kubernetes. This can happen after a node restart, 
where a pod is recreated with the same name but different IP address.

Changelog for Linstor CSI:
--------------------------

## [0.12.1] - 2021-03-31
- Controller no longer treats LINSTOR resource(-definitions) as ready 
when the DELETE flag is set. Operations are now aborted early and tried 
again later when the LINSTOR resource is really gone.

## [0.12.0] - 2021-01-26
- PVCs can now be deleted independently of Snapshots. LINSTOR 
ResourceDefinitions for the PVC will exist until both Snapshots and 
Resources are deleted.
- Add `nouuid` to default XFS mount options. This enables mounting 
restored snapshots on the same node as the original.
- Detach() operations no longer delete existing diskless resources 
(i.e. TieBreaker resources), only those created by Attach() operations.



