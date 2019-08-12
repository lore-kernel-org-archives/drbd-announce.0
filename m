Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id 98F9D101AC45
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Aug 2019 11:25:02 +0200 (CEST)
Received: by mail-wm1-f45.google.com with SMTP id 207so11492747wma.1
	for <drbd-announce@lists.linbit.com>;
	Mon, 12 Aug 2019 02:25:02 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:25:00 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20190812092500.2icajxt6eg5dciu5@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: Re: [DRBD-announce] linstor-proxmox 4.0.0
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Dear Proxmox users,

as there have not been any serious complaints since RC2, let's finalize
this.

Changes:

* implement APIVER 2
* switch to REST-API
* Linstor: saner defaults for not set variables
* support APIVER 2 and 3 "on the fly"
* poll in_use before delete
* kvm: mark DRBD device as RW

Best, rck
 
[1] https://github.com/linbit/linstor-proxmox
[2] https://www.linbit.com/downloads/connectors/linstor-proxmox-4.0.0.tar.gz
