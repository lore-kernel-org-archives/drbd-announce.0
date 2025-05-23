Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 85C0C16097B
	for <drbd-announce@lists.linbit.com>;
	Fri, 23 May 2025 12:21:08 +0200 (CEST)
Received: by mail-ed1-f48.google.com with SMTP id
	4fb4d7f45d1cf-601fb2b7884so9430975a12.2
	for <drbd-announce@lists.linbit.com>;
	Fri, 23 May 2025 03:21:08 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	a640c23a62f3a-ad52d4ca654sm1191895566b.158.2025.05.23.03.21.06
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 23 May 2025 03:21:06 -0700 (PDT)
Message-ID: <840ee5b3-bda2-466c-b393-a2054120356b@linbit.com>
Date: Fri, 23 May 2025 12:21:05 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.2.0-rc14 released
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

There is another -rc version which I'd like to share with you:
WinDRBD 1.2.0-rc14. There were many changes behind the
scenes. The new thing is that WinDRBD disks now can also
be used as direct pass-through disks for Hyper-V virtual
machines. You can select a WinDRBD disk that is Primary
(but still Offline, you just need to clear the readonly flag)
directly as 'physical' disk in Hyper-V manager (in the VM
settings when adding a SCSI disk).

An evaluation copy can be downloaded from the Linbit
Website. As always, you can also build it yourself
(see the instructions on
https://github.com/LINBIT/windrbd/tree/windrbd-1.2
). Also as always, your feedback is highly apreciated.

Best regards,

- Johannes
