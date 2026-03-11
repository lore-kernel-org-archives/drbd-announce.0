Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id B2485162319
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Mar 2026 18:10:04 +0100 (CET)
Received: by mail-wr1-f45.google.com with SMTP id
	ffacd0b85a97d-439f59dfda2so76160f8f.2
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Mar 2026 10:10:04 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	ffacd0b85a97d-439fe1affe9sm687195f8f.15.2026.03.11.10.10.03
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 11 Mar 2026 10:10:03 -0700 (PDT)
Message-ID: <76a549dd-c4d2-4a47-985b-a4316acefee8@linbit.com>
Date: Wed, 11 Mar 2026 18:10:01 +0100
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Khoshnazar-Thoma <johannes.thoma@linbit.com>
Subject: LINBIT SDS For Windows 1.0.0 released
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

Dear WinDRBD community,

We are happy and proud to announce the availability of LINBIT SDS For Windows.
LINBIT SDS For Windows is a fully featured Software Defined Storage (SDS) solution
for Windows clusters (or also for mixed Linux/Windows clusters).

It comes with following components:

   * WinDRBD: Replication engine (driver) that makes your data highly available
   * LINSTOR: Storage orchestrator for large (100+ physical nodes) clusters
   * LINSTOR GUI: Easy to use, intuitive web based GUI for LINSTOR
   * LINSTOR Client: Command line client for LINSTOR
   * DRBD Reactor / Promoter: Cluster manager: starts and stops
     resources in response to events (node lost, ...)

For Windows, LINBIT SDS comes with a single installer EXE that allows users
to get started quickly. There is a community edition for evaluation purposes
which requires nodes to be set to test mode but has no other restrictions
in storage size or number of nodes. LINBIT SDS For Windows can be downloaded
from the LINBIT website (www.linbit.com, it is currently filed under Windows
DRBD driver).

I will give an introduction and 3 demos tomorrow at the community meeting.
I would like to invite you to join and ask any questions that may arise:

https://linbit.com/community-meeting/

Best regards,

- Johannes


