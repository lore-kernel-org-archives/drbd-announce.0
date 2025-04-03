Return-Path: <johannes.thoma@linbit.com>
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id ED002160930
	for <drbd-announce@lists.linbit.com>;
	Thu,  3 Apr 2025 11:59:34 +0200 (CEST)
Received: by mail-ej1-f49.google.com with SMTP id
	a640c23a62f3a-ac297cbe017so343036566b.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 03 Apr 2025 02:59:34 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at.
	[62.99.137.214]) by smtp.gmail.com with ESMTPSA id
	a640c23a62f3a-ac7c01855c7sm67370066b.148.2025.04.03.02.59.32
	for <drbd-announce@lists.linbit.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 03 Apr 2025 02:59:33 -0700 (PDT)
Message-ID: <c5c8fb7c-fefb-4597-8215-db8e870a42c9@linbit.com>
Date: Thu, 3 Apr 2025 11:59:31 +0200
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes.thoma@linbit.com>
Subject: WinDRBD 1.1.20 released
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

There is a new minor version of the stable WinDRBD 1.1 branch:

     WinDRBD 1.1.20.

It fixes a problem with DRBD which caused drbdadm adjust to hang
on a connected resource when a new volume is added to one node
but not on the other node yet. This has been fixed in DRBD 9.1.15
and has been backported to DRBD 9.0.32, the version of the WinDRBD
1.1 branch.

In addition, the installer now checks if the virtual bus device can be
accessed after installation and retries to install it when it cannot be
accessed.

If you are not affected by one of the above issues, there is no need
to upgrade.

An eval version of WinDRBD can be found in the downloads section of
the www.linbit.com site. LINBIT customers can find the new version in
their WinDRBD repo using their API key.

Best regards,

- Johannes
