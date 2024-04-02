Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
	[209.85.214.169])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 02F9642060E
	for <drbd-announce@lists.linbit.com>;
	Tue,  2 Apr 2024 13:01:35 +0200 (CEST)
Received: by mail-pl1-f169.google.com with SMTP id
	d9443c01a7336-1dd3c6c8dbbso4773735ad.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 02 Apr 2024 04:01:35 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 2 Apr 2024 13:01:23 +0200
Message-ID: <CAHmn2DMzL1pPS3Pu+xH441+j76xcsf7R7rQ-8C+XVOx4mhjyaA@mail.gmail.com>
Subject: python-linstor/linstor-client 1.22.0 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000082787c06151b07a6"
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

--00000000000082787c06151b07a6
Content-Type: text/plain; charset="UTF-8"

Hi,

New python-linstor and linstor client release, that has changes fitting to
the linstor-server 1.27.0 release.

## linstor-client
### Added
- Allow to specify options for list commands in the client config file
- Added --from-file to most list commands to read input data from a file
- Added --volume-passphrase and modify-passphrase options/commands
- Backups added --force-restore option

### Changed
- Default machine-readable output-version is now v1
- Improved command help descriptions

### Removed
- Unused vg l -R option

https://pkg.linbit.com//downloads/linstor/linstor-client-1.22.0.tar.gz

## python-linstor
### Changed
- LinstorApi is now parsing .conf files in /etc/linstor/linstor-client.d
and merging with other client conf

### Fixed
- resource-group list throwing error in curl mode
- volume-group list throwing error in curl mode

https://pkg.linbit.com//downloads/linstor/python-linstor-1.22.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000082787c06151b07a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>New python-linstor and l=
instor client release, that has changes fitting to the linstor-server 1.27.=
0 release.</div><div><br></div><div>##=C2=A0linstor-client</div><div>### Ad=
ded<br>- Allow to specify options for list commands in the client config fi=
le<br>- Added --from-file to most list commands to read input data from a f=
ile<br>- Added --volume-passphrase and modify-passphrase options/commands<b=
r>- Backups added --force-restore option<br><br>### Changed<br>- Default ma=
chine-readable output-version is now v1<br>- Improved command help descript=
ions<br><br>### Removed<br>- Unused vg l -R option<br></div><div><br></div>=
<div><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-client-1.=
22.0.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-client-1.22.=
0.tar.gz</a><br></div><br><div>## python-linstor</div><div>### Changed<br>-=
 LinstorApi is now parsing .conf files in /etc/linstor/linstor-client.d and=
 merging with other client conf<br><br>### Fixed<br>- resource-group list t=
hrowing error in curl mode<br>- volume-group list throwing error in curl mo=
de<br></div><div><br></div><div><a href=3D"https://pkg.linbit.com//download=
s/linstor/python-linstor-1.22.0.tar.gz">https://pkg.linbit.com//downloads/l=
instor/python-linstor-1.22.0.tar.gz</a><br></div><div><br></div><div><div>L=
instor=C2=A0PPA:<br></div><div><div><a href=3D"https://launchpad.net/~linbi=
t/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">=
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></d=
iv><div><br></div><div>Best regards,</div><div>Rene</div></div></div></div>

--00000000000082787c06151b07a6--
