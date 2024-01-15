Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
	[209.85.215.180])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id EBF7B4201BB
	for <drbd-announce@lists.linbit.com>;
	Mon, 15 Jan 2024 10:46:28 +0100 (CET)
Received: by mail-pg1-f180.google.com with SMTP id
	41be03b00d2f7-5cdf90e5cdeso1195621a12.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 15 Jan 2024 01:46:28 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 15 Jan 2024 10:46:16 +0100
Message-ID: <CAHmn2DNn3ynu79sTgVxzKvV0Foh4C0r669L24bdNwOpO2pfcng@mail.gmail.com>
To: drbd-user <drbd-user@lists.linbit.com>, drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000405ec4060ef8e3bf"
Subject: [DRBD-announce] linstor-opennebula v3.0.0 release
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

--000000000000405ec4060ef8e3bf
Content-Type: text/plain; charset="UTF-8"

Hi!

We have a new major opennebula plugin release, major release because we
removed
the handling of Opennebula context images for system datastores.
From now on context images will be handled by the tm/ssh driver and context
images will no more
use up a drbd resource for each VM.

But this change needs manual intervention if you already had to set
the CONTEXT_DISK_TYPE
attribute, you now need to remove it again, as those ISO images will be
file type again.

I repaste here the section from the README.md file about upgrading:

## From 2.x to 3.x

### Linstor system datastore

In version 3.x we removed handling context images within Linstor plugin
and fallback to the `tm/ssh` implementation.

This means you have to remove the `CONTEXT_DISK_TYPE` attribute from
the Linstor system datastore, as we now use the default `FILE` type.

Context images are just read-only ISO files that are recreated every time
the VM is started and there is not much benefit from having them
as DRBD resources.

The plugin will delete old context images on VM delete and undeploy actions.
If you want to clean up the context images `OpenNebula-vm-context-*` you
need to
stop and start the VM that is still using it (no reboot).

linstor-opennebula 3.0.0
------------------------
  * Backup support: driver now forwards backup calls to `tm/shared` driver
  * Removed context image handling, now the default `tm/ssh` will create
ISO context disks
  * Support undeploy/mv actions to none Linstor nodes

Best regards,
Rene

--000000000000405ec4060ef8e3bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<br><div><br></div><div>We have a new major opennebula =
plugin release, major release because we removed</div><div>the handling of =
Opennebula context images for system datastores.</div><div>From now on cont=
ext images will be handled by the tm/ssh driver and context images will no =
more</div><div>use up a drbd resource for each VM.</div><div><br></div><div=
>But this change needs manual intervention if you already had to set the=C2=
=A0CONTEXT_DISK_TYPE</div><div>attribute, you now need to remove it again, =
as those ISO images will be file type=C2=A0again.</div><div><br></div><div>=
I repaste here the section from the README.md file about upgrading:</div><d=
iv><br></div><div>## From 2.x to 3.x<br><br>### Linstor system datastore<br=
><br>In version 3.x we removed handling context images within Linstor plugi=
n<br>and fallback to the `tm/ssh` implementation.<br><br>This means you hav=
e to remove the `CONTEXT_DISK_TYPE` attribute from<br>the Linstor system da=
tastore, as we now use the default `FILE` type.<br><br>Context images are j=
ust read-only ISO files that are recreated every time<br>the VM is started =
and there is not much benefit from having them<br>as DRBD resources.<br><br=
>The plugin will delete old context images on VM delete and undeploy action=
s.<br>If you want to clean up the context images `OpenNebula-vm-context-*` =
you need to<br>stop and start the VM that is still using it (no reboot).<br=
><br>linstor-opennebula 3.0.0<br>------------------------<br>=C2=A0 * Backu=
p support: driver now forwards backup calls to `tm/shared` driver<br>=C2=A0=
 * Removed context image handling, now the default `tm/ssh` will create ISO=
 context disks<br>=C2=A0 * Support undeploy/mv actions to none Linstor node=
s<br></div><div><br></div><div>Best regards,</div><div>Rene</div></div>

--000000000000405ec4060ef8e3bf--
