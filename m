Return-Path: <rene.peinthor@linbit.com>
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com
	[209.85.219.177])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id EA55B420546
	for <drbd-announce@lists.linbit.com>;
	Fri, 28 Apr 2023 09:14:55 +0200 (CEST)
Received: by mail-yb1-f177.google.com with SMTP id
	3f1490d57ef6-b8f48cd693eso1722755276.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 28 Apr 2023 00:14:55 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 28 Apr 2023 09:14:44 +0200
Message-ID: <CAHmn2DMfTj2ro6j9KDtLt_cDc9sDgLmpwA92iZTc-2TTt1815g@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000dd2c7c05fa603a76"
Subject: [DRBD-announce] linstor-server 1.22.1 release
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

--000000000000dd2c7c05fa603a76
Content-Type: text/plain; charset="UTF-8"

Hi!

Small patch release with only a few fixes:

## [1.22.1] - 2023-04-27

### Fixed

- NodeCon: Fixed compareTo() causing node connection paths loaded
incorrectly.
- LinstorScope does not always enter and exit correctly.
- Make-Available API not correctly upgrading a tiebreaker to a diskless
resource.

https://pkg.linbit.com//downloads/linstor/linstor-server-1.22.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000dd2c7c05fa603a76
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Small patch release with only a few=
 fixes:</div><div><br></div><div>## [1.22.1] - 2023-04-27<br><br>### Fixed<=
br><br>- NodeCon: Fixed compareTo() causing node connection paths loaded in=
correctly.<br>- LinstorScope does not always enter and exit correctly.<br>-=
 Make-Available API not correctly upgrading a tiebreaker to a diskless reso=
urce.<br></div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//=
downloads/linstor/linstor-server-1.22.1.tar.gz">https://pkg.linbit.com//dow=
nloads/linstor/linstor-server-1.22.1.tar.gz</a><br></div><div><br></div><di=
v><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpa=
d.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=
=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stac=
k</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div>=
</div></div></div>

--000000000000dd2c7c05fa603a76--
