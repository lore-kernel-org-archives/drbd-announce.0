Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7AA46420225
	for <drbd-announce@lists.linbit.com>;
	Wed, 30 Aug 2023 09:10:18 +0200 (CEST)
Received: by mail-pf1-f170.google.com with SMTP id
	d2e1a72fcca58-68a3d2ff211so600532b3a.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 30 Aug 2023 00:10:18 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 30 Aug 2023 09:10:05 +0200
Message-ID: <CAHmn2DNda2y9dWAt-giyNvwaPwWu-nehoRqfu4hPZiVeic12MQ@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000009d628706041e9ea3"
Subject: [DRBD-announce] linstor-server 1.24.2 release
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

--0000000000009d628706041e9ea3
Content-Type: text/plain; charset="UTF-8"

Hi All!

Another bug fix release, to name probably the most prominent of fix is,
fixing the controller hanging on multiple parallel snapshot shippings.

## [1.24.2] - 2023-08-30

### Changed

- Improve wrapped DelayedApiException error reporting
- Improve logging on deleting for volumes/snapshots
- Increase timeout for sos create tar command

### Fixed

- Fix "attempt to replace active transMgr" due to unclean core-maps
- Reassigning resource-definition to new resource-group had no effect on
satellite
- Use correct java-11 on sles based systems
- Fixed node reconnect scope already entered bug
- Do not create error reports for no connection to satellite errors
- Use timeout 0, to workaround missing setsid -w on old systems
- Backup: Fix possible NPE on non-DRBD resources
- AutoEvict only warn about offline node
- Fix hanging controller on multiple parallel snapshots
- ETCD: fixed exporting empty tables

https://pkg.linbit.com//downloads/linstor/linstor-server-1.24.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000009d628706041e9ea3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All!<div><br></div><div>Another bug fix release, to nam=
e probably the most prominent of fix is,</div><div>fixing the controller ha=
nging on multiple parallel snapshot shippings.</div><div><br><div>## [1.24.=
2] - 2023-08-30<br><br>### Changed<br><br>- Improve wrapped DelayedApiExcep=
tion error reporting<br>- Improve logging on deleting for volumes/snapshots=
<br>- Increase timeout for sos create tar command<br><br>### Fixed<br><br>-=
 Fix &quot;attempt to replace active transMgr&quot; due to unclean core-map=
s<br>- Reassigning resource-definition to new resource-group had no effect =
on satellite<br>- Use correct java-11 on sles based systems<br>- Fixed node=
 reconnect scope already entered bug<br>- Do not create error reports for n=
o connection to satellite errors<br>- Use timeout 0, to workaround missing =
setsid -w on old systems<br>- Backup: Fix possible NPE on non-DRBD resource=
s<br>- AutoEvict only warn about offline node<br>- Fix hanging controller o=
n multiple parallel snapshots<br>- ETCD: fixed exporting empty tables<br></=
div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//downloads/l=
instor/linstor-server-1.24.2.tar.gz">https://pkg.linbit.com//downloads/lins=
tor/linstor-server-1.24.2.tar.gz</a><br></div><div><br></div><div><br></div=
><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linb=
it/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank"=
>https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div>=
</div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div=
></div></div>

--0000000000009d628706041e9ea3--
