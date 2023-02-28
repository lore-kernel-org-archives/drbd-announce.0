Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com
	[209.85.128.177])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 368204202FA
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Feb 2023 15:23:17 +0100 (CET)
Received: by mail-yw1-f177.google.com with SMTP id
	00721157ae682-536c02c9dfbso276201307b3.11
	for <drbd-announce@lists.linbit.com>;
	Tue, 28 Feb 2023 06:23:17 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 28 Feb 2023 15:23:06 +0100
Message-ID: <CAHmn2DPL9XY4m034uvXqa6VOUYhfU1LU=PxUfces3EJ9T94=aQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000002e85dd05f5c35677"
Subject: [DRBD-announce] linstor-server 1.21.0-rc.1 release
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

--0000000000002e85dd05f5c35677
Content-Type: text/plain; charset="UTF-8"

Hi!

A release candidate for the next feature 1.21 release of linstor is here.
Most notable is that Linstor now automatically will add resync-after
statements
to the drbd configuration (grouped on storage pool). This should help with
faster recovery
if a whole cluster needs to reboot.
And additionally the rs-discard-granularity is also managed based on
lsblk's DISC-GRAN output.
For all additional changes see below:

## linstor-server

### Added

- query-size-info API as a better version of query-max-value-size API
- Linstor now automatically sets the resync-after property for drbd
resources, grouped by storage pools
- Added automatic rs-discard-granularity management based on lsblk's
DISC-GRAN

### Changed

- Added `zfs list` check for ZFS support to ensure that the zfs-utils are
also installed, not just the kmod
- Use recommended command sequence for SED initialization and improve error
recover

### Fixed

- Fixed DRBD size calculations with non-default peer slots
- Fixed aborting Snapshot procedure (make sure resume-io is executed)
- Fixed AutoSnapshot scheduling bug
- Fixed rollback after clearing entire PropsContainers
- Fixed that too many concurrent Snapshots led to unnecessarily long
suspend-io state
- Fixed resource getting activated instead of deactivated in shared-sp

https://pkg.linbit.com//downloads/linstor/linstor-server-1.21.0-rc.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000002e85dd05f5c35677
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<br><div><br></div><div>A release candidate for the nex=
t feature 1.21 release of linstor is here.</div><div>Most notable is that L=
instor now automatically will add resync-after statements</div><div>to the =
drbd configuration (grouped on storage pool). This should help with faster =
recovery</div><div>if a whole cluster needs to reboot.</div><div>And additi=
onally the rs-discard-granularity is also managed based on lsblk&#39;s DISC=
-GRAN output.</div><div>For all additional changes see below:</div><div><br=
></div><div>## linstor-server<br><br>### Added<br><br>- query-size-info API=
 as a better version of query-max-value-size API<br>- Linstor now automatic=
ally sets the resync-after property for drbd resources, grouped by storage =
pools</div><div>-=C2=A0Added automatic rs-discard-granularity management ba=
sed on lsblk&#39;s DISC-GRAN<br><br>### Changed<br><br>- Added `zfs list` c=
heck for ZFS support to ensure that the zfs-utils are also installed, not j=
ust the kmod<br>- Use recommended command sequence for SED initialization a=
nd improve error recover<br><br>### Fixed<br><br>- Fixed DRBD size calculat=
ions with non-default peer slots<br>- Fixed aborting Snapshot procedure (ma=
ke sure resume-io is executed)<br>- Fixed AutoSnapshot scheduling bug<br>- =
Fixed rollback after clearing entire PropsContainers<br>- Fixed that too ma=
ny concurrent Snapshots led to unnecessarily long suspend-io state<br>- Fix=
ed resource getting activated instead of deactivated in shared-sp<br></div>=
<div><br></div><div><div><a href=3D"https://pkg.linbit.com//downloads/linst=
or/linstor-server-1.21.0-rc.1.tar.gz">https://pkg.linbit.com//downloads/lin=
stor/linstor-server-1.21.0-rc.1.tar.gz</a><br></div><div><br></div><div><br=
></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net=
/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_=
blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a>=
</div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div=
></div></div>

--0000000000002e85dd05f5c35677--
