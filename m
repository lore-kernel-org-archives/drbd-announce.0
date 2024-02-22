Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
	[209.85.215.181])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id AC6FB420220
	for <drbd-announce@lists.linbit.com>;
	Thu, 22 Feb 2024 08:45:46 +0100 (CET)
Received: by mail-pg1-f181.google.com with SMTP id
	41be03b00d2f7-55b5a37acb6so2298993a12.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 21 Feb 2024 23:45:46 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 22 Feb 2024 08:45:33 +0100
Message-ID: <CAHmn2DOmN5c0btNpde8ZNqzSyB5ZoDy_=y1BK39Mw-QU+OY-sg@mail.gmail.com>
Subject: linstor-server 1.26.1 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000007e53730611f3a17a"
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

--0000000000007e53730611f3a17a
Content-Type: text/plain; charset="UTF-8"

Hi!

A new patch release is out and I would recommend anyone to upgrade,
as this release is packed with fixes and performance improvements.

## [1.26.1] - 2024-02-22

### Changed

- LVM: Removed trailing 'a|.*|' from LVM filter
- Do not write/check drbd resource files if nothing changed
- RG spawn: No longer display "TransactionList" when spawn fails
- Sp,Props: Do not trigger a DevMgrRun for certain property changes
- Tiebreaker: Allow in all even-numbered (>0) diskful and 0 diskless setups
- Improved error message when FullSync fails due to missing external tools
- SOS-report: add more information output (lvs, zfs list, client output....)
- ProblemReports now also get added to the error-database (i.e. will show
in up "err list")
- Snapshots: allow taking snapshot if at least one diskfull node is online

### Fixed

- Do not update satellites that are evicted
- Node/Restore: Fixed resource kept in inactive state until controller
restart
- Node/Restore: Fixed node not connected on node restore
- Luks: Allow deletion without entered master-passphrase
- SysFs: Warn if /sys/fs/cgroup/blkio does not exist
- When evacuating or migrating an InUse resources, wait until the resource
is no longer in-use to remove resource.
- Restoring a pre-SP-mixing-backup into an SP mixing scenario
- SpMixing: ZFS <-> ZFS_THIN is no longer considered as mixed SP
- Encryption: don't create error-reports for user errors

https://pkg.linbit.com//downloads/linstor/linstor-server-1.26.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000007e53730611f3a17a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>A new patch release=C2=A0is out and=
 I would recommend anyone to upgrade,</div><div>as this release is packed w=
ith fixes and performance improvements.</div><div><br></div><div>## [1.26.1=
] - 2024-02-22<br><br>### Changed<br><br>- LVM: Removed trailing &#39;a|.*|=
&#39; from LVM filter<br>- Do not write/check drbd resource files if nothin=
g changed<br>- RG spawn: No longer display &quot;TransactionList&quot; when=
 spawn fails<br>- Sp,Props: Do not trigger a DevMgrRun for certain property=
 changes<br>- Tiebreaker: Allow in all even-numbered (&gt;0) diskful and 0 =
diskless setups<br>- Improved error message when FullSync fails due to miss=
ing external tools<br>- SOS-report: add more information output (lvs, zfs l=
ist, client output....)<br>- ProblemReports now also get added to the error=
-database (i.e. will show in up &quot;err list&quot;)<br>- Snapshots: allow=
 taking snapshot if at least one diskfull node is online<br><br>### Fixed<b=
r><br>- Do not update satellites that are evicted<br>- Node/Restore: Fixed =
resource kept in inactive state until controller restart<br>- Node/Restore:=
 Fixed node not connected on node restore<br>- Luks: Allow deletion without=
 entered master-passphrase<br>- SysFs: Warn if /sys/fs/cgroup/blkio does no=
t exist<br>- When evacuating or migrating an InUse resources, wait until th=
e resource is no longer in-use to remove resource.<br>- Restoring a pre-SP-=
mixing-backup into an SP mixing scenario<br>- SpMixing: ZFS &lt;-&gt; ZFS_T=
HIN is no longer considered as mixed SP<br>- Encryption: don&#39;t create e=
rror-reports for user errors<br></div><div><br></div><div><div><a href=3D"h=
ttps://pkg.linbit.com//downloads/linstor/linstor-server-1.26.1.tar.gz">http=
s://pkg.linbit.com//downloads/linstor/linstor-server-1.26.1.tar.gz</a><br><=
/div><div><br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a h=
ref=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" re=
l=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/u=
buntu/linbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></di=
v><div>Rene</div></div></div></div></div>

--0000000000007e53730611f3a17a--
