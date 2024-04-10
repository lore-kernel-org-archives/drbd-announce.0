Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id DFBC94202BF
	for <drbd-announce@lists.linbit.com>;
	Wed, 10 Apr 2024 07:33:31 +0200 (CEST)
Received: by mail-ed1-f54.google.com with SMTP id
	4fb4d7f45d1cf-56e69a51a33so2294781a12.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 09 Apr 2024 22:33:31 -0700 (PDT)
Message-ID: <6e23dd22-3754-42c6-b681-a46afa2e60ef@linbit.com>
Date: Wed, 10 Apr 2024 07:33:27 +0200
MIME-Version: 1.0
Content-Language: en-US
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
From: =?UTF-8?Q?Christoph_B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
Subject: LINSTOR Gateway v1.5.0-rc.1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

Hi everyone,

we just released a new release candidate for LINSTOR Gateway, v1.5.0-rc.1.

https://github.com/LINBIT/linstor-gateway/releases/tag/v1.5.0-rc.1

Probably the most interesting feature in this release is a behavior 
change when creating a resource. LINSTOR Gateway will now monitor the 
resource for a few seconds after creating it to make sure that the 
underlying service actually stared.
The heuristic is: if the resource becomes "InUse" on any node, and then 
stays "InUse" on that same node for five seconds, we consider it running.

This feature should vastly improve the user experience in case a 
resource agent encounters an error while starting a service.

For the full changelog, see the release notes on Github above.

Please help us test this release candidate and report any issues you may 
find via Github.

Thanks,
Christoph

-- 
Christoph Böhmwalder
LINBIT | Keeping the Digital World Running
DRBD HA —  Disaster Recovery — Software defined Storage
