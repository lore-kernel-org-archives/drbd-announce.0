Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 15289420335
	for <drbd-announce@lists.linbit.com>;
	Mon,  7 Jun 2021 13:31:12 +0200 (CEST)
Received: by mail-wm1-f41.google.com with SMTP id
	h22-20020a05600c3516b02901a826f84095so4949199wmq.5
	for <drbd-announce@lists.linbit.com>;
	Mon, 07 Jun 2021 04:31:12 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 7 Jun 2021 13:31:02 +0200
Message-ID: <CAHmn2DNxAnkUowoUy4PH2C_9u+6F3SU7hPO7LezFYuRVa0siEw@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000f12dce05c42b60e3"
Subject: [DRBD-announce] linstor-server release 1.12.6
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

--000000000000f12dce05c42b60e3
Content-Type: text/plain; charset="UTF-8"

Hi!

We noticed using nodes with old and new LUKS headers would not work and
lead us to finally write the size into drbd resource configurations, which
on the other hand
finally enables us to mix different storage-pool types (LVM-thin <-> ZFS).
Apart from that some smaller bug fixes:

linstor-server 1.12.6
---------------------
 * Fix loading resources with mixed LVM, LVM-THIN volumes

https://www.linbit.com/downloads/linstor/linstor-server-1.12.6.tar.gz

linstor-server 1.12.5
---------------------
 * make-available toggles disk on diskful request
 * Allow mixed storage pool types
 * Fix luks storage type with different cryptosetup versions
 * Fix race-condition with volume resizing
 * physical-storage: avoid use of blkid, it gets slow on lot of devices
 * PrefNic can now be set on resource-group/resource-definition


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000f12dce05c42b60e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>We noticed using nodes w=
ith old and new LUKS headers would not work and</div><div>lead us to finall=
y write the size into drbd resource configurations, which on the other hand=
</div><div>finally enables us=C2=A0to mix different storage-pool types (LVM=
-thin &lt;-&gt; ZFS).</div><div>Apart=C2=A0from that some smaller bug fixes=
:</div><div><br></div><div><font face=3D"monospace">linstor-server 1.12.6<b=
r>---------------------<br>=C2=A0* Fix loading resources with mixed LVM, LV=
M-THIN volumes</font><br></div><div><br></div><div><a href=3D"https://www.l=
inbit.com/downloads/linstor/linstor-server-1.12.6.tar.gz">https://www.linbi=
t.com/downloads/linstor/linstor-server-1.12.6.tar.gz</a><br></div><div><br>=
</div><div><font face=3D"monospace">linstor-server 1.12.5<br>--------------=
-------<br>=C2=A0* make-available toggles disk on diskful request<br>=C2=A0=
* Allow mixed storage pool types<br>=C2=A0* Fix luks storage type with diff=
erent cryptosetup versions<br>=C2=A0* Fix race-condition with volume resizi=
ng<br>=C2=A0* physical-storage: avoid use of blkid, it gets slow on lot of =
devices<br>=C2=A0* PrefNic can now be set on resource-group/resource-defini=
tion</font><br></div><div><font face=3D"monospace"><br></font></div><div><d=
iv><br></div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.ne=
t/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"=
_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a=
></div></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></di=
v></div>

--000000000000f12dce05c42b60e3--
