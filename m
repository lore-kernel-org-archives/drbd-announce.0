Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 68E8F16087E
	for <drbd-announce@lists.linbit.com>;
	Tue, 16 Sep 2025 13:50:01 +0200 (CEST)
Received: by mail-pf1-f177.google.com with SMTP id
	d2e1a72fcca58-77b0a93e067so257412b3a.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 16 Sep 2025 04:50:00 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 16 Sep 2025 13:49:49 +0200
Message-ID: <CAHmn2DMxcS0JftNTLH+3xXK8Y92sJBGPEx_PsLRt3JjNFRursg@mail.gmail.com>
Subject: linstor-server 1.32.1 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000003ebc1a063ee9b86a"
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

--0000000000003ebc1a063ee9b86a
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is a first and early patch release for Linstor 1.32, as we got aware
that the ETCD migration had a bug with the new tcp port number handling.
We also fixed a few smaller bugs, like missing connection states after
reconnect and unnecessary resource adjusts with DRBD.

## NOTE
With this release we also announce that we will remove etcd database
support with Linstor 1.34.0, until then you will have time to migrate to
(SQL or k8s-CRD) databases.

## [1.32.1] - 2025-09-16

### Changed

- S3: Reduce max-parts from 10.000 to 1.000 to better support non-AWS S3
implementations

### Fixed

- node evacuate: if the node had the tiebreaker, tiebreaker creation was
accidentally disabled
- ETCD, TcpPort migration: Do not delete old port from
LAYER_DRBD_RESOURCE_DEFINITION
- ETCD, TcpPort migration: Fix incorrect nullcheck
- Rsc,list: JSON now contains .layer_object.drbd.connections after reconnect
- Fixed incorrect props_instance for Volume properties within a
SnapshotVolume
- DRBD: Fixed still too eager "requires adjust" settings

https://pkg.linbit.com//downloads/linstor/linstor-server-1.32.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000003ebc1a063ee9b86a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is a first and early patch rel=
ease for Linstor 1.32, as we got aware that the ETCD migration had a bug wi=
th the new tcp port number handling.</div><div>We also fixed a few smaller =
bugs, like missing connection states after reconnect and unnecessary resour=
ce adjusts with DRBD.</div><div><br></div><div>## NOTE</div><div>With this =
release we also announce that we will remove etcd database support with Lin=
stor 1.34.0, until then you will have time to migrate to (SQL or k8s-CRD) d=
atabases.=C2=A0</div><div></div><div><br></div><div>## [1.32.1] - 2025-09-1=
6<br><br>### Changed<br><br>- S3: Reduce max-parts from 10.000 to 1.000 to =
better support non-AWS S3 implementations<br><br>### Fixed<br><br>- node ev=
acuate: if the node had the tiebreaker, tiebreaker creation was accidentall=
y disabled<br>- ETCD, TcpPort migration: Do not delete old port from LAYER_=
DRBD_RESOURCE_DEFINITION<br>- ETCD, TcpPort migration: Fix incorrect nullch=
eck<br>- Rsc,list: JSON now contains .layer_object.drbd.connections after r=
econnect<br>- Fixed incorrect props_instance for Volume properties within a=
 SnapshotVolume<br>- DRBD: Fixed still too eager &quot;requires adjust&quot=
; settings</div><div><br></div><div><div><a href=3D"https://pkg.linbit.com/=
/downloads/linstor/linstor-server-1.32.1.tar.gz">https://pkg.linbit.com//do=
wnloads/linstor/linstor-server-1.32.1.tar.gz</a><br></div><div><br></div><d=
iv><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchp=
ad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" targe=
t=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-sta=
ck</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div=
></div></div></div>

--0000000000003ebc1a063ee9b86a--
