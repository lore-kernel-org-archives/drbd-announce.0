Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id BB49D101AC67
	for <drbd-announce@lists.linbit.com>;
	Tue,  4 Dec 2018 17:33:52 +0100 (CET)
Received: by mail-wr1-f66.google.com with SMTP id t27so16648716wra.6
	for <drbd-announce@lists.linbit.com>;
	Tue, 04 Dec 2018 08:33:52 -0800 (PST)
Date: Tue, 4 Dec 2018 17:28:32 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20181204162832.fffe3mqkld4htb7n@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.7.0
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

Hi DRBD users,

This release contains several bug fixes and some new features. If you
don't use these features, there is no urgent need to upgrade now.

Highlights include:
- drbd-utils now handle "resync-after" properly. This needed fixing in
  the 8.4 part and the 9 part of drbd-utils.

- drbd.ocf now has a new parameter named "connect_only_after_promote"
  which might be helpful in stacked setups. drbd.ocf also learned to to
  specify a required kernel version. If you are interested, please read
  the according changes in the git log for more details.

- drbdmon now displays rsync progress (assuming a new enough DRBD9
  kernel module).

- Utils learned to specify a required kernel module version in the res
  files. This is a DRBD9 only feature. This helps with error messages
  people get when they wrongfully load a DRBD8.4 module and use LINSTOR.
  It might also be handy in other situations when one wants to make
  absolutely sure that a specific/specific range of the kernel module is
  used.

- Last but not least, the bits for WinDRBD (not to be confused with
  wdrbd) got merged. This allows building drbd-utils on Windows, if you
  use the Windows version of DRBD, which is based on the DRBD9 code used
  in Linux. No, it is not 1. of April :-).

As usual, I hope this release does not destroy your kitten factory.

9.7.0
--------
 * drbdadm,v9,v84: fix resync-after
 * drbd.ocf: connect_only_after_promote, require kernel version
 * drbdmon: display resync progress
 * parser,v9: require-drbd-module-version
 * windrbd: add WinDRBD support

https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.7.0.tar.gz
https://github.com/LINBIT/drbd-utils/tree/v9.7.0

Regards, rck
