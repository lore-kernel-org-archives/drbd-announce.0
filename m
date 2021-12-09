Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1D0934201C0
	for <drbd-announce@lists.linbit.com>;
	Thu,  9 Dec 2021 18:19:27 +0100 (CET)
Received: by mail-wr1-f47.google.com with SMTP id a9so10893652wrr.8
	for <drbd-announce@lists.linbit.com>;
	Thu, 09 Dec 2021 09:19:27 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Thu, 9 Dec 2021 18:19:16 +0100
Message-ID: <CAKnz9xKsEZ_Xk7X8_jLO3Bz4XUKKW8=pzm8jwf62+nxoz8O-3A@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000011c3005d2b9cfcd"
Subject: [DRBD-announce] LINSTOR Operator 1.7.0-rc.5 released
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

--000000000000011c3005d2b9cfcd
Content-Type: text/plain; charset="UTF-8"

Dead LINSTOR on Kubernetes Users,

We just released the 5th RC of LINSTOR Operator 1.7.0.

This release updates the default LINSTOR version to 1.17.0, which fixes the
known issue with regards to restarting the Controller with automatic
passphrase setup leading to a stuck LINSTOR cluster.

As another improvement over the last RC, the CSI nodes are now restarted as
required, so that relabelling of running kubernetes nodes is also applied
to the CSI nodes.

As always, the new chart is available from charts.linstor.io. If no further
issues come up (which I don't expect), we will make the final release early
next week.

Best regards,
Moritz

Changes since 1.6.0
-------------------

Added

- Support LINSTORs `k8s` backend by adding the necessary RBAC resources.
- Automatically create a LINSTOR passphrase when none is configured.
- Automatic eviction and deletion of offline satellites if the Kubernetes
node object was also deleted.
- Automatically restart CSI nodes to pick up changed node labels.

Changed
- DRBD version 9.1.4
- LINSTOR 1.17.0
- LINSTOR CSI 0.17.0
- Updated CSI sidecars

--000000000000011c3005d2b9cfcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dead LINSTOR on Kubernetes Users,</div><div><br></div=
><div>We just released the 5th RC of LINSTOR Operator 1.7.0.</div><div><br>=
</div><div>This release updates the default LINSTOR version to 1.17.0, whic=
h fixes the known issue with regards to restarting the Controller with auto=
matic passphrase setup leading to a stuck LINSTOR cluster.</div><div><br></=
div><div>As another improvement over the last RC, the CSI nodes are now res=
tarted as required, so that relabelling of running kubernetes nodes is also=
 applied to the CSI nodes.</div><div><br></div><div>As always, the new char=
t is available from <a href=3D"http://charts.linstor.io">charts.linstor.io<=
/a>. If no further issues come up (which I don&#39;t expect), we will make =
the final release early next week.<br></div><div><br></div><div>Best regard=
s,</div><div>Moritz<br></div><div><br></div><div>Changes since 1.6.0<br>---=
----------------<br><br>Added<br><br>- Support LINSTORs `k8s` backend by ad=
ding the necessary RBAC resources.<br>- Automatically create a LINSTOR pass=
phrase when none is configured.<br>- Automatic eviction and deletion of off=
line satellites if the Kubernetes node object was also deleted.</div><div>-=
 Automatically restart CSI nodes to pick up changed node labels.<br></div><=
div><br></div><div>Changed<br>- DRBD version 9.1.4<br>- LINSTOR 1.17.0<br>-=
 LINSTOR CSI 0.17.0<br>- Updated CSI sidecars</div></div>

--000000000000011c3005d2b9cfcd--
