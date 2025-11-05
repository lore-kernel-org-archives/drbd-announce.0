Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 96DD31622C8
	for <drbd-announce@lists.linbit.com>;
	Wed,  5 Nov 2025 16:18:19 +0100 (CET)
Received: by mail-wm1-f42.google.com with SMTP id
	5b1f17b1804b1-47755a7652eso16199845e9.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 05 Nov 2025 07:18:19 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Wed, 5 Nov 2025 16:18:06 +0100
Message-ID: <CAKnz9xJmZKTOti5Gw-Rr6CyWsLxrti=b6HB79eJLznXsMeDCfA@mail.gmail.com>
Subject: LINSTOR Operator 2.10.0
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
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

We've recently released version 2.10.0 of our Kubernetes Operator.

This is the biggest release since the original Operator v2 back in
2023! Version v2.10.0 brings long awaited support for ReadWriteMany
(RWX) volumes, along with Volume Group Snapshot support, integrations
for Cluster API and more.

First, RWX support is finally here. In order to use it after upgrading
to v2.10.0, create a new PersistentVolumeClaim with "ReadWriteMany"
access mode. Internally, this will spawn a new NFS server process,
managed and made highly available using DRBD Reactor. Since we use
DRBD Reactor, the volume needs to be configured for quorum (or
fencing), so generally, 2 replicas are required. In addition, since
NFS is used, do not expect the matching performance compared to
ReadWriteOnce volumes.

There are some things we expect to not fully work with RWX volumes,
notably restoring a snapshot of such a volume. We are working on
lifting this limitation, but we feel like the new feature already
provides enough value to release right now.

Secondly, we now support the Volume Group Snapshot[1] feature. This
allows you to take consistent snapshots of multiple volumes, even when
they are not used on the same nodes.

Thirdly, we now integrate with the Machine Deletion Process[2] of
Cluster API. This ensures clean node evacuation while performing
rolling updates, letting one node drain, ensuring data is fully moved
off the node before deletion. This requires deployment of the LINSTOR
Affinity Controller, which is now deployed automatically by the
Operator. If you previously used to install it via the Helm Chart,
please remove the Helm release.

Lastly, we improved the status output of various "kubectl" commands
when viewing operator resources such as "LinstorCluster" and
"LinstorSatelliteConfiguration".

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.10.0.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait

To get specific instructions to apply the update, check our users guide[3].

If you need to upgrade from Operator v1, check out our upgrade guide[4].

Source code is, as always, available upstream[5].

Best regards,
Moritz

[1]: https://kubernetes.io/blog/2024/12/18/kubernetes-1-32-volume-group-snapshot-beta/
[2]: https://cluster-api.sigs.k8s.io/tasks/automated-machine-management/machine_deletions
[3]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[4]: https://charts.linstor.io/migration/
[5]: https://github.com/piraeusdatastore/piraeus-operator

Operator v2.10.0 Changelog
-------------------------------------
### Added

- Deploy LINSTOR Affinity Controller as part of LINBIT SDS.
- Add option to set replica count for Deployment components.
- Integration with ClusterAPI to enable graceful node evacuation in
case of rolling machine updates.
- Additional status information on `LinstorCluster`,
`LinstorSatelliteConfiguration` and `LinstorSatellite` resources.
- Support for Volume Group Snapshots
- Support for RWX file systems using regular LINSTOR CSI volumes.

### Changed

- Set `shareProcessNamespace: true` on workloads to automatically reap
orphaned processes.
- LINSTOR CSI now uses `hostNetwork: true` so RWX mounts use a stable
IP when connecting to NFS.
- Updated images:
    * LINSTOR 1.32.3
    * LINSTOR CSI 1.10.1
    * DRBD Reactor 1.10.0
    * DRBD Shutdown Guard: 1.1.1
    * LINSTOR HA Controller 1.3.1
    * Latest CSI sidecars
