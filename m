Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
	[209.85.219.180])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 64CA1420963
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Oct 2022 15:04:47 +0200 (CEST)
Received: by mail-yb1-f180.google.com with SMTP id 126so16885016ybw.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 18 Oct 2022 06:04:47 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 18 Oct 2022 15:04:35 +0200
Message-ID: <CAHmn2DNSgRs0EChj5G54fOQt5xOzCf1vrcxPzndw8xpN9Xhikw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000085c55b05eb4ebc8e"
Subject: [DRBD-announce] linstor-server 1.20.0 final release
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

--00000000000085c55b05eb4ebc8e
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the final release, which adds support for Amazon EBS backed storage
and several fixes to backup-shipping.

Also additional notes for the final release:

Changed property Cluster/LocalId:
We had to re-randomize this property (on controller level) for k8s/CRD
setups. This does NOT affect SQL or ETCD setups.
The Cluster/LocalId is currently only used for linstor-to-linstor backup
shipping. If you have already setup linstor
remotes, you have to update the specified ClusterIds using:
  linstor remote modify linstor <remote_name> --cluster-id
<new_cluster_id_of_remote_cluster>
Please make sure to grab the ClusterId from the remote, not the local
cluster.
If you forget to update the ClusterId you will get an "Unknown cluster"
error on the next "backup ship" attempt.

Deprecation of the OpenFlex layer:
With this release we are deprecating the OpenFlex layer. This has no effect
on the NVMe layer. Complete removal of the OpenFlex layer will be done
through one of the releases in the summer 2023.

Here are the changes since rc1:

## linstor-server
### Added
- Added SnapshotVolumeNode as part of SnapshotNode to include a snapshot
state
- Status of EBS volumes and snapshots are now queried periodically
- Added property DrbdOptions/ForceInitialSync that forces thin resources to
do an initial full sync

### Fixed
- Snapshots and SnapshotVolumes now properly delete their properties +
cleanup migration existing DB entries
- Randomized Cluster/LocalId for CRD setups since all installations had the
same ID
- Backup restore now creates new DRBD metadata and forces the initial sync
to be a full sync

https://pkg.linbit.com//downloads/linstor/linstor-server-1.20.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000085c55b05eb4ebc8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is the final releas=
e, which adds support for Amazon EBS backed storage and several fixes to ba=
ckup-shipping.</div><div><br></div><div>Also additional notes for the final=
 release:</div><div><br></div><div>Changed property Cluster/LocalId:<br>We =
had to re-randomize this property (on controller level) for k8s/CRD setups.=
 This does NOT affect SQL or ETCD setups.<br>The Cluster/LocalId is current=
ly only used for linstor-to-linstor backup shipping. If you have already se=
tup linstor<br>remotes, you have to update the specified ClusterIds using:<=
br>=C2=A0 linstor remote modify linstor &lt;remote_name&gt; --cluster-id &l=
t;new_cluster_id_of_remote_cluster&gt;<br>Please make sure to grab the Clus=
terId from the remote, not the local cluster.<br>If you forget to update th=
e ClusterId you will get an &quot;Unknown cluster&quot; error on the next &=
quot;backup ship&quot; attempt.</div><div><br>Deprecation of the OpenFlex l=
ayer:<br>With this release we are deprecating the OpenFlex layer. This has =
no effect on the NVMe layer. Complete removal of the OpenFlex layer will be=
 done through one of the releases in the summer 2023.<br></div><div><br></d=
iv><div>Here are the changes since rc1:</div><div><br></div><div>## linstor=
-server</div><div>### Added<br>- Added SnapshotVolumeNode as part of Snapsh=
otNode to include a snapshot state<br>- Status of EBS volumes and snapshots=
 are now queried periodically<br>- Added property DrbdOptions/ForceInitialS=
ync that forces thin resources to do an initial full sync<br><br>### Fixed<=
br>- Snapshots and SnapshotVolumes now properly delete their properties + c=
leanup migration existing DB entries<br>- Randomized Cluster/LocalId for CR=
D setups since all installations had the same ID<br>- Backup restore now cr=
eates new DRBD metadata and forces the initial sync to be a full sync<br></=
div><div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linsto=
r/linstor-server-1.20.0.tar.gz">https://pkg.linbit.com//downloads/linstor/l=
instor-server-1.20.0.tar.gz</a><br></div><div><br></div><div><br></div><div=
><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+a=
rchive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">http=
s://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div=
><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div>

--00000000000085c55b05eb4ebc8e--
