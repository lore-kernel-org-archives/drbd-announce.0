Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 620134202D7
	for <drbd-announce@lists.linbit.com>;
	Tue,  3 Dec 2019 19:19:35 +0100 (CET)
Received: by mail-wm1-f43.google.com with SMTP id p9so3993342wmc.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 03 Dec 2019 10:19:35 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 3 Dec 2019 19:18:18 +0100
Message-ID: <CAHmn2DNtpZiJ8kNKv=Z5M36q1MWby6jUD4n6y31x15MZjeO1_A@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000005cfc050598d0b9ae"
Subject: [DRBD-announce] linstor-server 1.3.0 release
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

--0000000000005cfc050598d0b9ae
Content-Type: text/plain; charset="UTF-8"

Hi!

This new linstor release contains an external contribution of support for
SPDK[1]
within linstor, it will act like a different snapshot type.
More info can be found at the pull request [2].

Furthermore now the REST access log can now be configured and all property
setter functions are now synchronous.

linstor-server 1.3.0
--------------------
 * Support SPDK 19.07
 * REST-access log can be configured in the linstor.toml
 * Property setter are now synchronous
 * Fixed auto-selector with replicas-on-different
 * Fixed typo in client_key_pkcs8_pem variable
 * Added missing http ports for linstor-controller firewalld service file
 * Added startup check for database support, can be disabled with
--disable-db-version-check

https://www.linbit.com/downloads/linstor/linstor-server-1.3.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack


[1] https://spdk.io/
[2] https://github.com/LINBIT/linstor-server/pull/85

--0000000000005cfc050598d0b9ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This new linstor release contains a=
n external contribution of support for SPDK[1]</div><div>within linstor, it=
 will act like a different snapshot type.</div><div>More info can be found =
at the pull request [2].</div><div><br></div><div>Furthermore now the REST =
access log can now be configured and all property setter functions are now =
synchronous.</div><div><br></div><div><span style=3D"font-family:monospace,=
monospace;font-size:x-small">linstor-server 1.3.0</span></div><div><div><di=
v><font face=3D"monospace, monospace" size=3D"1">--------------------</font=
></div><div><span style=3D"font-family:monospace,monospace;font-size:x-smal=
l">=C2=A0* Support SPDK 19.07</span></div><div><span style=3D"font-size:x-s=
mall"><font face=3D"monospace">=C2=A0* REST-access log can be configured in=
 the linstor.toml</font></span></div><div><font size=3D"1" face=3D"monospac=
e">=C2=A0* Property setter are now=C2=A0</font><font face=3D"monospace" siz=
e=3D"1">synchronous</font></div><div><font face=3D"monospace" size=3D"1">=
=C2=A0* Fixed auto-selector with replicas-on-different</font></div></div><d=
iv><font face=3D"monospace" size=3D"1">=C2=A0* Fixed typo in client_key_pkc=
s8_pem variable</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0=
* Added missing http ports for linstor-controller firewalld service file</f=
ont></div><div><font face=3D"monospace" size=3D"1">=C2=A0* Added startup ch=
eck for database support, can be disabled with --disable-db-version-check</=
font></div><div><font face=3D"monospace" size=3D"1"><br></font></div><div><=
font size=3D"1" face=3D"monospace"><a href=3D"https://www.linbit.com/downlo=
ads/linstor/linstor-server-1.3.0.tar.gz" target=3D"_blank">https://www.linb=
it.com/downloads/linstor/linstor-server-1.3.0.tar.gz</a></font></div></div>=
<div><br></div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~=
linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_bl=
ank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></=
div></div><div><br></div><div><br></div><div>[1]=C2=A0<a href=3D"https://sp=
dk.io/" target=3D"_blank">https://spdk.io/</a></div><div>[2]=C2=A0<a href=
=3D"https://github.com/LINBIT/linstor-server/pull/85" target=3D"_blank">htt=
ps://github.com/LINBIT/linstor-server/pull/85</a></div></div>

--0000000000005cfc050598d0b9ae--
