Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 821D44203E8
	for <drbd-announce@lists.linbit.com>;
	Thu,  7 May 2020 11:56:29 +0200 (CEST)
Received: by mail-wr1-f52.google.com with SMTP id h9so5611446wrt.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 07 May 2020 02:56:29 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 7 May 2020 11:56:18 +0200
Message-ID: <CAHmn2DM+Xmrcj=P5B-bnXvLfpV3u+S7Q4iRnJ+TTpjL+8+a7Hw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000040b7905a50be584"
Subject: [DRBD-announce] python-linstor, linstor-client 1.1.0 release
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

--000000000000040b7905a50be584
Content-Type: text/plain; charset="UTF-8"

Hi!

A lot of new things in the client with this release, making usage of all new
REST-API features. Details as always below:

python-linstor v1.1.0
---------------------
  * Add /v1/view/snapshot support
  * Add props filter support for lists

https://www.linbit.com/downloads/linstor/python-linstor-1.1.0.tar.gz

linstor-client 1.1.0
---------------------
 * Use REST-API 1.1.0 snapshot view for snapshot list
 * Add re-enter passphrase for initial passphrase creation
 * Fix incorrect units in drbd-options help
 * Node list add `--show-aux-props` to show aux properties
 * Add `--props` option to many list commands, to filter by properties
 * Added `--faulty` to resource list, to show only faulty resources

https://www.linbit.com/downloads/linstor/linstor-client-1.1.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000040b7905a50be584
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>A lot of new things in the client w=
ith this release, making usage of all new</div><div>REST-API features. Deta=
ils as always below:</div><div><div><br></div><div><font face=3D"monospace"=
>python-linstor v1.1.0<br>---------------------<br>=C2=A0 * Add /v1/view/sn=
apshot support<br>=C2=A0 * Add props filter support for lists</font><br></d=
iv><div><div><div><div><br></div><div><font size=3D"1"><font face=3D"monosp=
ace, monospace"><a href=3D"https://www.linbit.com/downloads/linstor/python-=
linstor-1.1.0.tar.gz">https://www.linbit.com/downloads/linstor/python-linst=
or-1.1.0.tar.gz</a></font></font></div></div><div><font size=3D"1"><br></fo=
nt></div><div><div><font face=3D"monospace">linstor-client 1.1.0<br>-------=
--------------<br>=C2=A0* Use REST-API 1.1.0 snapshot view for snapshot lis=
t<br>=C2=A0* Add re-enter passphrase for initial passphrase creation<br>=C2=
=A0* Fix incorrect units in drbd-options help<br>=C2=A0* Node list add `--s=
how-aux-props` to show aux properties<br>=C2=A0* Add `--props` option to ma=
ny list commands, to filter by properties<br>=C2=A0* Added `--faulty` to re=
source list, to show only faulty resources</font><br></div><div><br></div><=
div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"https:/=
/www.linbit.com/downloads/linstor/linstor-client-1.1.0.tar.gz">https://www.=
linbit.com/downloads/linstor/linstor-client-1.1.0.tar.gz</a></font></font><=
/div></div></div><div><br></div><div>Linstor PPA:<br></div><div><div><a hre=
f=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=
=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack</a><br></div><div><br></div><div>Best regards,</div=
><div>Rene</div></div></div></div></div>

--000000000000040b7905a50be584--
