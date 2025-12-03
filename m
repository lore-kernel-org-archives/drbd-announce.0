Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6D5B316275B
	for <drbd-announce@lists.linbit.com>;
	Wed,  3 Dec 2025 17:07:28 +0100 (CET)
Received: by mail-ed1-f45.google.com with SMTP id
	4fb4d7f45d1cf-640c6577120so12108969a12.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 03 Dec 2025 08:07:28 -0800 (PST)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	4fb4d7f45d1cf-647a617f30esm155870a12.31.2025.12.03.08.07.23
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 03 Dec 2025 08:07:25 -0800 (PST)
Message-ID: <0604b183-8243-4bbf-b5cc-bb53142cdb6d@linbit.com>
Date: Wed, 3 Dec 2025 17:07:22 +0100
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Khoshnazar-Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.6 released
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

Dear WinDRBD/DRBD community,

We just released version 1.2.6 of WinDRBD which comes with the
9.3.0 stable release of DRBD as the replication engine. We will
from now on release WinDRBD versions with 9.2.X and 9.3.X branches
of DRBD in parallel, so customers have the choice between
DRBD 9.2 (older codebase) and DRBD 9.3 (new features).

There were no changes to the Windows compatibility layer
in this 1.2.6 release.

Best regards,

- Johannes
