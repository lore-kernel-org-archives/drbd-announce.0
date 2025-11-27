Return-Path: <johannes.thoma@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 036B6162EE3
	for <drbd-announce@lists.linbit.com>;
	Thu, 27 Nov 2025 18:09:47 +0100 (CET)
Received: by mail-wr1-f44.google.com with SMTP id
	ffacd0b85a97d-429c7869704so958791f8f.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 27 Nov 2025 09:09:47 -0800 (PST)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	ffacd0b85a97d-42e1ca1a3f1sm4538396f8f.28.2025.11.27.09.09.45
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 27 Nov 2025 09:09:46 -0800 (PST)
Message-ID: <e99e09d8-8932-4e4a-98e2-8985c14fd64e@linbit.com>
Date: Thu, 27 Nov 2025 18:09:44 +0100
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.5 released
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

We've just released WinDRBD 1.2.5. It comes with a DRBD engine version 9.2.16 and optional
with DRBD engine 9.3.0-rc6. Also drbd-utils were upgraded. Other than that there were no
changes (except for neccessary additions to our WinDRBD linux headers in order to make
9.3.0-rc6 compile).

As always, an installer for WinDRBD can be downloaded directly from the LINBIT homepage
www.linbit.com

Have fun and happy hacking :)

Best regards,

- Johannes
