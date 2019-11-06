Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <957433c8-8a6e-aeab-8450-f246dc0ac37c@johannesthoma.com>
Date: Wed, 6 Nov 2019 16:31:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 0.10.1 released (with data and disk devices)
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

Dear DRBD and WinDRBD community,

We are happy to announce a new version of WinDRBD: 0.10.1

This version mainly fixes the use of non-boot devices which
are not implemented in 0.10.0. If you are using data devices
(devices created with 0.9.2 or before) you can now upgrade
to this version.

In 0.10.1 we distinguish between boot devices, data devices
and disk devices. Boot devices are disk devices that are
used for booting Windows from a remote location (implemented
first in 0.10.0). Data devices are devices with a mount
point specified, such as in

	device "E:" minor 42;

in the drbd config. They support NTFS but might not work
with Microsoft applications that use undocumented ioctl
calls (such as winsat or MS SQL server). Also FAT, exFAT
and ReFS atop of a data device do not work well.

Here the disk devices come into play. Those are devices
without a mount point specified in the drbd config such
as in

	device minor 87;

When bringing this device up and make them primary a new
disk appears in partition manager (use control panel to
go to the partition manager). With partition manager the
disk device can be paritioned just like any other hard
disk. Also drive letters can be assigned to the partitions.

Under Linux the partitions inside the disk device can be accessed
by using the kpartx tool. kpartx scans a block device for partitions
and creates /dev/dm-<n> device (see the man page).

We would like to hear if using disk devices solves the problem
that some Microsoft applications (like MS SQL server) do not
run properly. In theory they should run when using partitions
on a disk device but we haven't tried that yet.

Another minor improvement is that the iPXE client that ships
with the installer EXE now knows that it has the windrbd
feature enabled that is in the dhcp config you can test for
ipxe.windrbd feature enabled to do the iPXE chain loading
(instead of testing for iscsi). A new version of the
windrbd-boot PDF will be released soon and can be downloaded
from

	https://downloads.linbit.com/

describing the new syntax.

As always a signed driver and packaged utilities can be
downloaded from the Linbit homepage at:

	https://www.linbit.com/en/drbd-community/drbd-download

If you just want to test WinDRBD (and not develop for it)
using Linbit's signed EXE is the recommended way to
obtain it (rather than build it from the sources).

As always, any feedback is highly appreciated,

Best wishes,

- Johannes

