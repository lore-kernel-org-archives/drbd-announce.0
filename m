Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
	[209.85.216.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 332C6160987
	for <drbd-announce@lists.linbit.com>;
	Tue,  8 Apr 2025 13:29:52 +0200 (CEST)
Received: by mail-pj1-f54.google.com with SMTP id
	98e67ed59e1d1-306bf444ba2so1994432a91.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 08 Apr 2025 04:29:51 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 8 Apr 2025 13:29:39 +0200
Message-ID: <CAHmn2DMcXDQKfgbMtWacQ34qCopYnkdGszfnW8gVJQaXaEbjGg@mail.gmail.com>
Subject: python-linstor/linstor-client 1.25.3(2) release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000b8d965063242abfb"
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

--000000000000b8d965063242abfb
Content-Type: text/plain; charset="UTF-8"

Hi!

Some small API changes were necessary for the final 1.31.0 linstor-server
release
and those changes have been adapted with these releases.

## linstor-client
## [1.25.3] - 2025-04-08

### Fixed

- volume-list: show empty replication states if there is no data provided

## [1.25.2] - 2025-04-08

### Changed

- replication column is now resolved by checking the replication_states map
- added --hide-replication-states column option to v l and r lv

https://pkg.linbit.com//downloads/linstor/linstor_client-1.25.3.tar.gz

## python-linstor
## [1.25.2] - 2025-04-08

### Changed

- remove replication_state and done_percentage, but added instead
replication_states

## [1.25.1] - 2025-04-02

### Fixed

- Correctly encode all rest url path calls

https://pkg.linbit.com//downloads/linstor/python_linstor-1.25.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000b8d965063242abfb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Some small API changes w=
ere necessary for the final 1.31.0 linstor-server release</div><div>and tho=
se changes have been adapted with these releases.</div><div><br></div><div>=
## linstor-client</div><div>## [1.25.3] - 2025-04-08<br><br>### Fixed<br><b=
r>- volume-list: show empty replication states if there is no data provided=
<br><br>## [1.25.2] - 2025-04-08<br><br>### Changed<br><br>- replication co=
lumn is now resolved by checking the replication_states map<br>- added --hi=
de-replication-states column option to v l and r lv</div><div><br></div><di=
v><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor_client-1.25.=
3.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor_client-1.25.3.t=
ar.gz</a><br></div><br><div>## python-linstor</div><div>## [1.25.2] - 2025-=
04-08<br><br>### Changed<br><br>- remove replication_state and done_percent=
age, but added instead replication_states<br><br>## [1.25.1] - 2025-04-02<b=
r><br>### Fixed<br><br>- Correctly encode all rest url path calls</div><div=
><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/python=
_linstor-1.25.2.tar.gz">https://pkg.linbit.com//downloads/linstor/python_li=
nstor-1.25.2.tar.gz</a><br></div><div><br></div><div><div>Linstor=C2=A0PPA:=
<br></div><div><div><a href=3D"https://launchpad.net/~linbit/+archive/ubunt=
u/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpa=
d.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></di=
v><div>Best regards,</div><div>Rene</div></div></div></div>

--000000000000b8d965063242abfb--
