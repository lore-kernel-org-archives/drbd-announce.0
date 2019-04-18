Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id B1E961028A5F
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Apr 2019 14:20:13 +0200 (CEST)
Received: by mail-wr1-f43.google.com with SMTP id k17so2695388wrx.10
	for <drbd-announce@lists.linbit.com>;
	Thu, 18 Apr 2019 05:20:13 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 18 Apr 2019 14:20:01 +0200
Message-ID: <CAHmn2DN+f4ew6fT+5HwuJujc+99P8v1kGdr_ZBBF5vjZEh0FKg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000205a540586cd0652"
Subject: [DRBD-announce] Linstor-server v0.9.6, linstor-client 0.9.3 release
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

--000000000000205a540586cd0652
Content-Type: text/plain; charset="UTF-8"

Hi!

As always some bug fixes and 2 notable features were added in this release.
Linstor is now able to make file systems on resource creation, here is a
little snippet on how to do that:

linstor resource-definition create rsc1
linstor resource-definition set-property rsc1 FileSystem/Type ext4
linstor volume-definition create rsc1 1G
linstor resource create --auto-place 2 rsc1

Currently supported file systems are ext4 and xfs. Additional mkfs
properties can be passed through the FileSystem/MkfsParams property.

And another feature is support for NVMe over fabrics, those can be created
with specifying nvme on the layer-list argument.

linstor-server 0.9.6
--------------------
 * Fixed: DRBD handlers written on satellite restart
 * Fixed: Migration for resources without volumes
 * Fixed: Deletion of resources not updating freespace info
 * Fixed: Satellite nullpointer exception on applying already deleted
resource
 * REST: Undocumented single resource paths will not return arrays anymore
 * DRBD handler options are now always quoted.
 * Added optional file system creation on DRBD or storage resources
 * Support for NVMe over fabrics

https://www.linbit.com/downloads/linstor/linstor-server-0.9.6.tar.gz

linstor-client/python-linstor 0.9.3
-----------------------------------
 * Support nvme layers

https://www.linbit.com/downloads/linstor/python-linstor-0.9.3.tar.gz
https://www.linbit.com/downloads/linstor/linstor-client-0.9.3.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000205a540586cd0652
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi!<div><br></div><div>As always some bug=
 fixes and 2 notable features were added in this release.</div><div>Linstor=
 is now able to make file systems on resource creation, here is a little sn=
ippet on how to do that:</div><div><br></div><div><font face=3D"monospace, =
monospace">linstor resource-definition create rsc1</font></div><div><font f=
ace=3D"monospace, monospace">linstor resource-definition set-property rsc1 =
FileSystem/Type ext4</font></div><div><font face=3D"monospace, monospace">l=
instor volume-definition create rsc1 1G</font></div><div><font face=3D"mono=
space, monospace">linstor resource create --auto-place 2 rsc1</font></div><=
div><br></div><div>Currently supported file systems are ext4 and xfs. Addit=
ional mkfs properties can be passed through the FileSystem/MkfsParams prope=
rty.</div><div><br></div><div>And another feature is support for NVMe over =
fabrics, those can be created with specifying nvme on the layer-list argume=
nt.</div><div><br></div><div><div><span style=3D"font-family:monospace,mono=
space;font-size:x-small">linstor-server 0.9.6</span></div><div><div><div><f=
ont face=3D"monospace, monospace" size=3D"1">--------------------</font></d=
iv><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=
=C2=A0* Fixed: DRBD handlers written on satellite restart</span></div><div>=
<span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* F=
ixed: Migration for resources without volumes</span></div><div><span style=
=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed: Delet=
ion of resources not updating freespace info</span></div><div><span style=
=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed: Satel=
lite nullpointer exception on applying already deleted resource</span></div=
><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=
=A0* REST: Undocumented single resource paths will not return arrays anymor=
e</span></div><div><span style=3D"font-family:monospace,monospace;font-size=
:x-small">=C2=A0* DRBD handler options are now always quoted.</span><span s=
tyle=3D"font-family:monospace,monospace;font-size:x-small"><br></span></div=
><div><span style=3D"font-family:monospace,monospace;font-size:x-small">=C2=
=A0* Added optional file system creation on DRBD or storage resources</span=
></div><div><span style=3D"font-family:monospace,monospace;font-size:x-smal=
l">=C2=A0* Support for NVMe over fabrics</span></div><div><br></div></div><=
div><font size=3D"1"><a href=3D"https://www.linbit.com/downloads/linstor/li=
nstor-server-0.9.6.tar.gz" target=3D"_blank">https://www.linbit.com/downloa=
ds/linstor/linstor-server-0.9.6.tar.gz</a></font></div></div><div><br></div=
><div><div><div><font size=3D"1"><span style=3D"font-family:monospace,monos=
pace">linstor-client/python-linstor 0.9.3</span></font></div><div><font siz=
e=3D"1"><span style=3D"font-family:monospace,monospace">-------------------=
----------------</span></font></div><div><span style=3D"font-family:monospa=
ce,monospace;font-size:x-small">=C2=A0* Support nvme layers</span></div></d=
iv><div><br></div><div><font size=3D"1"><font face=3D"monospace, monospace"=
><a href=3D"https://www.linbit.com/downloads/linstor/python-linstor-0.9.3.t=
ar.gz" target=3D"_blank">https://www.linbit.com/downloads/linstor/python-li=
nstor-0.9.3.tar.gz</a></font><br></font></div><div><font size=3D"1"><font f=
ace=3D"monospace, monospace"><a href=3D"https://www.linbit.com/downloads/li=
nstor/linstor-client-0.9.3.tar.gz" target=3D"_blank">https://www.linbit.com=
/downloads/linstor/linstor-client-0.9.3.tar.gz</a></font></font></div></div=
><div><br></div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/=
~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_b=
lank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><=
br></div><div><br></div><div>Best regards,</div><div>Rene</div></div></div>=
</div></div>

--000000000000205a540586cd0652--
