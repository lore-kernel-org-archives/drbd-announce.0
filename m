Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 0DC2942032D
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Apr 2021 10:06:28 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id h15so9741463wre.11
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Apr 2021 01:06:28 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 28 Apr 2021 10:06:17 +0200
Message-ID: <CAHmn2DP6_uXXOWOjBi+BMftzkb1y7YUysx01yn5mJfDAriOOPQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000013490b05c103db61"
Subject: [DRBD-announce] linstor-server 1.12.0 release
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

--00000000000013490b05c103db61
Content-Type: text/plain; charset="UTF-8"

Hi All!

Quite some time has passed since the last linstor-server release, therefore
this release also
packs a lot of new stuff into it.

1. Linstor now automatically sets a common verify algorithm for DRBD
resources, also the next DRBD release will have improved way to trigger a
resync of out of sync blocks.
2. Linstor now supports shared storage pools, this can handle
multiple nodes having access to the same physical storage. e.g. Seagate
Exos or a shared disk in more than 1 virtual machine.
3. Linstor now also supports Seagates Exos raid storage systems [1]

We also changed the way Linstor handles the auto-quorum setting for DRBD
resources,
at the time this was implemented it wasn't clear how resource groups will
pass their properties
to child resource-definition and they were simply copied. This isn't inline
anymore with how other properties behave in Linstor, so we now longer copy
the property to resource definition on spawn, but inherit from the resource
group.
If you want to remove currently set auto-quorum property on
resource-definitions and just use the one set by the resource group or
controller. First set your desired default:

linstor controller opt --on-no-quorum suspend-io

And then remove all on-no-quorum props from already existing resources:

linstor -m --output-version v1 rd l | jq -r '.[0] | .[].name' | xargs -d
$'\n' -n1 -I {} linstor rd sp {} DrbdOptions/Resource/on-no-quorum

As always there have been a lot of smaller and bigger fixes, see commits or
the compressed changelog below.

linstor-server 1.12.0
---------------------
 * Added auto-setting a DRBD verify algorithm on resource-definition
 * Support for shared storage pools (same physical device)
 * Support for Seagate Exos Enterprise storage products
 * Added make resource available API call
 * Reworked auto-quorum property handling, now it is properly inherited
from RG or Controller
 * Removed linstor-common.conf, settings are now stored directly in all res
files
 * Fixed checking storage pool sizes before running RG spawn (that would
fail)
 * Check if storage pool has enough space before running resize
 * Fixed changing resource group for resource definition to persistent
between restarts
 * Fixed DRBD resource with external metadata (would always be recreated)
 * Fixed incorrect copying of layer data in snapshots with LUKS
 * Allow "Undelete" of a resource that is in DELETING state
 * REST-API 1.7.0

https://www.linbit.com/downloads/linstor/linstor-server-1.12.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

[1] https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#ch-exos

--00000000000013490b05c103db61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All!<div><br></div><div>Quite some time has passed sinc=
e the last linstor-server release, therefore this release also</div><div>pa=
cks a lot of new stuff into it.</div><div><br></div><div>1. Linstor now aut=
omatically sets a common verify algorithm for DRBD resources, also the next=
 DRBD release will have improved way to trigger a resync of out of sync blo=
cks.</div><div>2. Linstor now supports shared storage pools, this can handl=
e multiple=C2=A0nodes having access to the same physical storage. e.g. Seag=
ate Exos or a shared disk in more than 1 virtual machine.</div><div>3. Lins=
tor now also supports Seagates Exos raid storage systems [1]</div><div><br>=
</div><div>We also changed the way Linstor handles the auto-quorum setting =
for DRBD resources,</div><div>at the time this was implemented it wasn&#39;=
t clear how resource groups will pass their properties</div><div>to child r=
esource-definition and they were simply copied. This isn&#39;t inline anymo=
re with how other properties behave in Linstor, so we now longer copy the p=
roperty to resource definition on spawn, but inherit=C2=A0from the resource=
 group.</div><div>If you want to remove currently set auto-quorum property =
on resource-definitions and just use the one=C2=A0set by the resource group=
 or controller. First set your desired default:</div><div><br></div><div>li=
nstor controller opt --on-no-quorum suspend-io<br></div><div><br></div><div=
>And then remove all on-no-quorum props from already existing resources:</d=
iv><div><br></div><div>linstor -m --output-version v1 rd l | jq -r &#39;.[0=
] | .[].name&#39; | xargs -d $&#39;\n&#39; -n1 -I {} linstor rd sp {} DrbdO=
ptions/Resource/on-no-quorum<br></div><div><br></div><div>As always there h=
ave been a lot of smaller and bigger fixes, see commits or the compressed c=
hangelog below.</div><div><br></div><div><div><font face=3D"monospace">lins=
tor-server 1.12.0<br>---------------------<br>=C2=A0* Added auto-setting a =
DRBD verify algorithm on resource-definition<br>=C2=A0* Support for shared =
storage pools (same physical device)<br>=C2=A0* Support for Seagate Exos En=
terprise storage products<br>=C2=A0* Added make resource available API call=
<br>=C2=A0* Reworked auto-quorum property handling, now it is properly inhe=
rited from RG or Controller<br>=C2=A0* Removed linstor-common.conf, setting=
s are now stored directly in all res files<br>=C2=A0* Fixed checking storag=
e pool sizes before running RG spawn (that would fail)<br>=C2=A0* Check if =
storage pool has enough space before running resize<br>=C2=A0* Fixed changi=
ng resource group for resource definition to persistent between restarts<br=
>=C2=A0* Fixed DRBD resource with external metadata (would always be recrea=
ted)<br>=C2=A0* Fixed incorrect copying of layer data in snapshots with LUK=
S<br>=C2=A0* Allow &quot;Undelete&quot; of a resource that is in DELETING s=
tate<br>=C2=A0* REST-API 1.7.0</font><br></div><div><br></div><div><div><fo=
nt face=3D"monospace"><a href=3D"https://www.linbit.com/downloads/linstor/l=
instor-server-1.12.0.tar.gz" target=3D"_blank">https://www.linbit.com/downl=
oads/linstor/linstor-server-1.12.0.tar.gz</a></font><br></div><div><br></di=
v><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+=
archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">htt=
ps://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></di=
v><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div><di=
v><br></div><div>[1]=C2=A0<a href=3D"https://linbit.com/drbd-user-guide/lin=
stor-guide-1_0-en/#ch-exos">https://linbit.com/drbd-user-guide/linstor-guid=
e-1_0-en/#ch-exos</a></div></div>

--00000000000013490b05c103db61--
