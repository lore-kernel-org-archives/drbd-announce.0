Return-Path: <rene.peinthor@linbit.com>
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
	[209.85.218.46])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 5281A4205C8
	for <drbd-announce@lists.linbit.com>;
	Tue, 20 Sep 2022 16:09:30 +0200 (CEST)
Received: by mail-ej1-f46.google.com with SMTP id dv25so6366712ejb.12
	for <drbd-announce@lists.linbit.com>;
	Tue, 20 Sep 2022 07:09:30 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 20 Sep 2022 16:09:18 +0200
Message-ID: <CAHmn2DODAaEZqowPwn+esUVcDUiYh_La_Zi=32q+ftf=+8GQ4g@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000067159e05e91c60f1"
Subject: [DRBD-announce] linstor-server 1.20.0-rc.1
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

--00000000000067159e05e91c60f1
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the first release candidate of the upcoming 1.20.0 release, which
adds support
for Amazon EBS backed storage and several fixes to backup-shipping.

More details can be found in the changelog below:

## linstor-server
### Added

* Added basic support for [SED](
https://trustedcomputinggroup.org/resource/self-encrypting-drives-sed-overview/
)
* Added support for Amazon EBS storage
* Added ignore reason for storage layers. Used to skip processing resource
which would fail anyway.

### Changed

* Improved DB-update-logging
* ZFS: only scan datasets used by Linstor
* Improved auto-diskful mechanic, also removing exceeding replicas

### Fixed

* Fixed backup with mixing internal and external metadata
* Fixed storage-pool size-check on snapshot restore
* Fixed several issues with backup-shipping (NPE, failed shippings, ...)
* Fixed auto snapshot not working after controller restart
* Fixed "LinStor" spelling errors
* Fixed PropsCon concurrentModExc
* Fixed very long k8s CRD DB backend Controller loading time

https://pkg.linbit.com//downloads/linstor/linstor-server-1.20.0-rc.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000067159e05e91c60f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is the first releas=
e candidate of the upcoming 1.20.0 release, which adds support</div><div>fo=
r Amazon EBS backed storage and several fixes to backup-shipping.</div><div=
><br></div><div>More details can be found in the changelog below:</div><div=
><br></div><div>## linstor-server</div><div>### Added<br><br>* Added basic =
support for [SED](<a href=3D"https://trustedcomputinggroup.org/resource/sel=
f-encrypting-drives-sed-overview/">https://trustedcomputinggroup.org/resour=
ce/self-encrypting-drives-sed-overview/</a>)<br>* Added support for Amazon =
EBS storage<br>* Added ignore reason for storage layers. Used to skip proce=
ssing resource which would fail anyway.<br><br>### Changed<br><br>* Improve=
d DB-update-logging<br>* ZFS: only scan datasets used by Linstor<br>* Impro=
ved auto-diskful mechanic, also removing exceeding replicas<br><br>### Fixe=
d<br><br>* Fixed backup with mixing internal and external metadata<br>* Fix=
ed storage-pool size-check on snapshot restore<br>* Fixed several issues wi=
th backup-shipping (NPE, failed shippings, ...)<br>* Fixed auto snapshot no=
t working after controller restart<br>* Fixed &quot;LinStor&quot; spelling =
errors<br>* Fixed PropsCon concurrentModExc<br>* Fixed very long k8s CRD DB=
 backend Controller loading time<br></div><div><br></div><div><a href=3D"ht=
tps://pkg.linbit.com//downloads/linstor/linstor-server-1.20.0-rc.1.tar.gz">=
https://pkg.linbit.com//downloads/linstor/linstor-server-1.20.0-rc.1.tar.gz=
</a><br></div><div><br></div><div><br></div><div><div><div><div>Linstor PPA=
:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-=
stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+=
archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers=
,<br></div><div>Rene</div></div></div></div>

--00000000000067159e05e91c60f1--
