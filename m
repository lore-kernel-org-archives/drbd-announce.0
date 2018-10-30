Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id B69F21011BEC
	for <drbd-announce@lists.linbit.com>;
	Tue, 30 Oct 2018 13:56:08 +0100 (CET)
Received: by mail-wr1-f49.google.com with SMTP id 74-v6so4264270wrb.13
	for <drbd-announce@lists.linbit.com>;
	Tue, 30 Oct 2018 05:56:08 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 30 Oct 2018 13:55:56 +0100
Message-ID: <CAHmn2DOo7k5F0wPtJHXmDNBe3NmgtSTOo7NLGoYEbMOKP1CnNQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000008b4c60057971b513"
Subject: [DRBD-announce] Linster-server v0.7.0, Linstor-client 0.7.0 release
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

--0000000000008b4c60057971b513
Content-Type: text/plain; charset="UTF-8"

Hi All!

New Linstor release that comes with support for basic DRBD proxy
configurations,
improved drbdmanage migration, auto-place uses now the actual thin
pool size(with oversubscription ratio), and a bunch of bug fixes.

Here more release details:

linstor-server 0.7.0
--------------------
 * Basic DRBD Proxy support
 * Resource can now created in a batch (used for drbdmigrate)
 * More synchronous operations (auto-place, storage-pool create)
 * linstor-config: improved sql-script command
 * Added list API for resource connection
 * Fix: drbdsetup events2 parsing will be restarted if process dies
 * Fix: resource create check available size
 * Fix: Delete snapshots on node lost command
 * Fix: SSL configurations files are now resolved from config directory
 * Fix: Some race conditions are avoided

http://www.linbit.com/downloads/linstor/linstor-server-0.7.0.tar.gz

linstor-client/python-linstor 0.7.0
-----------------------------------
 * Added Proxy configuration commands
 * Synchronous auto-place and storage-pool create commands
 * Resource connection commands (list, props, drbd options)
 * Improved table rendering
 * error list --since allows now hours to be specified

http://www.linbit.com/downloads/linstor/python-linstor-0.7.0.tar.gz
http://www.linbit.com/downloads/linstor/linstor-client-0.7.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000008b4c60057971b513
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi All!=
<div><br></div><div>New Linstor release that comes with support for basic D=
RBD proxy configurations,</div><div>improved drbdmanage migration, auto-pla=
ce uses now the actual thin=C2=A0</div><div>pool size(with oversubscription=
 ratio), and a bunch of bug fixes.</div><div><br></div><div>Here more relea=
se details:</div><div><br></div><div><span style=3D"font-family:monospace,m=
onospace;font-size:x-small">linstor-server 0.7.0</span><br></div><div><div>=
<font face=3D"monospace, monospace" size=3D"1">--------------------</font><=
/div><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Basi=
c DRBD Proxy support<br></font><span style=3D"font-family:monospace,monospa=
ce">=C2=A0* Resource can now created in a batch (used for drbdmigrate)</spa=
n><font face=3D"monospace, monospace"><br></font></font></div><div><font fa=
ce=3D"monospace, monospace" size=3D"1">=C2=A0* More synchronous operations =
(auto-place, storage-pool create)</font></div><div><font size=3D"1"><span s=
tyle=3D"font-family:monospace,monospace">=C2=A0* linstor-config: improved s=
ql-script command</span><br></font></div><div><font size=3D"1"><span style=
=3D"font-family:monospace,monospace">=C2=A0* Added list API for resource co=
nnection</span></font></div><div><font face=3D"monospace, monospace" size=
=3D"1">=C2=A0* Fix: drbdsetup events2 parsing will be restarted if process =
dies</font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0=
* Fix: resource create check available size</font></div><div><font face=3D"=
monospace, monospace"><font size=3D"1">=C2=A0* Fix: Delete snapshots on nod=
e lost command</font></font></div></div><div><font face=3D"monospace, monos=
pace"><font size=3D"1">=C2=A0* Fix: SSL configurations files are now resolv=
ed from config directory<br>=C2=A0* Fix: Some race conditions are avoided</=
font></font></div><div><font face=3D"monospace, monospace"><font size=3D"1"=
><br></font></font></div><div><font face=3D"arial, helvetica, sans-serif"><=
a href=3D"http://www.linbit.com/downloads/linstor/linstor-server-0.7.0.tar.=
gz">http://www.linbit.com/downloads/linstor/linstor-server-0.7.0.tar.gz</a>=
</font><br></div><div><font face=3D"monospace, monospace"><font size=3D"1">=
<br></font></font></div><div><div><font face=3D"monospace, monospace" size=
=3D"1">linstor-client/python-linstor 0.7.0<br>-----------------------------=
------<br>=C2=A0* Added Proxy configuration commands<br>=C2=A0* Synchronous=
 auto-place and storage-pool create commands<br>=C2=A0* Resource connection=
 commands (list, props, drbd options)<br>=C2=A0* Improved table rendering</=
font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* erro=
r list --since allows now hours to be specified</font></div></div><div><fon=
t face=3D"monospace, monospace" size=3D"1"><br></font></div><div><font face=
=3D"arial, helvetica, sans-serif"><a href=3D"http://www.linbit.com/download=
s/linstor/python-linstor-0.7.0.tar.gz">http://www.linbit.com/downloads/lins=
tor/python-linstor-0.7.0.tar.gz</a></font><br></div><div><a href=3D"http://=
www.linbit.com/downloads/linstor/linstor-client-0.7.0.tar.gz">http://www.li=
nbit.com/downloads/linstor/linstor-client-0.7.0.tar.gz</a><br></div><div><b=
r></div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/=
+archive/ubuntu/linbit-drbd9-stack" target=3D"_blank">https://launchpad.net=
/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div><br></div><di=
v>Best regards,</div><div>Rene</div></div><div><br></div></div></div></div>=
</div>

--0000000000008b4c60057971b513--
