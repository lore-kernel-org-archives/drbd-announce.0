Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
	[209.85.216.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id ECD5116B8B8
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Apr 2025 14:21:03 +0200 (CEST)
Received: by mail-pj1-f53.google.com with SMTP id
	98e67ed59e1d1-3011737dda0so561672a91.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Apr 2025 05:21:03 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 10 Apr 2025 14:20:50 +0200
Message-ID: <CAHmn2DOrEpMYwihvqQf5k_PcooOc-65dV73LTgqj-8FkRNf+0g@mail.gmail.com>
Subject: python-linstor/linstor-client 1.25.4(3) release
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="0000000000007b3e2f06326b9e04"
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

--0000000000007b3e2f06326b9e04
Content-Type: text/plain; charset="UTF-8"

Hi!

Bug fix release with the error-report delete command and fixes for the
--curl option.

## linstor-client
## [1.25.4] - 2025-04-10

### Fixed

- rd clone: fix crash if --curl was set

https://pkg.linbit.com//downloads/linstor/linstor_client-1.25.4.tar.gz

## python-linstor
## [1.25.3] - 2025-04-10

### Added

- Add TLS certificate options to "curl" debug output

### Fixed

- Correctly pass parameters in error_report_delete
- resource_dfn_clone: Fix exception if curl option was set

https://pkg.linbit.com//downloads/linstor/python_linstor-1.25.3.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

--0000000000007b3e2f06326b9e04
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Bug fix release with the=
 error-report delete command and fixes for the --curl option.</div><div><br=
></div><div>## linstor-client</div><div>## [1.25.4] - 2025-04-10<br><br>###=
 Fixed<br><br>- rd clone: fix crash if --curl was set</div><div><br></div><=
div><a href=3D"https://pkg.linbit.com//downloads/linstor/linstor_client-1.2=
5.4.tar.gz">https://pkg.linbit.com//downloads/linstor/linstor_client-1.25.4=
.tar.gz</a><br></div><br><div>## python-linstor</div><div>## [1.25.3] - 202=
5-04-10<br><br>### Added<br><br>- Add TLS certificate options to &quot;curl=
&quot; debug output<br><br>### Fixed<br><br>- Correctly pass parameters in =
error_report_delete<br>- resource_dfn_clone: Fix exception if curl option w=
as set</div><div><br></div><div><a href=3D"https://pkg.linbit.com//download=
s/linstor/python_linstor-1.25.3.tar.gz">https://pkg.linbit.com//downloads/l=
instor/python_linstor-1.25.3.tar.gz</a><br></div><div><br></div><div><div>L=
instor=C2=A0PPA:<br></div><div><div><a href=3D"https://launchpad.net/~linbi=
t/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferrer" target=3D"_blank">=
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack</a><br></d=
iv><div><br></div><div>Best regards,</div><div>Rene</div></div></div></div>

--0000000000007b3e2f06326b9e04--
