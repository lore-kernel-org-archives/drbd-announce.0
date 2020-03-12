Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id CC5B74203EA
	for <drbd-announce@lists.linbit.com>;
	Thu, 12 Mar 2020 15:15:47 +0100 (CET)
Received: by mail-wr1-f43.google.com with SMTP id s5so7713877wrg.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 12 Mar 2020 07:15:47 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 12 Mar 2020 15:14:36 +0100
Message-ID: <CAHmn2DNWk6L7N0H45ZvCepx12eB0NJR=NM2To3zbuvOrneE74Q@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000a488ad05a0a8f920"
Subject: [DRBD-announce] linstor-opennebula 1.0.5 release
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

--000000000000a488ad05a0a8f920
Content-Type: text/plain; charset="UTF-8"

Hi!

This release has a new feature that tries to create the diskful storage on
the node
the VM is going to be deployed and resize will now also resize the qcow2
image if it is used as storage format within DRBD.

linstor-opennebula 1.0.5
------------------------
 * Storage will now placed on nodes where the VM will be deployed
 * Resizes qcow2 images too if format is used
 * More error checks for external commands

https://github.com/LINBIT/addon-linstor/archive/v1.0.5.tar.gz

Best regards,
Rene

[1] https://docs.linbit.com/docs/linstor-guide/#ch-opennebula-linstor

--000000000000a488ad05a0a8f920
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This release has a new feature that=
 tries to create the diskful storage on the node</div><div>the VM is going =
to be deployed and resize will now also resize the qcow2</div><div>image if=
 it is used as storage format within DRBD.</div><div><br></div><div><div><d=
iv><font size=3D"1"><span style=3D"font-family:monospace,monospace">linstor=
-opennebula=C2=A01.0.5</span></font></div><div><font size=3D"1"><span style=
=3D"font-family:monospace,monospace">------------------------</span></font>=
</div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Storage w=
ill now placed on nodes where the VM will be deployed</font></div></div><di=
v><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Resizes qcow2 imag=
es too if format is used</font></div><div><font face=3D"monospace, monospac=
e" size=3D"1">=C2=A0* More error checks for external commands</font></div><=
div><font face=3D"monospace, monospace" size=3D"1"><br></font></div><div><f=
ont face=3D"monospace" size=3D"1"><a href=3D"https://github.com/LINBIT/addo=
n-linstor/archive/v1.0.5.tar.gz">https://github.com/LINBIT/addon-linstor/ar=
chive/v1.0.5.tar.gz</a></font><font face=3D"monospace, monospace" size=3D"1=
"><br></font></div><br></div><div>Best regards,</div><div>Rene</div><div><b=
r></div><div>[1]=C2=A0<a href=3D"https://docs.linbit.com/docs/linstor-guide=
/#ch-opennebula-linstor" target=3D"_blank">https://docs.linbit.com/docs/lin=
stor-guide/#ch-opennebula-linstor</a></div></div>

--000000000000a488ad05a0a8f920--
