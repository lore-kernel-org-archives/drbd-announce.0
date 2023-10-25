Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
	[209.85.216.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 276D14201FE
	for <drbd-announce@lists.linbit.com>;
	Wed, 25 Oct 2023 08:20:22 +0200 (CEST)
Received: by mail-pj1-f51.google.com with SMTP id
	98e67ed59e1d1-2739c8862d2so1314772a91.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Oct 2023 23:20:22 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 25 Oct 2023 08:20:09 +0200
Message-ID: <CAHmn2DOasXKFE0aZHLCpLRXtOh-uRi2+VtxpxBfCpKiq3Vg23Q@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000024dc88060884736e"
Subject: [DRBD-announce] python-linstor/linstor-client 1.20.1 release
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

--00000000000024dc88060884736e
Content-Type: text/plain; charset="UTF-8"

Hi,

a small addition to the client, it can now set the controller/satellite log
level and
it is now no longer necessary to use raw curl calls.

## linstor-client
### Added

- Add "set-log-level" subcommand for controller and node

https://pkg.linbit.com//downloads/linstor/linstor-client-1.20.1.tar.gz

## python-linstor
### Added

- Add set_log_level for controller and node

https://pkg.linbit.com//downloads/linstor/python-linstor-1.20.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000024dc88060884736e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>a small addition to the =
client, it can now set the controller/satellite log level and</div><div>it =
is now no longer necessary=C2=A0to use raw curl calls.</div><div><br></div>=
<div>## linstor-client</div><div>### Added<br><br>- Add &quot;set-log-level=
&quot; subcommand for controller and node<br></div><div><br></div><div><a h=
ref=3D"https://pkg.linbit.com//downloads/linstor/linstor-client-1.20.1.tar.=
gz">https://pkg.linbit.com//downloads/linstor/linstor-client-1.20.1.tar.gz<=
/a><br></div><br><div>## python-linstor</div><div>### Added<br><br>- Add se=
t_log_level for controller and node<br></div><div><br></div><div><a href=3D=
"https://pkg.linbit.com//downloads/linstor/python-linstor-1.20.1.tar.gz">ht=
tps://pkg.linbit.com//downloads/linstor/python-linstor-1.20.1.tar.gz</a><br=
></div><div><br></div><div><div>Linstor PPA:<br></div><div><div><a href=3D"=
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"no=
referrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/l=
inbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div><div>=
Rene</div></div></div></div>

--00000000000024dc88060884736e--
