Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
	[209.85.218.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 4772716095D
	for <drbd-announce@lists.linbit.com>;
	Tue,  8 Jul 2025 13:27:01 +0200 (CEST)
Received: by mail-ej1-f50.google.com with SMTP id
	a640c23a62f3a-ae0df6f5758so696078066b.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 08 Jul 2025 04:27:01 -0700 (PDT)
Date: Tue, 08 Jul 2025 13:26:59 +0200
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linbit.com
Subject: LINSTOR Gateway v1.9.0
Message-ID: <20250708112659.tHNJl%christoph.boehmwalder@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

Hello,

a new version of LINSTOR Gateway has just been released: v1.9.0

https://github.com/LINBIT/linstor-gateway/releases/tag/v1.9.0

Here is the relevant excerpt from the changelog:

-----------------------------------
## [1.9.0] - 2025-07-08

### Changes

* Add a Server header to the REST API responses to identify the LINSTOR Gat=
eway server. (82c9a4fe)
* Generate Software Bill of Materials (SBOM) files for each release. (173ab=
210)
* Clarify a health check message about the `targetcli` package. (df6af21c)

### Fixes

* Make the first 8 bytes of the `product_id` unique so that VMware ESXi doe=
s not consider two devices to be identical. (f9510879)
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
