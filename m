Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 8D76C16095C
	for <drbd-announce@lists.linbit.com>;
	Wed,  4 Mar 2026 16:31:21 +0100 (CET)
Received: by mail-wm1-f50.google.com with SMTP id
	5b1f17b1804b1-483770e0b25so59971235e9.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 04 Mar 2026 07:31:21 -0800 (PST)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	5b1f17b1804b1-4851acfbd1bsm18951155e9.6.2026.03.04.07.31.18
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Mar 2026 07:31:19 -0800 (PST)
Message-ID: <43a34627-6503-4d1f-82a0-51f2a7e2a69a@linbit.com>
Date: Wed, 4 Mar 2026 16:31:16 +0100
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Khoshnazar-Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.8 released
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

We just released WinDRBD 1.2.8. The major change in this version is
that the Linux crypto framework was imported into WinDRBD. This means
that (currently) crc32c, sha1 and hmac(sha1) are available for crypto
algorithms. Also, more crypto algorithms can be added easily, since
the Linux kernel's crypto code is now also part of the WinDRBD source
code.

This eliminates the need for ugly patches in LINSTOR, which is why we
did the release now. In addition an endless loop when updating WinDRBD
was fixed.

Once again please join us at the LINBIT community meeting on March 12
where we have exciting news about the future of WinDRBD to share.

You can register at:

https://linbit.com/community-meeting/

All the best,

- Johannes
