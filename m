Return-Path: <gabor.hernadi@linbit.com>
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
	[209.85.219.178])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id ED5A9420958
	for <drbd-announce@lists.linbit.com>;
	Wed, 15 Dec 2021 09:29:22 +0100 (CET)
Received: by mail-yb1-f178.google.com with SMTP id g17so52972455ybe.13
	for <drbd-announce@lists.linbit.com>;
	Wed, 15 Dec 2021 00:29:22 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?R8OhYm9yIEhlcm7DoWRp?= <gabor.hernadi@linbit.com>
Date: Wed, 15 Dec 2021 09:29:11 +0100
Message-ID: <CAL16tNa+BNQ_FmPcoEJnN=ubYztp6X2ebCHoQRE2m8K93D3SUQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000004d9fd805d32b1a30"
Subject: [DRBD-announce] Linstor and log4j
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

--0000000000004d9fd805d32b1a30
Content-Type: text/plain; charset="UTF-8"

Hello!

As we received a few questions regarding the recently discovered security
issues with log4j, we want to clarify that Linstor is *not* using log4j but
logback as a logging framework.
Linstor is therefore NOT vulnerable for security issues in the log4j
library.

Linstor is open source and is using Gradle to manage its dependencies.
Linstor's dependencies can be found via GitHub[1]

[1] https://github.com/LINBIT/linstor-server/blob/master/build.gradle

Best regards,
Gabor

--0000000000004d9fd805d32b1a30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<br><br>As we received a few questions regarding the=
 recently discovered security issues with log4j, we want to clarify that Li=
nstor is *not* using log4j but logback as a logging framework.<br>Linstor i=
s therefore NOT vulnerable for security issues in the log4j library.<br><br=
>Linstor is open source and is using Gradle to manage its dependencies. Lin=
stor&#39;s dependencies can be found via GitHub[1]<br><br>[1] <a href=3D"ht=
tps://github.com/LINBIT/linstor-server/blob/master/build.gradle">https://gi=
thub.com/LINBIT/linstor-server/blob/master/build.gradle</a><br><br>Best reg=
ards,<br>Gabor</div>

--0000000000004d9fd805d32b1a30--
