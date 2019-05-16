Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id E48341028A66
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 May 2019 11:31:36 +0200 (CEST)
Received: by mail-wm1-f51.google.com with SMTP id j187so2724346wmj.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 May 2019 02:31:36 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 16 May 2019 11:31:25 +0200
Message-ID: <CAHmn2DM+CG3yvoX3XuuumFNTT03cSL8Z+hN_jN8p=mp9q0uoew@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000adddb50588fdeec9"
Subject: [DRBD-announce] Linstor-server v0.9.8
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

--000000000000adddb50588fdeec9
Content-Type: text/plain; charset="UTF-8"

Hi!

This release features some new small features and a minor push of the
REST-API version 1.0.3.

Node creation is now synchronous which means after a node is created it will
wait until it is connected and ready before the node create call will
return.
And there is a new property `LvcreateType` to allow creation of LVM FAT
raid setups, that can be set on a storage pool or resource-definition.

Also there is a breaking change if you have encrypted volumes, we made the
password generation more secure, but this means volumes created with older
linstor-server versions cannot be unlocked. It is possible to workaround
this, but you have to get in touch with us for this.

linstor-server 0.9.8
--------------------
 * Fixed: Finding device path of NVMe volumes
 * Fixed: Local Controller node will now show as ONLINE
 * REST: Added /v1/view/resources and set REST-API version to 1.0.3
 * REST: Data structures are now generated from the rest documentation
 * Allow to pass raid level for LVM
 * Passphrase generation changed, old encrypted volumes will not be able to
be unlocked

https://www.linbit.com/downloads/linstor/linstor-server-0.9.8.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--000000000000adddb50588fdeec9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi!<div><br></div><div>This release featu=
res some new small features and a minor push of the REST-API version 1.0.3.=
</div><div><br></div><div>Node creation is now synchronous which means afte=
r a node is created it will</div><div>wait until it is connected and ready =
before the node create call will return.</div><div>And there is a new prope=
rty `LvcreateType`=C2=A0to allow creation of LVM FAT raid setups, that can =
be set on a storage pool or resource-definition.</div><div><br></div><div>A=
lso there is a breaking change if you have encrypted volumes, we made the</=
div><div>password generation more secure, but this means volumes created wi=
th older linstor-server versions cannot be unlocked. It is possible to work=
around this, but you have to get in touch with us for this.</div><div><br><=
/div><div><div><div><span style=3D"font-family:monospace,monospace;font-siz=
e:x-small">linstor-server 0.9.8</span></div><div><div><div><font face=3D"mo=
nospace, monospace" size=3D"1">--------------------</font></div><div><span =
style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Fixed: =
Finding device path of NVMe volumes</span></div><div><span style=3D"font-fa=
mily:monospace,monospace;font-size:x-small">=C2=A0* Fixed: Local Controller=
 node will now show as ONLINE</span></div><div><span style=3D"font-family:m=
onospace,monospace;font-size:x-small">=C2=A0* REST: Added /v1/view/resource=
s and set REST-API version to 1.0.3</span><br></div><div><span style=3D"fon=
t-family:monospace,monospace;font-size:x-small">=C2=A0* REST: Data structur=
es are now generated from the rest documentation</span></div><div><span sty=
le=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Allow to p=
ass raid level for LVM</span></div><div><font face=3D"monospace, monospace"=
 size=3D"1">=C2=A0* Passphrase generation changed, old encrypted volumes wi=
ll not be able to be unlocked</font></div><div><br></div></div><div><font s=
ize=3D"1"><a href=3D"https://www.linbit.com/downloads/linstor/linstor-serve=
r-0.9.8.tar.gz">https://www.linbit.com/downloads/linstor/linstor-server-0.9=
.8.tar.gz</a></font></div></div></div><div><br></div><div>Linstor PPA:<br><=
a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack"=
 rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~linbit/+archiv=
e/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div>Best regards,<div>R=
ene</div></div></div></div>

--000000000000adddb50588fdeec9--
