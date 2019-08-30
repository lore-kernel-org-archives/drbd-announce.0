Return-Path: <gabor.hernadi@linbit.com>
Received: from mail-yw1-f41.google.com (mail-yw1-f41.google.com
	[209.85.161.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id BFED94203C1
	for <drbd-announce@lists.linbit.com>;
	Fri, 30 Aug 2019 17:00:43 +0200 (CEST)
Received: by mail-yw1-f41.google.com with SMTP id e65so2492015ywh.0
	for <drbd-announce@lists.linbit.com>;
	Fri, 30 Aug 2019 08:00:43 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?R8OhYm9yIEhlcm7DoWRp?= <gabor.hernadi@linbit.com>
Date: Fri, 30 Aug 2019 16:53:55 +0200
Message-ID: <CAL16tNb8QHriKSyfRgvrjJ711_mknC9LUF17tbFUKqjFf1wsgw@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000035d6a6059156cb52"
Cc: drbd-user <drbd-user@lists.linbit.com>
Subject: [DRBD-announce] Linstor 1.1.0 release
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

--00000000000035d6a6059156cb52
Content-Type: text/plain; charset="UTF-8"

Hi,

linstor-server gets a new feature, namely support for ETCD

There are some limitations regarding the ETCD support:
 * There is no migration from SQL -> ETCD
 * Linstor requires the ETCD server to increase its limit for requests per
transactions [1]
    Our tests were running well with 1024, but some linstor-actions are
depending on how many objects you already have (i.e. auto-place)
    you might want to increase that value if necessary.
    example: etcd --max-txn-ops 1024

To use ETCD simply change your linstor.toml to contain
[db]
   connection_url = "etcd://127.0.0.1:2379"

Some more release details:

linstor-server 1.1.0
--------------------
 * Add truststore to config and HTTPS rest-api
 * StorPoolData: correclty set snaphot supported field
 * IntAuthResponse: Fixed version mismatch impl error
 * satellite: parse satellite settings from toml file

https://www.linbit.com/downloads/linstor/linstor-server-1.1.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Gabor


[1]
https://github.com/etcd-io/etcd/blob/master/Documentation/op-guide/configuration.md#--max-txn-ops

--00000000000035d6a6059156cb52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>linstor-server gets a new feature, namely suppo=
rt for ETCD<br><br>There are some limitations regarding the ETCD support:<b=
r>=C2=A0* There is no migration from SQL -&gt; ETCD<br>=C2=A0* Linstor requ=
ires the ETCD server to increase its limit for requests per transactions [1=
]<br>=C2=A0
 =C2=A0 Our tests were running well with 1024, but some linstor-actions are=
=20
depending on how many objects you already have (i.e. auto-place)<br>=C2=A0 =
=C2=A0 you might want to increase that value if necessary.<br>=C2=A0 =C2=A0=
 example: etcd --max-txn-ops 1024<br><br>To use ETCD simply change your lin=
stor.toml to contain <br>[db]<br>=C2=A0 =C2=A0connection_url =3D &quot;etcd=
://<a href=3D"http://127.0.0.1:2379" target=3D"_blank">127.0.0.1:2379</a>&q=
uot;<br><br>Some more release details:<br><br>linstor-server 1.1.0<br>-----=
---------------<br>=C2=A0* Add truststore to config and HTTPS rest-api<br>=
=C2=A0* StorPoolData: correclty set snaphot supported field<br>=C2=A0* IntA=
uthResponse: Fixed version mismatch impl error<br>=C2=A0* satellite: parse =
satellite settings from toml file<br>=C2=A0<br><a href=3D"https://www.linbi=
t.com/downloads/linstor/linstor-server-1.1.0.tar.gz" target=3D"_blank">http=
s://www.linbit.com/downloads/linstor/linstor-server-1.1.0.tar.gz</a><br>=C2=
=A0<br>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ub=
untu/linbit-drbd9-stack" target=3D"_blank">https://launchpad.net/~linbit/+a=
rchive/ubuntu/linbit-drbd9-stack</a><br><br>Best regards,<br>Gabor<br><br><=
br>[1] <a href=3D"https://github.com/etcd-io/etcd/blob/master/Documentation=
/op-guide/configuration.md#--max-txn-ops" target=3D"_blank">https://github.=
com/etcd-io/etcd/blob/master/Documentation/op-guide/configuration.md#--max-=
txn-ops</a></div>

--00000000000035d6a6059156cb52--
