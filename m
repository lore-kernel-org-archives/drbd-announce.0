Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
	[209.85.216.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6E08E162773
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 Dec 2025 10:03:34 +0100 (CET)
Received: by mail-pj1-f52.google.com with SMTP id
	98e67ed59e1d1-34c2f335681so3714371a91.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 23 Dec 2025 01:03:34 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 23 Dec 2025 10:03:22 +0100
Message-ID: <CAHmn2DPaqmvxRCm63OM27HZ=Aq3T21s4PReXc=XkK8RAhSvJig@mail.gmail.com>
Subject: linstor-server 1.33.1 release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000006ed68906469ad1ff"
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

--0000000000006ed68906469ad1ff
Content-Type: text/plain; charset="UTF-8"

Hi!

A small patch release before Christmas and the end of the year.

## NOTE
With this release we also announce that we will remove etcd database
support with Linstor 1.34.0, until then you will have time to migrate to
(SQL or k8s-CRD) databases.
Heads up: Linstor 1.34.0 will switch to java-21, so be prepared to have
java-21 jre ready for the next minor upgrade

## [1.33.1] - 2025-12-22

### Fixed

- Fixed missing transaction-commits during evacuate's copy-snap
- Make sure updateDiscGranularity is not called if only DRBD_DELETE is set
- Also delete error-report text files on error delete api call
- Properly exit on a CriticalError instead of running into a deadlock

https://pkg.linbit.com//downloads/linstor/linstor-server-1.33.1.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000006ed68906469ad1ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>A small patch release before Christ=
mas and the end of the year.</div><div><br></div><div>## NOTE<br>With this =
release we also announce that we will remove etcd database support with Lin=
stor 1.34.0, until then you will have time to migrate to (SQL or k8s-CRD) d=
atabases.<br>Heads up: Linstor 1.34.0 will switch to java-21, so be prepare=
d to have java-21 jre ready for the next minor upgrade</div><div></div><div=
><br></div><div>## [1.33.1] - 2025-12-22<br><br>### Fixed<br><br>- Fixed mi=
ssing transaction-commits during evacuate&#39;s copy-snap<br>- Make sure up=
dateDiscGranularity is not called if only DRBD_DELETE is set<br>- Also dele=
te error-report text files on error delete api call<br>- Properly exit on a=
 CriticalError instead of running into a deadlock</div><div><br></div><div>=
<div><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor-server-1.=
33.1.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor-server-1.33.=
1.tar.gz</a><br></div><div><br></div><div><br></div><div><div><div><div>Lin=
stor PPA:<br><a href=3D"https://launchpad.net/~linbit/+archive/ubuntu/linbi=
t-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net/~=
linbit/+archive/ubuntu/linbit-drbd9-stack</a></div></div><div><br></div><di=
v>Cheers,<br></div><div>Rene</div></div></div></div></div>

--0000000000006ed68906469ad1ff--
