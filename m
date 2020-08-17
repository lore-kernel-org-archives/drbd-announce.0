Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7759442040F
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Aug 2020 16:18:29 +0200 (CEST)
Received: by mail-wr1-f54.google.com with SMTP id 88so15206518wrh.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Aug 2020 07:18:29 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 17 Aug 2020 16:17:17 +0200
Message-ID: <CAHmn2DMeHx5RTra2MVk=PKuPUyxUY02kuXfyjhTO+ODQKXG7Vg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="00000000000033194705ad136e94"
Subject: [DRBD-announce] linstor-server 1.8.0 release
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

--00000000000033194705ad136e94
Content-Type: text/plain; charset="UTF-8"

Hi All!

Finally linstor-server 1.8.0 is here.

Changes from rc1 are a few reported bug fixes and also a snapshot-shipping
list is now available in the API.
I'm copy-pasting the release highlights from the rc1:

* SOS-report: using "linstor sos-report create" and afterwards the
"download" subcommand, Linstor can now generate a tar.gz containing
machine- and Linstor-specific information, log files, error reports
and such.
* Snapshot-shipping[1]: Linstor can now ship newly created snapshots
from one Linstor resource to another using 'zfs send' / 'zfs receive'
for ZFS or 'thin_send' / 'thin_recv' for LVM. Both tools support
incremental shipment. Additionally Linstor can be configured with
auto-snapshot-shipping as well as auto-snapshots (without shipping)

NOTE: LVM-based snapshot-shipping requires the 'thin_send_recv' tool
to be installed which is available from the PPA as well as from
https://packages.linbit.com/public/

linstor-server 1.8.0
--------------------
 * rest-access.log is disabled now per default
 * snapshot shipping with status view
 * only update satellites if properties really changed
 * allow to set, controller/satellite settings via REST API
 * add `/v1/sos-report` REST-API, to create and/or download an SOS report
 * add Prometheus `/metrics` url with reporting
 * add Sentry integration to capture error info (Beorn Facchini)
 * add modifying resource definition resource group linking
 * error-reports are now additionally stored in a local h2 sql db, with
more info
 * user errors that would produce a error-report are greatly reduced
 * simplify storage pool create property to a single one
 * do not bind controller protobuf Plain/SSL-Connector
 * do not throttle external meta data volumes, if volumes are throttled
 * added zfs create options
 * REST-API v1.3.0

https://www.linbit.com/downloads/linstor/linstor-server-1.8.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1]
https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-shipping_snapshots-linstor

Cheers,
Rene

--00000000000033194705ad136e94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All!<div><br></div><div>Finally linstor-server 1.8.0 is=
 here.</div><div><br></div><div>Changes from rc1 are a few reported bug fix=
es and also a snapshot-shipping</div><div>list is now available in the API.=
</div><div>I&#39;m copy-pasting the release highlights from the rc1:</div><=
div><br></div><div>* SOS-report: using &quot;linstor sos-report create&quot=
; and afterwards the<br>&quot;download&quot; subcommand, Linstor can now ge=
nerate a tar.gz containing<br>machine- and Linstor-specific information, lo=
g files, error reports<br>and such.<br>* Snapshot-shipping[1]: Linstor can =
now ship newly created snapshots<br>from one Linstor resource to another us=
ing &#39;zfs send&#39; / &#39;zfs receive&#39;<br>for ZFS or &#39;thin_send=
&#39; / &#39;thin_recv&#39; for LVM. Both tools support<br>incremental ship=
ment. Additionally Linstor can be configured with<br>auto-snapshot-shipping=
 as well as auto-snapshots (without shipping)<br><br>NOTE: LVM-based snapsh=
ot-shipping requires the &#39;thin_send_recv&#39; tool<br>to be installed w=
hich is available from the PPA as well as from<br><a href=3D"https://packag=
es.linbit.com/public/" target=3D"_blank">https://packages.linbit.com/public=
/</a><br></div><div><br></div><div><font face=3D"monospace">linstor-server =
1.8.0<br>--------------------<br>=C2=A0* rest-access.log is disabled now pe=
r default<br>=C2=A0* snapshot shipping with status view<br>=C2=A0* only upd=
ate satellites if properties really changed<br>=C2=A0* allow to set, contro=
ller/satellite settings via REST API<br>=C2=A0* add `/v1/sos-report` REST-A=
PI, to create and/or download an SOS report<br>=C2=A0* add Prometheus `/met=
rics` url with reporting<br>=C2=A0* add Sentry integration to capture error=
 info (Beorn Facchini)<br>=C2=A0* add modifying resource definition resourc=
e group linking<br>=C2=A0* error-reports are now additionally stored in a l=
ocal h2 sql db, with more info<br>=C2=A0* user errors that would produce a =
error-report are greatly reduced<br>=C2=A0* simplify storage pool create pr=
operty to a single one<br>=C2=A0* do not bind controller protobuf Plain/SSL=
-Connector<br>=C2=A0* do not throttle external meta data volumes, if volume=
s are throttled</font></div><div><font face=3D"monospace">=C2=A0* added zfs=
 create options<br>=C2=A0* REST-API v1.3.0<br></font></div><div><font face=
=3D"monospace"><br></font></div><div><font face=3D"monospace"><a href=3D"ht=
tps://www.linbit.com/downloads/linstor/linstor-server-1.8.0.tar.gz">https:/=
/www.linbit.com/downloads/linstor/linstor-server-1.8.0.tar.gz</a></font><br=
></div><div><br></div><div><div><div>Linstor PPA:<br><a href=3D"https://lau=
nchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" t=
arget=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9=
-stack</a></div></div><div><br></div><div>[1]=C2=A0<a href=3D"https://www.l=
inbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-shipping_snapshots-linsto=
r" target=3D"_blank">https://www.linbit.com/drbd-user-guide/linstor-guide-1=
_0-en/#s-shipping_snapshots-linstor</a><br></div><div><br></div><div>Cheers=
,</div><div>Rene</div></div></div>

--00000000000033194705ad136e94--
