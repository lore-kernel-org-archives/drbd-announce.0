Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
	[209.85.218.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2D8C34201F6
	for <drbd-announce@lists.linbit.com>;
	Tue,  8 Nov 2022 09:57:32 +0100 (CET)
Received: by mail-ej1-f50.google.com with SMTP id d26so36716127eje.10
	for <drbd-announce@lists.linbit.com>;
	Tue, 08 Nov 2022 00:57:32 -0800 (PST)
Message-ID: <c3100105-1f22-1b3e-8a72-a4fc69294ff0@linbit.com>
Date: Tue, 8 Nov 2022 09:57:30 +0100
MIME-Version: 1.0
Content-Language: en-US
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
From: =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] linstor-gateway v1.0.0-rc.1
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

I am pleased to announce a new release candidate for LINSTOR Gateway,
v1.0.0-rc.1.

https://github.com/LINBIT/linstor-gateway/releases/tag/v1.0.0-rc.1

Though the major version change does not particularity carry a lot of
meaning, it is a step on the way of stabilizing the project's API and
features.

Part of that stabilization effort is the most prominent feature of this
release, the `upgrade` command. This can be used to migrate existing
targets to new versions of LINSTOR Gateway.

Please help us test this release candidate by submitting bugs either on
this mailing list or via GitHub.

-- 
Christoph Böhmwalder
LINBIT | Keeping the Digital World Running
DRBD HA —  Disaster Recovery — Software defined Storage
