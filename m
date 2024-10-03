Return-Path: <christoph.boehmwalder@linbit.com>
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 7D8A74205C7
	for <drbd-announce@lists.linbit.com>;
	Thu,  3 Oct 2024 10:55:41 +0200 (CEST)
Received: by mail-ed1-f43.google.com with SMTP id
	4fb4d7f45d1cf-5c883459b19so740122a12.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 03 Oct 2024 01:55:41 -0700 (PDT)
Message-ID: <f4188dad-56a8-42bc-b72e-001008e5cf9c@linbit.com>
Date: Thu, 3 Oct 2024 10:55:38 +0200
MIME-Version: 1.0
Content-Language: en-US
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
From: =?UTF-8?Q?Christoph_B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
Subject: LINSTOR GUI v1.8.2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

a new version of LINSTOR GUI has just been released: v1.8.2

https://github.com/LINBIT/linstor-gui/releases/tag/v1.8.2

Here is the relevant excerpt from the changelog:

-----------------------------------
# 1.8.2 - 2024-09-30

Added

- Toast log for recent operations : Implemented a toast log feature to 
display feedback on actions like user additions and deletions.
- Advanced options for Storage Pool create form : Added advanced options 
including SED and VDO settings during storage pool creation.
- Detailed settings for Gateway : Added more granular configuration 
options for the gateway.
- Tooltips for Storage Pool form : Tooltips added to the Storage Pool 
form to improve usability.
- Description text for Grafana dashboard settings : Added helpful 
description text to the Grafana dashboard settings section.
- GitHub Workflow integration : Integrated GitHub workflows for 
streamlined development processes.
- NGINX server in Docker : Implemented an NGINX server within Docker to 
enhance deployment options.

Changed

- Gateway status check : Added a check to ensure the gateway is 
operational before enabling it.

Fixed

- Code and log cleanup : Removed outdated codes and logs to maintain 
codebase hygiene.
-----------------------------------

Release assets are available on GitHub or as packages in the LINBIT 
customer repositories.

Regards,
Christoph
