Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <72d16c49-b138-b246-8132-24646822c4dc@johannesthoma.com>
Date: Wed, 4 Mar 2020 16:57:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [DRBD-announce] WinDRBD 0.10.5 released
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

Dear DRBD and WinDRBD users,

We've just released WinDRBD 0.10.5. The main difference is
that the DRBD URI used to configure the WinDRBD boot device
is now key/value based making it easier to read and more
importantly easy to extend. It will learn new keywords as
WinDRBD evolves but the principle of the syntax will remain
the same.

There is also a new version of iPXE-WinDRBD which allows for
DRBD URIs longer than 255 bytes. Also now it is recommended
to use an iPXE script instead of DHCP options to pass the
windrbd-root parameter to the clients, since DHCP options
are limited in length by design (the length field is only
one byte, limiting all DHCP options to 255 bytes).

Here is a read-world example for a WinDRBD URI (write in one
line) of my ipxe boot script:

set windrbd-root drbd:resource=windows10-boot;protocol=C;
this-node-id=2;node2.address=0.0.0.0:7695;node2.volume1.minor=42;
node2.hostname=windows;node1.hostname=johannes-VirtualBox;
node1.address=192.168.56.102:7695;timeout=60;ping-timeout=30;
ping-int=10;connect-int=20;

In theory one can configure n (n<32) nodes now but this
does not work well for n>2 yet, which is one of the things
we will fix in one of the upcoming releases. Also setting
the DRBD timeout values is now possible, for more details
please consult the DRBD user's guide.

The new way of passing parameters to clients and the new
WinDRBD URI syntax are described in an updated windrbd-boot
tech guide available for download at:

	https://downloads.linbit.com/

(labelled Setup WinDRBD Diskless Boot).

WinDRBD 0.10.5 can be downloaded as a binary installer
(self-extracting EXE file) at:

	https://www.linbit.com/en/drbd-community/drbd-download/

(scroll down to DRBD 9 Windows Driver). Note that both
iPXE and drbd.cgi have changed so if you already have a
running installation, please update those two files as well
(on your Linux server).

As always WinDRBD sources can be found at:

	https://github.com/LINBIT/windrbd

You can build it from the sources (without official driver
signature, unless you have your own key), see the file INSTALL
for instructions. Note that normally this is not necessary since
there are pre-built binaries available at the Linbit website.

Also interresting is the file WHATSNEW.md which summarizes
changes in the various releases:

	https://github.com/LINBIT/windrbd/blob/master/WHATSNEW.md

As always, feedback is highly apreciated,

Best wishes,

- Johannes
