Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <42c5863d-ae01-ff30-ce2d-96d998d6a66f@johannesthoma.com>
Date: Thu, 17 Oct 2019 17:03:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 0.10.0 with root device ("C:\") support -
	technical preview
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

It's been about 6 months since the last WinDRBD version
(0.9.2) was released. The reason for such a long development
cycle is that we finally managed to implement system root
("C:\") atop a WinDRBD device.

In order to do so, we had to reengineer the device layer
(how WinDRBD devices are presented to the System) such
that Windows recognizes a WinDRBD device as a boot/root
device. WinDRBD devices are now implemented as (virtual)
SCSI port devices.

One side effect of this is that WinDRBD disks appear
as regular hard disks in partition manager and device
manager and also can be partitioned using the common
Windows tools (diskpart and partition manager).

Note that this 0.10.0 temporarily breaks compatibility
with 0.9.2 devices, so if you have 0.9.2 (or older)
running do not install 0.10.0 over it. 0.10.0 is
solely intended for those who want to test the
WinDRBD device as Windows root drive feature.

What currently works is using WinDRBD for diskless
boot/root device operation in a virtual machine setup.
There is a tech guide which can be downloaded from
the Linbit homepage at

	https://downloads.linbit.com/

It describes the necessary steps to get WinDRBD as a root
device working with VirtualBox machines.

You can download an inno-setup installer EXE of WinDRBD
0.10.0 with the driver signed by Linbit-HA at the
homepage of linbit:

	https://www.linbit.com/en/drbd-community/drbd-download/

(scroll down to DRBD 9 Windows driver).

If you just want to test WinDRBD (and not develop for it)
using Linbit's signed EXE is the recommended way to
obtain it (rather than build it from the sources).

As always, any feedback is highly appreciated,

Best wishes,

- Johannes
