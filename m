Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 10D89420A73
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Dec 2021 18:28:12 +0100 (CET)
Received: by mail-wr1-f47.google.com with SMTP id k9so15853266wrd.2
	for <drbd-announce@lists.linbit.com>;
	Tue, 14 Dec 2021 09:28:12 -0800 (PST)
MIME-Version: 1.0
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Tue, 14 Dec 2021 18:28:01 +0100
Message-ID: <CADGDV=V05Qod+0D7+HsO9ZtsTao_50Vcr+_VE5tOtgCU49CKMA@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.2.0-rc.2
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

Hi,

drbd-9.2.0 gets a second release candidate.

Accidentally, rc.1 broke wire protocol compatibility with all earlier DRBD
releases. That is fixed in rc.2 of course. The other change relates to the
DKMS build process on kernels that have CONFIG_INFINIBAND not set.

We give it at least another week since we have a report of some "strange
behaviour" we want to analyse.

When drbd-9.2.0 gets released, it will be a drop-in compatible replacement
for drbd-9.1.x or drbd-9.0.x.

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.0-rc.2.tar.gz
