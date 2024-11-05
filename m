Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 55FEB420327
	for <drbd-announce@lists.linbit.com>;
	Tue,  5 Nov 2024 13:29:11 +0100 (CET)
Received: by mail-pf1-f174.google.com with SMTP id
	d2e1a72fcca58-72097a5ca74so5068025b3a.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 05 Nov 2024 04:29:11 -0800 (PST)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 5 Nov 2024 13:28:59 +0100
Message-ID: <CAHmn2DNRAtd-hMBk1MfF59pTWGs0V0DCvEg6uTNM-5CQ2PcqOw@mail.gmail.com>
Subject: linstor-server 1.29.2 release
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="0000000000005b37740626298cf9"
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

--0000000000005b37740626298cf9
Content-Type: text/plain; charset="UTF-8"

Hi!

As it is still some time until we are ready for the next full feature
release,
we accumulated some bug fixes for various smaller issues and decided
to do a release with them.

## [1.29.2] - 2024-11-05

### Changed

- luksChangeKey is now also memory limited to 256MB

### Fixed

- Fixed usage of FileSystemWatch to properly trigger when devices appear
- Do not update disc granularity while resource is cloning
- Drbd-layer should not try to adjust resource while still cloning
- Fixed possible "access to deleted resource" in case of an issue during
rsc-creation + manual delete
- AutoPlaceAPI: remove unnecessary resource definition loading
- Fixed bug that could be lead to violation of configured
--x-replicas-on-different restriction
- Query resource-connection didn't work if source and target node are
reversed.
- Fixed unit tests relying on current timezone offset instead of current
timezone

https://pkg.linbit.com//downloads/linstor/linstor-server-1.29.2.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--0000000000005b37740626298cf9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>As it is still some time until we a=
re ready for the next full feature release,</div><div>we accumulated=C2=A0s=
ome bug fixes for various smaller issues and decided</div><div>to do a rele=
ase with them.</div><div><br></div><div>## [1.29.2] - 2024-11-05<br><br>###=
 Changed<br><br>- luksChangeKey is now also memory limited to 256MB<br><br>=
### Fixed<br><br>- Fixed usage of FileSystemWatch to properly trigger when =
devices appear<br>- Do not update disc granularity while resource is clonin=
g<br>- Drbd-layer should not try to adjust resource while still cloning<br>=
- Fixed possible &quot;access to deleted resource&quot; in case of an issue=
 during rsc-creation + manual delete<br>- AutoPlaceAPI: remove unnecessary =
resource definition loading<br>- Fixed bug that could be lead to violation =
of configured --x-replicas-on-different restriction<br>- Query resource-con=
nection didn&#39;t work if source and target node are reversed.<br>- Fixed =
unit tests relying on current timezone offset instead of current timezone</=
div><div><br></div><div><div><a href=3D"https://pkg.linbit.com//downloads/l=
instor/linstor-server-1.29.2.tar.gz">https://pkg.linbit.com//downloads/lins=
tor/linstor-server-1.29.2.tar.gz</a><br></div><div><br></div><div><br></div=
><div><div><div><div>Linstor PPA:<br><a href=3D"https://launchpad.net/~linb=
it/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank"=
>https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a></div>=
</div><div><br></div><div>Cheers,<br></div><div>Rene</div></div></div></div=
></div>

--0000000000005b37740626298cf9--
