Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C0D8C160849
	for <drbd-announce@lists.linbit.com>;
	Wed,  8 Apr 2026 15:09:01 +0200 (CEST)
Received: by mail-wr1-f54.google.com with SMTP id
	ffacd0b85a97d-43cff5dafc3so5375789f8f.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 08 Apr 2026 06:09:01 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 8 Apr 2026 15:08:49 +0200
Message-ID: <CAHmn2DP7FXRABh0_-Y0htZMKxvD9mq-2Svedbif3g0xYWeaKiA@mail.gmail.com>
Subject: linstor-server 1.33.2 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="00000000000072e7aa064ef29a20"
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

--00000000000072e7aa064ef29a20
Content-Type: text/plain; charset="UTF-8"

Hi!

This release fixes a class of bugs that might cause DRBD resources to end
up with replica differences, even though DRBD shows them as UpToDate. It
happened to resources that got a replica added later, after creation time.
It only affects thinly-provisioned volumes, and only if they never had a
write request with a node absent and fully utilized peer slots. (in other
words, which are still on the day-0 current UUID).
In large, dynamic deployments, approximately 5-10% of the existing
resources are affected. The DRBD team will follow up with more details in
the announcement of the next DRBD release, which is scheduled for the next
few days.
Additionally, fixes from the master branch have been cherry-picked, see
changelog for details.

## NOTE
With this release we also announce that we will remove etcd database
support with Linstor 1.34.0, until then you will have time to migrate to
(SQL or k8s-CRD) databases.
Heads up: Linstor 1.34.0 will switch to java-21, so be prepared to have
java-21 jre ready for the next minor upgrade

## [1.33.2] - 2026-04-08

### Changed

- Changed the mechanism how LINSTOR sets DRBD volumes as UptoDate

### Removed

- WinDRBD specific patches regarding missing sha1 and hmac crypto algorithms

### Fixed

- Fixed resource definition delete setting DELETE flag when resources are
still in use
- Fixed retry deletion of already deleting resource (no longer fails if it
is the second to last diskful resource)
- Satellite now properly merges remote nodes + their data (props, netIfs)
- Fixed potential ConcurrentModificationException when serializing
properties
- Fixed race condition in updateController() that leads to uncompleted
ChangedController answers (client timeout)
- Fixed bug that could lead to NPE when multiple cache layers are processed
in one DevMgr cycle
- Fixed possible bug that could have caused orphaned DRBD resources being
left on the satellite
- Fixed autounplacer not prioritizing autoplacer-settings violations over
free space properly
- Fixed EventStreamClosed exception if toggle-disk a single diskful resource
- Fixed some issues with ReconnectorTask when multiple peers representing
the same nodes try to reconnect
- Fixed property "Linstor/Drbd/auto-block-size": Now works properly on
controller level
- Fixed that additional volumes now also run mkfs if configured

https://pkg.linbit.com//downloads/linstor/linstor-server-1.33.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--00000000000072e7aa064ef29a20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>This release fixes a class of bugs =
that might cause DRBD resources to end up with replica differences, even th=
ough DRBD shows them as UpToDate. It happened to resources that got a repli=
ca added later, after creation time. It only affects thinly-provisioned vol=
umes, and only if they never had a write request with a node absent and ful=
ly utilized peer slots. (in other words, which are still on the day-0 curre=
nt UUID).<br aria-hidden=3D"true">In large, dynamic deployments, approximat=
ely 5-10% of the existing resources are affected. The DRBD team will follow=
 up with more details in the announcement of the next DRBD release, which i=
s scheduled for the next few days.</div><div>Additionally, fixes from the m=
aster branch have been cherry-picked, see changelog for details.</div><div>=
<br></div><div>## NOTE<br>With this release we also announce that we will r=
emove etcd database support with Linstor 1.34.0, until then you will have t=
ime to migrate to (SQL or k8s-CRD) databases.<br>Heads up: Linstor 1.34.0 w=
ill switch to java-21, so be prepared to have java-21 jre ready for the nex=
t minor upgrade</div><div></div><div><br></div><div>## [1.33.2] - 2026-04-0=
8<br><br>### Changed<br><br>- Changed the mechanism how LINSTOR sets DRBD v=
olumes as UptoDate<br><br>### Removed<br><br>- WinDRBD specific patches reg=
arding missing sha1 and hmac crypto algorithms<br><br>### Fixed<br><br>- Fi=
xed resource definition delete setting DELETE flag when resources are still=
 in use<br>- Fixed retry deletion of already deleting resource (no longer f=
ails if it is the second to last diskful resource)<br>- Satellite now prope=
rly merges remote nodes + their data (props, netIfs)<br>- Fixed potential C=
oncurrentModificationException when serializing properties<br>- Fixed race =
condition in updateController() that leads to uncompleted ChangedController=
 answers (client timeout)<br>- Fixed bug that could lead to NPE when multip=
le cache layers are processed in one DevMgr cycle<br>- Fixed possible bug t=
hat could have caused orphaned DRBD resources being left on the satellite<b=
r>- Fixed autounplacer not prioritizing autoplacer-settings violations over=
 free space properly<br>- Fixed EventStreamClosed exception if toggle-disk =
a single diskful resource<br>- Fixed some issues with ReconnectorTask when =
multiple peers representing the same nodes try to reconnect<br>- Fixed prop=
erty &quot;Linstor/Drbd/auto-block-size&quot;: Now works properly on contro=
ller level<br>- Fixed that additional volumes now also run mkfs if configur=
ed<br></div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//dow=
nloads/linstor/linstor-server-1.33.2.tar.gz">https://pkg.linbit.com//downlo=
ads/linstor/linstor-server-1.33.2.tar.gz</a><br></div><div><br></div><div><=
div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linbit/+arc=
hive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https:=
//launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><=
div><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div></div>

--00000000000072e7aa064ef29a20--
