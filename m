Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 86BB41011BF7
	for <drbd-announce@lists.linbit.com>;
	Thu, 28 Mar 2019 14:22:22 +0100 (CET)
Received: by mail-wr1-f47.google.com with SMTP id y13so5170658wrd.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 28 Mar 2019 06:22:22 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 28 Mar 2019 14:13:53 +0100
Message-ID: <CAHmn2DM5JdKyyPnY_qZjiie360A47gxGDe-_3DT+Rp7mHp34mg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000018a31c05852754d2"
Subject: [DRBD-announce] Linstor-server v0.9.3
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

--00000000000018a31c05852754d2
Content-Type: text/plain; charset="UTF-8"

Hi!

Thanks to bug reports from the community and further testing from our
self's.
We were able to fix a few annoying bug from the latest 0.9.x series, but
also a much older bug regarding the set-size command and a missing
activation of LVM-thin volumes.

linstor-server 0.9.3
--------------------
 * REST API bind address can now set from command line or via env variable
 * Snapshot restore is now synchronous and will wait until DRBD device is
ready
 * Fixed: REST API incorrect snapshot-restore-volume-definition path
 * Fixed: ZFS size reporting
 * Fixed: ZFS volume parsing for non linstor volumes
 * Fixed: volume resize tried sometimes to resize the diskless resource
 * Fixed: LVM-thin volumes are now activated if they get the skip
activation flag
 * Fixed: LVM-thin missing DRBD option to avoid full syncs if a resource
was added later (needs drbd 9.0.17)

http://www.linbit.com/downloads/linstor/linstor-server-0.9.3.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--00000000000018a31c05852754d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Thanks to bug reports from the comm=
unity and further testing from our self&#39;s.</div><div>We were able to fi=
x a few annoying bug from the latest 0.9.x series, but also a much older bu=
g regarding the set-size command and a missing activation of LVM-thin volum=
es.</div><div><br></div><div><div><div><span style=3D"font-family:monospace=
,monospace;font-size:x-small">linstor-server 0.9.3</span><br></div><div><di=
v><font face=3D"monospace, monospace" size=3D"1">--------------------</font=
></div><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=A0* RE=
ST API bind address can now set from command line or via env variable</font=
></font></div><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=
=A0* Snapshot restore is now synchronous and will wait until DRBD device is=
 ready</font></font></div><div><font face=3D"monospace, monospace" size=3D"=
1">=C2=A0* Fixed: REST API incorrect snapshot-restore-volume-definition pat=
h</font></div><div><font size=3D"1"><font face=3D"monospace, monospace">=C2=
=A0* Fixed: ZFS size reporting</font></font></div><div><font size=3D"1"><fo=
nt face=3D"monospace, monospace">=C2=A0* Fixed: ZFS volume parsing for non =
linstor volumes</font></font></div></div></div><div><font size=3D"1"><font =
face=3D"monospace, monospace">=C2=A0* Fixed: volume resize tried sometimes =
to resize the diskless resource</font></font></div><div><font size=3D"1"><f=
ont face=3D"monospace, monospace">=C2=A0* Fixed: LVM-thin volumes are now a=
ctivated if they get the skip activation flag</font></font></div><div><font=
 size=3D"1"><font face=3D"monospace, monospace">=C2=A0* Fixed: LVM-thin mis=
sing DRBD option to avoid full syncs if a resource was added later (needs d=
rbd 9.0.17)</font></font></div><div><br></div><div><font size=3D"1"><a href=
=3D"http://www.linbit.com/downloads/linstor/linstor-server-0.9.3.tar.gz">ht=
tp://www.linbit.com/downloads/linstor/linstor-server-0.9.3.tar.gz</a></font=
></div></div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https://la=
unchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" =
target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd=
9-stack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</div>=
</div></div>

--00000000000018a31c05852754d2--
