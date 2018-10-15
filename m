Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id A4401101AC7B
	for <drbd-announce@lists.linbit.com>;
	Mon, 15 Oct 2018 11:00:37 +0200 (CEST)
Received: by mail-wr1-f51.google.com with SMTP id y16so20336567wrw.3
	for <drbd-announce@lists.linbit.com>;
	Mon, 15 Oct 2018 02:00:37 -0700 (PDT)
Date: Mon, 15 Oct 2018 10:54:00 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20181015085359.negd6r7jk3rdygy7@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] linstor-proxmox-3.0.1
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

if you already used version 3.0.0 (it was in the repos), you have to
upgrade to 3.0.1, we fixed a regression that was introduced with 3.0.0.

As I did not officially announce 3.0.0, here are the important changes
since 2.9.z:
- Multi-Pool support
- Fix a race between LINSTOR thinks a resource is ready vs. it being
  actually usable. In rare cases this bit people when for example
  converting from local storage to DRBD, and Proxmox started with its
  "dd" too early even though the device node was not usable.
- Many clean ups and "perlification".

Documentation for multi-pool can be found here:
https://github.com/LINBIT/linbit-documentation/blob/master/UG9/en/proxmox-linstor.adoc#proxmox-plugin-configuration

Get it from github[1], or as release tarball[2], or via our publicly
available Proxmox repos.

[1] https://github.com/LINBIT/linstor-proxmox/
[2] https://www.linbit.com/en/drbd-community/drbd-download/

Regards, rck
