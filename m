Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
	[209.85.216.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2BB0E16278F
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Nov 2025 15:40:48 +0100 (CET)
Received: by mail-pj1-f51.google.com with SMTP id
	98e67ed59e1d1-3434700be69so5696966a91.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Nov 2025 06:40:48 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 11 Nov 2025 15:40:35 +0100
Message-ID: <CAHmn2DPDghNyW5_UJMOL1eCNW9k7ZYZjYprio9XzVswXA6uVSQ@mail.gmail.com>
Subject: python-linstor/linstor-client 1.27.0 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000234f62064352a22b"
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

--000000000000234f62064352a22b
Content-Type: text/plain; charset="UTF-8"

Hi!

Also a new python-linstor and linstor-client release, with adaptations for
the new Linstor 1.33.0 release.

## linstor-client
## [1.27.0] - 2025-11-11

### Added

- Added new option to "backup ship": --source-snapshot
- Added new option to "backup ship": --full
- Added new alias for "backup create -s": --source-snapshot
- Added --target and --do-not-target to 'node evacuate'
- from-file parameter to resource-definition list and list-properties
- from-file parameter to node lp and resource-group lp

### Fixed

- Fixed help-text for "backup restore --snapshot"

https://pkg.linbit.com//downloads/linstor/linstor_client-1.27.0.tar.gz

## python-linstor
## [1.27.0] - 2025-11-11

### Added

- Added missing resource_dfn_clone() arguments to Resource.clone()
- Added optional parameter snapshot to backup_abort
- Added optional parameter force_full to backup_ship
- Added optional parameter src_snap to backup_ship
- Added optional parameter target to node_evacuate
- Added optional parameter do_not_target to node_evacuate

### Changed

- Fixed handling of clone api error status codes

https://pkg.linbit.com//downloads/linstor/python_linstor-1.27.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000234f62064352a22b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Also a =
new python-linstor and linstor-client release, with adaptations for the new=
 Linstor 1.33.0 release.</div><div><br></div><div>##=C2=A0linstor-client</d=
iv><div>## [1.27.0] - 2025-11-11<br><br>### Added<br><br>- Added new option=
 to &quot;backup ship&quot;: --source-snapshot<br>- Added new option to &qu=
ot;backup ship&quot;: --full<br>- Added new alias for &quot;backup create -=
s&quot;: --source-snapshot<br>- Added --target and --do-not-target to &#39;=
node evacuate&#39;<br>- from-file parameter to resource-definition list and=
 list-properties<br>- from-file parameter to node lp and resource-group lp<=
br><br>### Fixed<br><br>- Fixed help-text for &quot;backup restore --snapsh=
ot&quot;</div><div><br></div><div><a href=3D"https://pkg.linbit.com//downlo=
ads/linstor/linstor_client-1.27.0.tar.gz" target=3D"_blank">https://pkg.lin=
bit.com//downloads/linstor/linstor_client-1.27.0.tar.gz</a><br></div><br><d=
iv>##=C2=A0<span>python</span>-linstor</div><div>## [1.27.0] - 2025-11-11<b=
r><br>### Added<br><br>- Added missing resource_dfn_clone() arguments to Re=
source.clone()<br>- Added optional parameter snapshot to backup_abort<br>- =
Added optional parameter force_full to backup_ship<br>- Added optional para=
meter src_snap to backup_ship<br>- Added optional parameter target to node_=
evacuate<br>- Added optional parameter do_not_target to node_evacuate<br><b=
r>### Changed<br><br>- Fixed handling of clone api error status codes</div>=
<div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/py=
thon_linstor-1.27.0.tar.gz" target=3D"_blank">https://pkg.linbit.com//downl=
oads/linstor/python_linstor-1.27.0.tar.gz</a><br></div><div><br></div><div>=
<div>Linstor=C2=A0PPA:<br></div><div><div><a href=3D"https://launchpad.net/=
~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_b=
lank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><=
br></div><div><br></div><div>Best regards,</div><div>Rene</div></div></div>=
</div>
</div>

--000000000000234f62064352a22b--
