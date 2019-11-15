Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <267d461b-9dfe-9c8f-1cfc-b76171ebd6ad@johannesthoma.com>
Date: Fri, 15 Nov 2019 13:42:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 0.10.2 released
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

There is a new release of WinDRBD: 0.10.2. It is mainly
targeted to those experimenting with the boot feature as
it contains a new ipxe binary which passes the DHCP address
to the Windows system. Windows will configure the boot NIC
at boot time based on the info it gets via iPXE (which
in turn gets it from DHCP) so it is not necessary any
more to configure a static address to the boot NIC.

Furthermore, all drivers that are boot critical when
network booting are now loaded at boot time. Therefore
the patching of the registry for the drivers is also
not necessary any more.

iPXE patches are now maintained in a separate branch
in a separate repo hosted on github for the time being
(until we get the patches submitted and accepted upstream).

The github URL is:

https://github.com/johannesthoma/ipxe-windrbd.git

and the branch containing the windrbd patches is called
windrbd.

We also fixed an WinDRBD bug for longer resource names
(the thread could not be created if resource name contains
more than 20 or so characters).

A new version of the windrbd-boot PDF is released
and can be downloaded from

	https://downloads.linbit.com/

If you have a working remote boot installation please
update you WinDRBD enabled iPXE binary (or build a
new one). The binary can be found in the WinDRBD
program folder.

As always a signed driver and packaged utilities can be
downloaded from the Linbit homepage at:

https://www.linbit.com/en/drbd-community/drbd-download

If you just want to test WinDRBD (and not develop for it)
using Linbit's signed EXE is the recommended way to
obtain it (rather than build it from the sources).

As always, any feedback is highly appreciated,

Best wishes,

- Johannes

