Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7A3DA160923
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Dec 2025 13:15:58 +0100 (CET)
Received: by mail-pl1-f174.google.com with SMTP id
	d9443c01a7336-298145fe27eso243845ad.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 11 Dec 2025 04:15:58 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 11 Dec 2025 13:15:45 +0100
Message-ID: <CAHmn2DOPySyuPFqCFaYPzh-=H5+TRAT2iMhZQJsxd6o07kMUgw@mail.gmail.com>
Subject: python-linstor/linstor-client 1.27.1 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000688bb10645ac1bfe"
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

--000000000000688bb10645ac1bfe
Content-Type: text/plain; charset="UTF-8"

Hi!

We released a small patch release for python-linstor and linstor-client.

## linstor-client
## [1.27.1] - 2025-12-11

### Added

- Added new alias --drbd-diskless to command "r td" to mimic the option
from "r c"
- Added new sub-command "encryption status" to show the current
locked-state of the controller

https://pkg.linbit.com//downloads/linstor/linstor_client-1.27.1.tar.gz

## python-linstor
## [1.27.1] - 2025-12-10

### Added

- Added api method to check the controller's current encryption state
(locked/unlocked/unset)

https://pkg.linbit.com//downloads/linstor/python_linstor-1.27.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000688bb10645ac1bfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<br><div><br></div><div>We released a small patch relea=
se for python-linstor and linstor-client.</div><div><br></div><div><div>##=
=C2=A0linstor-client</div><div>## [1.27.1] - 2025-12-11<br><br>### Added<br=
><br>- Added new alias --drbd-diskless to command &quot;r td&quot; to mimic=
 the option from &quot;r c&quot;<br>- Added new sub-command &quot;encryptio=
n status&quot; to show the current locked-state of the controller</div><div=
><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/linsto=
r_client-1.27.1.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor_c=
lient-1.27.1.tar.gz</a><br></div><br><div>##=C2=A0python-linstor</div><div>=
## [1.27.1] - 2025-12-10<br><br>### Added<br><br>- Added api method to chec=
k the controller&#39;s current encryption state (locked/unlocked/unset)</di=
v><div><br></div><div><a href=3D"https://pkg.linbit.com//downloads/linstor/=
python_linstor-1.27.1.tar.gz">https://pkg.linbit.com//downloads/linstor/pyt=
hon_linstor-1.27.1.tar.gz</a><br></div><div><br></div><div><div>Linstor=C2=
=A0PPA:<br></div><div><div><a href=3D"https://launchpad.net/~linbit/+archiv=
e/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://l=
aunchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><=
br></div><div>Best regards,</div><div>Rene</div></div></div></div></div>

--000000000000688bb10645ac1bfe--
