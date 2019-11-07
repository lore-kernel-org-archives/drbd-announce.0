Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0175E4203DB
	for <drbd-announce@lists.linbit.com>;
	Thu,  7 Nov 2019 15:36:01 +0100 (CET)
Received: by mail-wm1-f41.google.com with SMTP id z19so2680489wmk.3
	for <drbd-announce@lists.linbit.com>;
	Thu, 07 Nov 2019 06:36:01 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 7 Nov 2019 15:34:50 +0100
Message-ID: <CAHmn2DN-9r18X7JBBkJ7=eeurZKpATexeGzbYfXEgMwQvHRQEQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000000692f40596c292b5"
Subject: [DRBD-announce] python-linstor, linstor-client 1.0.6 release
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

--0000000000000692f40596c292b5
Content-Type: text/plain; charset="UTF-8"

Hi!

On par with the Linstor-server 1.2.1 release, this client release makes use
of the new info about node capabilities in regards of storage and resource
layers,
with the new `linstor node info` command.

Also the `query-max-volume-size` command was copied over the `controller`
command group
and the whole `storage-pool-definition` command group will be removed from
the client in the next version, until you bring up good reasons why we
shouldn't.

python-linstor 1.0.6
--------------------
 * Fixed modify passphrase API call (used wrong method)
 * Add node info properties

https://www.linbit.com/downloads/linstor/python-linstor-1.0.6.tar.gz

linstor-client 1.0.6
--------------------
 * Copy query-max-volume-size to controller command group
 * Mark storage-pool-definition command group deprecated
 * Added `node info` command

https://www.linbit.com/downloads/linstor/linstor-client-1.0.6.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000000692f40596c292b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>On par with the Linstor-server 1.2.=
1 release, this client release makes use=C2=A0</div><div>of the new info ab=
out node capabilities in regards of storage and resource layers,</div><div>=
with the new `linstor node info` command.</div><div><br></div><div>Also the=
 `query-max-volume-size` command was copied over the `controller` command g=
roup</div><div>and the whole `storage-pool-definition` command group will b=
e removed from the client in the next version, until you bring up good reas=
ons why we shouldn&#39;t.</div><div><br></div><div><div><div><div><div><fon=
t size=3D"1"><span style=3D"font-family:monospace,monospace">python-linstor=
 1.0.6</span></font></div><div><font size=3D"1"><span style=3D"font-family:=
monospace,monospace">--------------------</span></font></div><div><font fac=
e=3D"monospace, monospace" size=3D"1">=C2=A0* Fixed modify passphrase API c=
all (used wrong method)</font></div></div><div><font face=3D"monospace, mon=
ospace" size=3D"1">=C2=A0* Add node info properties</font></div><div><br></=
div><div><font size=3D"1"><font face=3D"monospace, monospace"><a href=3D"ht=
tps://www.linbit.com/downloads/linstor/python-linstor-1.0.6.tar.gz">https:/=
/www.linbit.com/downloads/linstor/python-linstor-1.0.6.tar.gz</a></font></f=
ont></div></div><div><font size=3D"1"><br></font></div><div><div><div><font=
 size=3D"1"><span style=3D"font-family:monospace,monospace">linstor-client =
1.0.6</span></font></div><div><font size=3D"1"><span style=3D"font-family:m=
onospace,monospace">--------------------</span></font></div><div><font face=
=3D"monospace"><span style=3D"font-size:x-small">=C2=A0*</span><font size=
=3D"1">=C2=A0Copy query-max-volume-size to controller command group</font><=
/font></div><div><font face=3D"monospace"><font size=3D"1">=C2=A0* Mark sto=
rage-pool-definition command group deprecated</font></font></div><div><font=
 face=3D"monospace, monospace" size=3D"1">=C2=A0* Added `node info` command=
</font></div></div><div><br></div><div><font size=3D"1"><font face=3D"monos=
pace, monospace"><a href=3D"https://www.linbit.com/downloads/linstor/linsto=
r-client-1.0.6.tar.gz">https://www.linbit.com/downloads/linstor/linstor-cli=
ent-1.0.6.tar.gz</a></font></font></div></div></div><div><br></div><div>Lin=
stor PPA:<br></div><div><div><a href=3D"https://launchpad.net/~linbit/+arch=
ive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https:/=
/launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></div><div=
><br></div><div>Best regards,</div><div>Rene</div></div></div></div>

--0000000000000692f40596c292b5--
