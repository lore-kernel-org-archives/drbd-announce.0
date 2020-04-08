Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id DE0624203C9
	for <drbd-announce@lists.linbit.com>;
	Wed,  8 Apr 2020 18:47:12 +0200 (CEST)
Received: by mail-wr1-f44.google.com with SMTP id w10so8658161wrm.4
	for <drbd-announce@lists.linbit.com>;
	Wed, 08 Apr 2020 09:47:12 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 8 Apr 2020 18:47:00 +0200
Message-ID: <CAHmn2DOevfK9zO11vTHKvf1XjoRXPn3TANC4hDaUoPUA0fzs6A@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000073075105a2ca408f"
Subject: [DRBD-announce] linstor-server 1.6.0 release
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

--00000000000073075105a2ca408f
Content-Type: text/plain; charset="UTF-8"

Hi All!

This new linstor-server release brings 2 notable changes:

1) We now ship the JDBC drivers for Postgresql and MariaDB, so there is no
more
need to download them manually, if you have problems while upgrading,
delete the manually downloaded drivers before.
2) Linstor now supports the DM cache as a layer.

Rest of the release are minor bugfixes.

linstor-server 1.6.0
--------------------
 * Added DM cache layer support
 * Resource group spawn now accepts external name instead of resource
definition name
 * Update to latest flyaway, for now dropping support for MariaDB < 10.2
 * Include jdbc driver for postgresql and mariadb
 * Fix DELETING state resource if drbd forgot-peer fails
 * Fix missing DRBD resume-io if res file is missing
 * Fix removing values from resource-group select filters
 * Fix resource group database serialization
 * Controller now exits immediately if it fails DB operations
 * REST-API 1.0.16

https://www.linbit.com/downloads/linstor/linstor-server-1.6.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000073075105a2ca408f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All!<div><br></div><div>This new linstor-server release=
 brings 2 notable changes:</div><div><br></div><div>1) We now ship the JDBC=
 drivers for Postgresql and MariaDB, so there is no more</div><div>need to =
download them manually, if you have problems while upgrading, delete the ma=
nually downloaded drivers before.</div><div>2) Linstor now supports the DM =
cache as a layer.</div><div><br></div><div>Rest of the release are minor bu=
gfixes.</div><div><div><div><br></div><div><span style=3D"font-family:monos=
pace,monospace;font-size:x-small">linstor-server 1.6.0</span></div><div><di=
v><div><font face=3D"monospace, monospace" size=3D"1">--------------------<=
/font></div><div><font face=3D"monospace" size=3D"1">=C2=A0*=C2=A0Added DM =
cache layer support</font></div></div><div><font face=3D"monospace" size=3D=
"1">=C2=A0* Resource group spawn now accepts external name instead of resou=
rce definition name</font></div><div><font face=3D"monospace" size=3D"1">=
=C2=A0* Update to latest flyaway, for now dropping support for MariaDB &lt;=
 10.2</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0* Include =
jdbc driver for postgresql and mariadb</font></div><div><font face=3D"monos=
pace" size=3D"1">=C2=A0* Fix DELETING state resource if drbd forgot-peer fa=
ils</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0* Fix missin=
g DRBD resume-io if res file is missing</font></div><div><font face=3D"mono=
space" size=3D"1">=C2=A0* Fix removing values from resource-group select fi=
lters</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0* Fix reso=
urce group database serialization</font></div><div><font face=3D"monospace"=
 size=3D"1">=C2=A0* Controller now exits immediately=C2=A0if it fails DB op=
erations</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0* REST-=
API 1.0.16</font></div><div><font face=3D"monospace" size=3D"1"><br></font>=
</div><div><font size=3D"1" face=3D"monospace"><a href=3D"https://www.linbi=
t.com/downloads/linstor/linstor-server-1.6.0.tar.gz">https://www.linbit.com=
/downloads/linstor/linstor-server-1.6.0.tar.gz</a></font></div></div><div><=
br></div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit=
/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">h=
ttps://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></=
div><div><br></div><div>Cheers,</div><div>Rene</div></div></div></div>

--00000000000073075105a2ca408f--
