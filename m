Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id CBBF84201E3
	for <drbd-announce@lists.linbit.com>;
	Thu, 17 Mar 2022 15:03:17 +0100 (CET)
Received: by mail-ed1-f49.google.com with SMTP id y22so6713435eds.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 17 Mar 2022 07:03:17 -0700 (PDT)
Message-ID: <0816133c-9854-7a62-1435-3bb8bf1e9938@linbit.com>
Date: Thu, 17 Mar 2022 15:03:13 +0100
MIME-Version: 1.0
Content-Language: en-US
To: drbd-announce@lists.linbit.com
From: =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] linstor-gateway v0.12.0-rc.1
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

a new version of LINSTOR Gateway has just been released.


https://github.com/LINBIT/linstor-gateway/releases/tag/v0.12.1-rc.1


Its main purpose is to fix a typo in the health check for LINSTOR's 
`allowed-files` configuration. This misconfiguration can lead to the 
cluster not coming up correctly from a "cold start" (where all nodes 
have been shut off).

Users of 0.11.0 should upgrade and rerun `linstor-gateway check-health`.

Full changelog:

Features
--------
* Add a new endpoint, `/v2/status`, to query the status of the server
* Support CORS for the REST API
* Generate more readable toml files (`start` entries are on separate lines)
* Mark LINSTOR resources as degraded if the actual place count is lower 
than desired
* Point users to `linstor advise resource` if any resources are degraded

Fixes
-----
* Healthcheck: fix the path of the LINSTOR Satellite systemd override 
directory

Miscellaneous
-------------
* Update Go dependencies


Thank you for testing!

Regards,
-- 
Christoph Böhmwalder
LINBIT | Keeping the Digital World Running
DRBD HA —  Disaster Recovery — Software defined Storage
