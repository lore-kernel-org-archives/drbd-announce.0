Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1F13D420383
	for <drbd-announce@lists.linbit.com>;
	Tue, 30 Jun 2020 15:58:03 +0200 (CEST)
Received: by mail-ed1-f54.google.com with SMTP id h28so16342816edz.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 30 Jun 2020 06:58:03 -0700 (PDT)
Received: from x1-carbon ([2001:858:107:1:eceb:35a3:c509:8586])
	by smtp.gmail.com with ESMTPSA id
	i33sm2855144edi.21.2020.06.30.06.58.02
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 30 Jun 2020 06:58:02 -0700 (PDT)
Date: Tue, 30 Jun 2020 15:57:55 +0200
From: Moritz =?iso-8859-1?q?Wanzenb=F6ck?= <moritz.wanzenboeck@linbit.com>
To: drbd-announce@lists.linbit.com
Message-Id: <J4SQCQ.GLZ85HZWAMGZ2@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable
Subject: [DRBD-announce] linstor-operator v0.5.0 release
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

We are pleased to announce version v0.5.0 of linstor-operator, our=20
all-in-one
package for gettings started with LINSTOR on Kubernetes. This is the=20
first
release to feature on this mailing list, so if you are unfamiliar with=20
the
project, we recommend you check out the user guide section on=20
Kubernetes[1].

For those already following the project, this new release focuses on=20
providing
an all-in-one deployment for all LINSTOR features, ready for=20
Kubernetes. To this
end, various components that required manual installation can now be=20
configured
by linstor-operator. You can find a detailed list of changes below.

Upstream code can be found here[2].

Best regards,
Moritz


Changelog:
* Kubernetes Volume Expansion:
  linstor-operator now installs the required controllers for this=20
feature.
  This feature requires support from Kubernetes, enabled by default=20
since v1.16
  See [3]
* Kubernetes Volume Snapshots:
  Snapshots can be created via Kubernetes resources, and restored to=20
new PV.
  linstor-operator now installs the required controllers for this=20
feature.
  This feature requires support from Kubernetes, enabled by default=20
since v1.17
  See [4] and [5]
* Stork:
  LINSTOR can integrate with the Stork[6] project to aid Kubernetes in
  scheduling pods near their volumes. linstor-operator now installs a
  new scheduler that integrates with LINSTOR.
  See [7]
* new option for `drbdKernelModuleInjectionMode`: `DepsOnly`:
  Previously, kernel module loading was an "all-or-nothing" decision.
  `Compile`/`ShippedModules` would try to load all modules, `None`=20
would not
  load any modules at all. `DepsOnly` tries to load all modules, but=20
only those
  already installed on the host machine.
  See [8]
* new etcd deployment:
  linstor-operator comes packaged with an `etcd` deployment to get=20
started.
  The previous deployment operator had difficulties recovering from=20
failed
  nodes. The new version is more robust in case of temporary loss of=20
nodes.
  Some important keys for the `etcd` helm chart have changed:
  * `statefulset.replicaCount` -> `replicas`
  * `persistence.enabled` -> `persistentVolume.enabled`
  * `persistence.size` -> `persistentVolume.storage`
  * `=E0uth.rbac` was removed: use tls certificates.
  * `auth.peer.useAutoTLS` was removed
  * `envVarsConfigMap` was removed
  * When using etcd with TLS enabled:
    * For peer communication, peers need valid certificates for=20
`*.<release-name>-etcd` (was=20
`.<release-name>>-etcd-headless.<namespace>.svc.cluster.local`)
    * For client communication, servers need valid certificates for=20
`*.<release-name>-etcd` (was=20
`.<release-name>>-etcd.<namespace>.svc.cluster.local`)

[1]:=20
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#ch-kubernetes
[2]: https://github.com/piraeusdatastore/piraeus-operator
[3]:=20
https://kubernetes.io/docs/concepts/storage/persistent-volumes/#csi-volume-=
expansion
[4]:=20
https://kubernetes.io/docs/concepts/storage/persistent-volumes/#volume-snap=
shot-and-restore-volume-from-snapshot-support
[5]:=20
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-s=
napshots
[6]: https://github.com/libopenstorage/stork
[7]:=20
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-s=
tork
[8]:=20
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-d=
eploy



