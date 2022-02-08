Return-Path: <lars.ellenberg@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D95924205EC
	for <drbd-announce@lists.linbit.com>;
	Wed,  9 Feb 2022 18:42:34 +0100 (CET)
Received: by mail-ej1-f49.google.com with SMTP id p24so9565751ejo.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 09 Feb 2022 09:42:34 -0800 (PST)
Received: from grappa.linbit (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	m25sm5756138edr.104.2022.02.09.09.42.33
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 09 Feb 2022 09:42:33 -0800 (PST)
Resent-Message-ID: <20220209174232.GA1667193@grappa.linbit>
Message-ID: <c972afbd-4834-83f5-54d1-c5dbacaa41c1@linbit.com>
Date: Tue, 8 Feb 2022 16:23:26 +0100
MIME-Version: 1.0
Content-Language: en-US
From: =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linbit.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: drbd-user-bounces@lists.linbit.com
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] [DRBD-user] linstor-gateway v0.11.0-rc.2
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

For the first time in this format, I am pleased to announce a new 
release of LINSTOR Gateway.

LINSTOR Gateway aims to semi-automate the setup and maintenance of 
highly available iSCSI and NVMe-oF targets, as well as NFS exports.
It does so by orchestrating resources in LINSTOR and DRBD Reactor.

The tool has been hosted on GitHub for a while, but as public interest 
has gone up we have decided to also announce its releases on this list.

LINSTOR Gateway is still in the testing and development phase, so your 
help in testing this release candidate and providing feedback would be 
greatly appreciated.

https://github.com/LINBIT/linstor-gateway/releases/v0.11.0-rc.2

---

Also see the following links to learn more about these technologies:

https://github.com/LINBIT/linstor-gateway
https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#ch-linstor-gateway
https://github.com/LINBIT/drbd-reactor
https://github.com/LINBIT/linstor-server
_______________________________________________
Star us on GITHUB: https://github.com/LINBIT
drbd-user mailing list
drbd-user@lists.linbit.com
https://lists.linbit.com/mailman/listinfo/drbd-user
