Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
	[209.85.216.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id AC32A4252A4
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Aug 2023 11:50:11 +0200 (CEST)
Received: by mail-pj1-f49.google.com with SMTP id
	98e67ed59e1d1-267f32e89a5so100445a91.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Aug 2023 02:50:11 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 10 Aug 2023 11:49:59 +0200
Message-ID: <CAHmn2DMHHOwoSAE8FXA7CN_KVHKgOmsFbHQeZu98XMMA9rQUzQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000009d03ad06028e859a"
Subject: [DRBD-announce] linstor-server 1.24.1 release
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

--0000000000009d03ad06028e859a
Content-Type: text/plain; charset="UTF-8"

Hi!

One of our k8s/crd backend users hit a bug if he had too many objects in
the rollback
transaction, we fixed this with this release and another problem with etcd
importing.

## [1.24.1] - 2023-08-10

### Fixed

- K8s,Crd: limit number of entries in rollback resource
- gradle: on rhel based systems force to use java-11 jre
- ETCD,import: Convert Date to long

https://pkg.linbit.com//downloads/linstor/linstor-server-1.24.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000009d03ad06028e859a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>One of our k8s/crd backend users hi=
t a bug if he had too many objects in the rollback</div><div>transaction, w=
e fixed this with this release and another problem with etcd importing.</di=
v><div><br></div><div>## [1.24.1] - 2023-08-10<br><br>### Fixed<br><br>- K8=
s,Crd: limit number of entries in rollback resource<br>- gradle: on rhel ba=
sed systems force to use java-11 jre<br>- ETCD,import: Convert Date to long=
<br></div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//downl=
oads/linstor/linstor-server-1.24.1.tar.gz">https://pkg.linbit.com//download=
s/linstor/linstor-server-1.24.1.tar.gz</a><br></div><div><br></div><div><br=
></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net=
/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_=
blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a>=
</div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div=
></div></div>

--0000000000009d03ad06028e859a--
