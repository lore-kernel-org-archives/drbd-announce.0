Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 77295420404
	for <drbd-announce@lists.linbit.com>;
	Thu, 24 Oct 2019 16:18:13 +0200 (CEST)
Received: by mail-wm1-f47.google.com with SMTP id p21so1607971wmg.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 24 Oct 2019 07:18:13 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 24 Oct 2019 16:10:18 +0200
Message-ID: <CAHmn2DM2vZM8LqScs4MTcV5XfAwRo8CFxR-G5KBiVKiFqyPfqw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000008a91140595a89864"
Subject: [DRBD-announce] linstor-server 1.2.0 release
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

--0000000000008a91140595a89864
Content-Type: text/plain; charset="UTF-8"

Hi!

After 1 month of LINSTOR silence here is a new release, that brings a new
feature called auto-tiebreaker. This means if you would deploy a diskfull
DRBD resource on 2 nodes and you have a third node in your cluster, LINSTOR
will automatically create a diskless resource on the third node and set
appropriate DRBD quorum settings.

Also a lot of bug fixes found their way into this release.

linstor-server 1.2.0
--------------------
 * Add auto-tiebreaker feature
 * Fix possible deadlock on closeConnection event
 * Better volume error reporting
 * Fix a race condition on deleting peers
 * Fixes to snapshot restoring
 * Most client list filter now on the Controller
 * NVME allow multiple NVMe initiators
 * REST-API at version 1.0.10

https://www.linbit.com/downloads/linstor/linstor-server-1.2.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000008a91140595a89864
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>After 1 month of LINSTOR silence he=
re is a new release, that brings a new feature called auto-tiebreaker. This=
 means if you would deploy a diskfull DRBD resource on 2 nodes and you have=
 a third node in your cluster, LINSTOR will automatically create a diskless=
 resource on the third node and set appropriate=C2=A0DRBD quorum settings.<=
/div><div><br></div><div>Also a lot of bug fixes found their way into this =
release.</div><div><div><br></div><div><div><span style=3D"font-family:mono=
space,monospace;font-size:x-small">linstor-server 1.2.0</span></div><div><d=
iv><div><font face=3D"monospace, monospace" size=3D"1">--------------------=
</font></div><div><span style=3D"font-family:monospace,monospace;font-size:=
x-small">=C2=A0* Add auto-tiebreaker feature</span></div><div><font face=3D=
"monospace, monospace" size=3D"1">=C2=A0* Fix possible deadlock on closeCon=
nection event</font></div><div><font face=3D"monospace, monospace" size=3D"=
1">=C2=A0* Better volume error reporting</font></div><div><font face=3D"mon=
ospace, monospace" size=3D"1">=C2=A0* Fix a race condition on deleting peer=
s</font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* F=
ixes to snapshot restoring</font></div><div><font face=3D"monospace, monosp=
ace" size=3D"1">=C2=A0* Most client list filter now on the Controller</font=
></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* NVME all=
ow multiple NVMe initiators</font></div><div><font face=3D"monospace, monos=
pace" size=3D"1">=C2=A0* REST-API at version 1.0.10</font></div><div><br></=
div></div><div><font size=3D"1" face=3D"monospace"><a href=3D"https://www.l=
inbit.com/downloads/linstor/linstor-server-1.2.0.tar.gz">https://www.linbit=
.com/downloads/linstor/linstor-server-1.2.0.tar.gz</a></font></div></div></=
div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.n=
et/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D=
"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</=
a><br></div><div><br></div><div>Best regards,</div><div>Rene</div></div></d=
iv></div>

--0000000000008a91140595a89864--
