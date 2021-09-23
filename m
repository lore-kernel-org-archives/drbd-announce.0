Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8E569420629
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Sep 2021 16:19:33 +0200 (CEST)
Received: by mail-wr1-f41.google.com with SMTP id w29so17630614wra.8
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Sep 2021 07:19:33 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Thu, 23 Sep 2021 16:19:15 +0200
Message-ID: <CAKnz9xJ=f5BNKsf-yX2F9SyQJKO=foB=_YZDTWjoA=_KG5f1nw@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator 1.6.0 + LINSTOR CSI 0.15.0 release
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

We just released version 1.6.0 of our Operator, a big update for the
Operator and supporting components.

Over the summer, we made a lot of improvements, big and small, that
should make the LINSTOR operator more convenient to use.

One such improvement is the automatic synchronisation of node labels
to LINSTOR. For example, if your Kubernetes nodes are in different
failure domains and labelled with "topology.kubernetes.io/zone"
accordingly, the Operator will now ensure the same labels are present
on the LINSTOR Satellite nodes. This makes it possible to use
"replicasOnDifferent: topology.kubernetes.io/zone" in your
StorageClass to ensure volumes are replicated across zones, or
"replicasOnSame: topology.kubernetes.io/zone=zone1" if you want the
volume to only be available in one zone.

On the topic of volume placement, we made improvements to our CSI
driver, including a new default for the volume scheduler. This new
scheduler takes both Kubernetes topology information and user provided
constraints (in the form of the "replicasOnSame/replicasOnDifferent"
StorageClass parameters) into account. That means you can have a
PersistentVolume that is placed on the same node as a consuming Pod,
while the volume replicas are still distributed according to the
user's constraints. This new scheduler is activated by default, unless
overridden by the "placementPolicy" parameter in the storage class.

Still on the topic of volume placement, we disabled the default
integration with the STORK project. Instead, we recommend using a
StorageClass with "volumeBindingMode: WaitForFirstConsumer", which
covers most of the STORKs functionality without requiring external
components. To facilitate "volumeBindingMode: WaitForFirstConsumer" we
enabled the CSI topology feature by default instead.

Another external component we removed is the cluster-wide CSI snapshot
controller. It was included for Kubernetes distributions that do not
ship their own snapshot controller. However, the way it was bundled
made it hard to maintain and upgrade. Instead, we decided to split it
off into its own chart, that can be installed by those that need it.
[1]

On the topic of charts: the pv-hostpath chart was updated. It is no
longer required to manually specify the nodes on which the PVs should
be created. The Chart will default to using the control plane nodes,
unless manually overridden.

Finally, we noticed an issue when using the Operator on some
distributions like microk8s: The CSI driver would mount the volume at
the wrong location, making it look like everything is in order, while
no data is actually replicated. To fix this, there is a new chart
value "csi.kubeletPath", which for microk8s needs to be changed to
"/var/snap/microk8s/common/var/lib/kubelet".

We also updated the default images again, including LINSTOR 1.15.0,
which brings some exciting new features, like shipping snapshots to
compatible storage and more. Check out the release message for LINSTOR
1.15.0 for more information.

Apart from these changes, there were lots of little fixes applied. For
example, in some situations the CSI driver would forget to unmount a
volume, effectively creating a stuck resource until the unmount was
executed manually. For more information read the changelogs below.

To support Kubernetes v1.22, the operator switched to using newer
versions of specific Kubernetes APIs. As a consequence, the minimum
supported Kubernetes version is now 1.19.

The fix for microk8s makes it necessary to upgrade the
LinstorCSIDriver CRD. This is not included in the normal upgrade path,
and requires you to run these steps before the actual upgrade:

$ helm repo update
$ helm pull linstor/linstor --untar --version 1.6.0
$ kubectl replace -f linstor/crds/

After this step is done, the usual procedure applies:

$ helm upgrade linstor-op linstor/linstor -f orig.yaml

For more information, please take a look at the upgrade guide[3].
Instructions for 1.6 specifically should be available soon.

Source code is available, as always, upstream at
https://github.com/piraeusdatastore/piraeus-operator

Best regards,
Moritz

[1]: https://artifacthub.io/packages/helm/piraeus-charts/snapshot-controller
[2]: https://github.com/kubernetes/enhancements/tree/master/keps/sig-storage/1472-storage-capacity-tracking
[3]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade

LINSTOR Operator 1.6.0
----------------------
- added: support for Kubernetes 1.22+
- added: `pv-hostpath`: automatically determine on which nodes PVs
should be created if no override is given.
- added: automatically add labels on Kubernetes Nodes to LINSTOR
satellites as Auxiliary Properties.
- added: allow CSI to work with distributions that use a kubelet
working directory other than `/var/lib/kubelet`.
- added: enable Storage Capacity Tacking, usable starting Kubernetes v1.21+ [2]
- changed: enable CSI topology by default, allowing better volume
scheduling with `volumeBindingMode: WaitForFirstConsumer`.
- changed: disable STORK by default. Instead, we recommend using
`volumeBindingMode: WaitForFirstConsumer` in storage classes.
- changed: disable Stork Health Monitoring by default.
- changed: default images:
  * LINSTOR 1.15.0
  * LINSTOR CSI 0.15.0
  * DRBD 9.0.30
  * DRBD Reactor 0.4.4
- removed: the cluster-wide snapshot controller is no longer deployed
as a dependency.
- removed: support for Kubernetes 1.18 or older.

LINSTOR CSI 0.15.0
------------------
- added: new default "AutoPlaceTopology" placement policy.
- added: support for capacity tracking
- added: consistent parameters via "linstor.csi.linbit.com/..." namespacing
