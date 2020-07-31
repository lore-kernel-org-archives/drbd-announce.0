Return-Path: <gabor.hernadi@linbit.com>
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com
	[209.85.221.172])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 405414203D2
	for <drbd-announce@lists.linbit.com>;
	Fri, 31 Jul 2020 10:12:56 +0200 (CEST)
Received: by mail-vk1-f172.google.com with SMTP id b6so5259523vkb.6
	for <drbd-announce@lists.linbit.com>;
	Fri, 31 Jul 2020 01:12:56 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?R8OhYm9yIEhlcm7DoWRp?= <gabor.hernadi@linbit.com>
Date: Fri, 31 Jul 2020 10:11:45 +0200
Message-ID: <CAL16tNa=ZKuY6YOOk0QpXiGvQtHDjmMPimU5xxjhdsoReTqBVg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000a25f7605abb85729"
Subject: [DRBD-announce] linstor-server 1.8.0-rc1
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

--000000000000a25f7605abb85729
Content-Type: text/plain; charset="UTF-8"

Hi!

This release-candidate contains the following new features:

* SOS-report: using "linstor sos-report create" and afterwards the
"download" subcommand, Linstor can now generate a tar.gz containing
machine- and Linstor-specific information, log files, error reports
and such.
* Snapshot-shipping[1]: Linstor can now ship newly created snapshots
from one Linstor resource to another using 'zfs send' / 'zfs receive'
for ZFS or 'thin_send' / 'thin_recv' for LVM. Both tools support
incremental shipment. Additionally Linstor can be configured with
auto-snapshot-shipping as well as auto-snapshots (without shipping)

NOTE: LVM-based snapshot-shipping requires the 'thin_send_recv' tool
to be installed which is available from the PPA as well as from
https://packages.linbit.com/public/

linstor-server 1.8.0-rc1
------------------------
* Logging to rest-access.log is now disabled by default
* only update satellites if properties really changed
* allow to set, controller/satellite settings via REST API
* Skip initial DRBD-sync on VDOs
* No ErrorReports for typos and other "user-mistakes"
* LvmProvider also activates LVs (similar as LvmThinProvider does)
* Add Prometheus `/metrics` url with reporting
* Add Sentry integration to capture error info
* Add modifying resource definition resource group linking
* Error-reports are now additionally stored in a local h2 sql db, with more
info
* Shrinking of volumes (ATTENTION: make sure to first shrink anything
above Linstor, i.e. the filesystem, or you risk LOSING DATA)
* Fixed parsing version numbers of 'losetup' and 'lvm'
* Simplify storage pool create property to a single one
* Added 'StorDriver/LvcreateOptions' property
* Do not bind controller protobuf Plain/SSL-Connector
* SysFsHandler now throttles only data-devices instead of meta-devices
* REST-API v1.2.0

https://www.linbit.com/downloads/linstor/linstor-server-1.8.0.rc1.tar.gz

Linstor PPA:

https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Gabor

[1]
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-shipping_snapshots-linstor

--000000000000a25f7605abb85729
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<br><br>This release-candidate contains the following n=
ew features:<br><br>* SOS-report: using &quot;linstor sos-report create&quo=
t; and afterwards the<br>&quot;download&quot; subcommand, Linstor can now g=
enerate a tar.gz containing<br>machine- and Linstor-specific information, l=
og files, error reports<br>and such.<br>* Snapshot-shipping[1]: Linstor can=
 now ship newly created snapshots<br>from one Linstor resource to another u=
sing &#39;zfs send&#39; / &#39;zfs receive&#39;<br>for ZFS or &#39;thin_sen=
d&#39; / &#39;thin_recv&#39; for LVM. Both tools support<br>incremental shi=
pment. Additionally Linstor can be configured with<br>auto-snapshot-shippin=
g as well as auto-snapshots (without shipping)<br><br>NOTE: LVM-based snaps=
hot-shipping requires the &#39;thin_send_recv&#39; tool<br>to be installed =
which is available from the PPA as well as from <br><a href=3D"https://pack=
ages.linbit.com/public/">https://packages.linbit.com/public/</a><br><br>lin=
stor-server 1.8.0-rc1<br>------------------------<br>* Logging to rest-acce=
ss.log is now disabled by default<br>* only update satellites if properties=
 really changed<br>* allow to set, controller/satellite settings via REST A=
PI<br>* Skip initial DRBD-sync on VDOs<br>* No ErrorReports for typos and o=
ther &quot;user-mistakes&quot;<br>* LvmProvider also activates LVs (similar=
 as LvmThinProvider does)<br>* Add Prometheus `/metrics` url with reporting=
<br>* Add Sentry integration to capture error info<br>* Add modifying resou=
rce definition resource group linking<br>* Error-reports are now additional=
ly stored in a local h2 sql db, with more info<br>* Shrinking of volumes (A=
TTENTION: make sure to first shrink anything<br>above Linstor, i.e. the fil=
esystem, or you risk LOSING DATA)<br>* Fixed parsing version numbers of &#3=
9;losetup&#39; and &#39;lvm&#39;<br>* Simplify storage pool create property=
 to a single one<br>* Added &#39;StorDriver/LvcreateOptions&#39; property<b=
r>* Do not bind controller protobuf Plain/SSL-Connector<br>* SysFsHandler n=
ow throttles only data-devices instead of meta-devices<br>* REST-API v1.2.0=
<br><br><a href=3D"https://www.linbit.com/downloads/linstor/linstor-server-=
1.8.0.rc1.tar.gz">https://www.linbit.com/downloads/linstor/linstor-server-1=
.8.0.rc1.tar.gz</a><br><br>Linstor PPA:<br><br><a href=3D"https://launchpad=
.net/~linbit/+archive/ubuntu/linbit-drbd9-stack">https://launchpad.net/~lin=
bit/+archive/ubuntu/linbit-drbd9-stack</a><br><br>Best regards,<br>Gabor<br=
><br>[1] <a href=3D"https://www.linbit.com/drbd-user-guide/linstor-guide-1_=
0-en/#s-shipping_snapshots-linstor">https://www.linbit.com/drbd-user-guide/=
linstor-guide-1_0-en/#s-shipping_snapshots-linstor</a><br><br><br></div>

--000000000000a25f7605abb85729--
