Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
	[209.85.216.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6C1B516B821
	for <drbd-announce@lists.linbit.com>;
	Thu, 20 Mar 2025 09:36:17 +0100 (CET)
Received: by mail-pj1-f53.google.com with SMTP id
	98e67ed59e1d1-2ff694d2d4dso729418a91.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 20 Mar 2025 01:36:17 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 20 Mar 2025 09:36:06 +0100
Message-ID: <CAHmn2DNHjYzbqbhrti=92qgcx8gkpupqHfSvt7oLtGr6q7LRzQ@mail.gmail.com>
Subject: python-linstor/linstor-client 1.25.0 release
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000000af6940630c2084c"
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

--0000000000000af6940630c2084c
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is an updated release for the upcoming linstor-server 1.31.0,
which brings a new column for replication states in the volume list.

## linstor-client
### Changed
- resource-definition-list: add more state values CLONING/FAILED...
- volume-list: show drbd replication state in its own column

### Fixed
- Incorrect environment controllers priority if given by commandline

https://pkg.linbit.com//downloads/linstor/linstor_client-1.25.0.tar.gz

## python-linstor
### Added
- responses: replication_state and done_percentage to volume

https://pkg.linbit.com//downloads/linstor/python_linstor-1.25.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000000af6940630c2084c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Here is=
 an updated release for the upcoming linstor-server 1.31.0,</div><div>which=
 brings a new column for replication states in the volume list.</div><div><=
br></div><div>##=C2=A0linstor-client</div><div>### Changed<br>- resource-de=
finition-list: add more state values CLONING/FAILED...<br>- volume-list: sh=
ow drbd replication state in its own column<br><br>### Fixed<br>- Incorrect=
 environment controllers priority if given by commandline</div><div><br></d=
iv><div><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor_client=
-1.25.0.tar.gz" target=3D"_blank">https://pkg.linbit.com//downloads/linstor=
/linstor_client-1.25.0.tar.gz</a><br></div><br><div>## python-linstor</div>=
<div>### Added<br>- responses: replication_state and done_percentage to vol=
ume</div><div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/l=
instor/python_linstor-1.25.0.tar.gz" target=3D"_blank">https://pkg.linbit.c=
om//downloads/linstor/python_linstor-1.25.0.tar.gz</a><br></div><div><br></=
div><div><div>Linstor=C2=A0PPA:<br></div><div><div><a href=3D"https://launc=
hpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" tar=
get=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-s=
tack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div></d=
iv></div></div>
</div>

--0000000000000af6940630c2084c--
