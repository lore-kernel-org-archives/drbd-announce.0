Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
	[209.85.216.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4984A160915
	for <drbd-announce@lists.linbit.com>;
	Wed, 21 May 2025 10:19:45 +0200 (CEST)
Received: by mail-pj1-f44.google.com with SMTP id
	98e67ed59e1d1-30e8feb1830so4145633a91.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 21 May 2025 01:19:45 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 21 May 2025 10:19:33 +0200
Message-ID: <CAHmn2DO+fOq9FXZ+WHKwSzp95vmwCdqdzJXAy7Oi15xB54jwrw@mail.gmail.com>
Subject: linstor-server 1.31.1 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000000a6b200635a107c9"
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

--0000000000000a6b200635a107c9
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the first bugfix release for Linstor 1.31, most prominent is a fix
for a
regression regarding tiebreakers, if quorum was explicitly set majority
(linstor-gateway)
Linstor didn't create a tiebreaker anymore, this is fixed now.

## [1.31.1] - 2025-05-21

### Changed

- Move generated crd db drivers into own directory to fix gradlew clean
- mkfs ext4 and xfs creation are now forced
- Map replication state entries with actual node names, before drbd peer
names were used

### Fixed

- Fixed race condition during "linstor node reconnect" leading to
reconnect-cycle
- Fixed duplicate connections to same satellite (older connection gets
dropped now)
- Fixed problems with JUnit ProcCryptoUtilsTest
- Fixed possible ConcurrentModificationException when satellite deletes data
- Fixed duplicated minor number bug (based on orphaned .res file)
- Fixed reading wrong property for cache's blocksize
- Fixed incorrect calculation of dm-cache's meta-device size
- Fixed cases where DrbdVlmData's exists boolean was not properly updated
- Fixed rare "access to deleted node" in the PingTask
- Fixed resource-group modify not deleting tiebreaker if quorum property
changed
- Fixed auto-quorum/tiebreaker if quorum property was explicitly set to
majority

https://pkg.linbit.com//downloads/linstor/linstor-server-1.31.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000000a6b200635a107c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Here is the first bugfix release fo=
r Linstor 1.31, most prominent is a fix for a</div><div>regression regardin=
g tiebreakers, if quorum was explicitly set majority (linstor-gateway)</div=
><div>Linstor didn&#39;t create a tiebreaker anymore, this is fixed now.</d=
iv><div></div><div><br></div><div>## [1.31.1] - 2025-05-21<br><br>### Chang=
ed<br><br>- Move generated crd db drivers into own directory to fix gradlew=
 clean<br>- mkfs ext4 and xfs creation are now forced<br>- Map replication =
state entries with actual node names, before drbd peer names were used<br><=
br>### Fixed<br><br>- Fixed race condition during &quot;linstor node reconn=
ect&quot; leading to reconnect-cycle<br>- Fixed duplicate connections to sa=
me satellite (older connection gets dropped now)<br>- Fixed problems with J=
Unit ProcCryptoUtilsTest<br>- Fixed possible ConcurrentModificationExceptio=
n when satellite deletes data<br>- Fixed duplicated minor number bug (based=
 on orphaned .res file)<br>- Fixed reading wrong property for cache&#39;s b=
locksize<br>- Fixed incorrect calculation of dm-cache&#39;s meta-device siz=
e<br>- Fixed cases where DrbdVlmData&#39;s exists boolean was not properly =
updated<br>- Fixed rare &quot;access to deleted node&quot; in the PingTask<=
br>- Fixed resource-group modify not deleting tiebreaker if quorum property=
 changed<br>- Fixed auto-quorum/tiebreaker if quorum property was explicitl=
y set to majority</div><div><br></div><div><div><a href=3D"https://pkg.linb=
it.com//downloads/linstor/linstor-server-1.31.1.tar.gz">https://pkg.linbit.=
com//downloads/linstor/linstor-server-1.31.1.tar.gz</a><br></div><div><br><=
/div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"https://=
launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer=
" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-dr=
bd9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>Rene</di=
v></div></div></div></div>

--0000000000000a6b200635a107c9--
