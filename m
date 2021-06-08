Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C91E6420373
	for <drbd-announce@lists.linbit.com>;
	Tue,  8 Jun 2021 10:48:28 +0200 (CEST)
Received: by mail-wr1-f43.google.com with SMTP id a20so20694194wrc.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 08 Jun 2021 01:48:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmn2DNxAnkUowoUy4PH2C_9u+6F3SU7hPO7LezFYuRVa0siEw@mail.gmail.com>
In-Reply-To: <CAHmn2DNxAnkUowoUy4PH2C_9u+6F3SU7hPO7LezFYuRVa0siEw@mail.gmail.com>
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 8 Jun 2021 10:48:17 +0200
Message-ID: <CAHmn2DMLcT1W=js-ZQsPw6gBVFTZg4eB+QC0uSq_zCxtvCFLsg@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000c831f205c43d38af"
Subject: Re: [DRBD-announce] linstor-server release 1.12.6
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

--000000000000c831f205c43d38af
Content-Type: text/plain; charset="UTF-8"

We had to take back this release, as different alignment sizes of already
existing resources could lead to a drbd resize in the background,
which could shrink the DRBD device.
So latest stable version is still 1.12.4

Best regards,
Rene

On Mon, Jun 7, 2021 at 1:31 PM Rene Peinthor <rene.peinthor@linbit.com>
wrote:

> Hi!
>
> We noticed using nodes with old and new LUKS headers would not work and
> lead us to finally write the size into drbd resource configurations, which
> on the other hand
> finally enables us to mix different storage-pool types (LVM-thin <-> ZFS).
> Apart from that some smaller bug fixes:
>
> linstor-server 1.12.6
> ---------------------
>  * Fix loading resources with mixed LVM, LVM-THIN volumes
>
> https://www.linbit.com/downloads/linstor/linstor-server-1.12.6.tar.gz
>
> linstor-server 1.12.5
> ---------------------
>  * make-available toggles disk on diskful request
>  * Allow mixed storage pool types
>  * Fix luks storage type with different cryptosetup versions
>  * Fix race-condition with volume resizing
>  * physical-storage: avoid use of blkid, it gets slow on lot of devices
>  * PrefNic can now be set on resource-group/resource-definition
>
>
> Linstor PPA:
> https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
>
> Cheers,
> Rene
>

--000000000000c831f205c43d38af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We had to take back this release, as different alignment s=
izes of already existing resources could lead to a drbd resize in the backg=
round,<div>which could shrink the DRBD device.</div><div>So latest stable v=
ersion is still 1.12.4</div><div><br></div><div>Best regards,</div><div>Ren=
e</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Jun 7, 2021 at 1:31 PM Rene Peinthor &lt;<a href=3D"mailto:r=
ene.peinthor@linbit.com">rene.peinthor@linbit.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi!<=
/div><div><br></div><div>We noticed using nodes with old and new LUKS heade=
rs would not work and</div><div>lead us to finally write the size into drbd=
 resource configurations, which on the other hand</div><div>finally enables=
 us=C2=A0to mix different storage-pool types (LVM-thin &lt;-&gt; ZFS).</div=
><div>Apart=C2=A0from that some smaller bug fixes:</div><div><br></div><div=
><font face=3D"monospace">linstor-server 1.12.6<br>---------------------<br=
>=C2=A0* Fix loading resources with mixed LVM, LVM-THIN volumes</font><br><=
/div><div><br></div><div><a href=3D"https://www.linbit.com/downloads/linsto=
r/linstor-server-1.12.6.tar.gz" target=3D"_blank">https://www.linbit.com/do=
wnloads/linstor/linstor-server-1.12.6.tar.gz</a><br></div><div><br></div><d=
iv><font face=3D"monospace">linstor-server 1.12.5<br>---------------------<=
br>=C2=A0* make-available toggles disk on diskful request<br>=C2=A0* Allow =
mixed storage pool types<br>=C2=A0* Fix luks storage type with different cr=
yptosetup versions<br>=C2=A0* Fix race-condition with volume resizing<br>=
=C2=A0* physical-storage: avoid use of blkid, it gets slow on lot of device=
s<br>=C2=A0* PrefNic can now be set on resource-group/resource-definition</=
font><br></div><div><font face=3D"monospace"><br></font></div><div><div><br=
></div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~lin=
bit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank=
">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div=
></div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div></di=
v>
</blockquote></div>

--000000000000c831f205c43d38af--
