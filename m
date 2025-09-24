Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 6746E16064F
	for <drbd-announce@lists.linbit.com>;
	Wed, 24 Sep 2025 16:33:40 +0200 (CEST)
Received: by mail-wm1-f45.google.com with SMTP id
	5b1f17b1804b1-45df7dc1b98so43571705e9.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 24 Sep 2025 07:33:40 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	5b1f17b1804b1-46e2ab31ea3sm33609905e9.12.2025.09.24.07.33.38
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Sep 2025 07:33:38 -0700 (PDT)
Message-ID: <71ebe7e8-224b-4b06-9872-b2dcadf8cb63@linbit.com>
Date: Wed, 24 Sep 2025 16:33:37 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.3 released
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

Dear WinDRBD community,

We just released WinDRBD 1.2.3. Besides the funny version number
(does anybody remember Lotus 1-2-3?) it comes with 2 stability
fixes in conjunction with disconnecting resources, one of them
was actually a DRBD bug and is merged upstream.

This version is based on the newest DRBD 9.2.15 release which was
released just 2 days ago and hence comes with all the improvements of
DRBD 9.2.15.

It also comes with clang as a build toolchain support which allows us
to use the Microsoft WinDbg debugger, since clang is able to output
Microsoft's PDB debugging symbols files. This eases development a lot.

It is not super urgent to upgrade to this version since most of the
defects fixed therein are corner cases but if you have a maintenance
window it is recommended that you upgrade WinDRBD as well.

Best regards,

- Johannes
