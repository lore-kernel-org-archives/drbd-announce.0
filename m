Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
	[209.85.218.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id F402D162709
	for <drbd-announce@lists.linbit.com>;
	Thu,  2 Oct 2025 15:45:35 +0200 (CEST)
Received: by mail-ej1-f43.google.com with SMTP id
	a640c23a62f3a-b40f11a1027so200421666b.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 02 Oct 2025 06:45:35 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	a640c23a62f3a-b486970b422sm211718166b.54.2025.10.02.06.45.34
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 02 Oct 2025 06:45:34 -0700 (PDT)
Message-ID: <8f93c581-8117-415c-9f9f-7c2af3caa271@linbit.com>
Date: Thu, 2 Oct 2025 15:45:33 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.4 released!
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

Dear WinDRBD users,

We just release WinDRBD 1.2.4. The reason for that release is the
bugfix in the way how (Linux kernel) completions are implemented
in the cross kernel interface. There was a race which eventually
could lead to a corner case. We found this bug in our endurance
test which disconnects/connects from/to a node that does I/O
for 3 days (5000+ iterations). So it is not very common but
it can eventually happen.

Since this is (kind of) a corner case (due the seldomness of the
trigger) there is no urgent need to upgrade, but if you have a
maintenance windows it is recommended to upgrade to the
1.2.4 release.

Best regards,

- Johannes
