Return-Path: <robert.altnoeder@linbit.com>
Message-ID: <553E6115.7080408@linbit.com>
Date: Mon, 27 Apr 2015 18:17:25 +0200
From: Robert Altnoeder <robert.altnoeder@linbit.com>
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbdmanage v0.34 pre-release
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

Hello DRBD9 and drbdmanage testers,

we have released version 0.34 of drbdmanage today.

Improvements in this release include:

- New command line parser with tab-completion and
   line editing capability in interactive mode

- New powerful list views that allow drbdmanage
   to hide distracting information unless it is
   explicitly requested, and to enablegrouping of
   list entries

- New storage drivers (experimental)
   The new drivers have a better ability to check whether
   the storage backend has created or removed a volume
   as requested by drbdmanage.
   The new drivers are:
   * LVM logical volume driver:
     (Standard logical volumes, no snapshot capability)
       drbdmanage.storage.lvm_ng.LvmNg
   * LVM multiple thin pools driver:
     (One thin pool per new volume and the volume's
      snapshot/restore volumes)
       drbdmanage.storage.lvm_thinpool_ng.LvmThinPoolNg
   * LVM single thin pool driver:
     (A single shared thin pool for all volumes and snapshots)
       drbdmanage.storage.lvm_thinlv.LvmThinLv

   Older implementations of the LVM LV driver and the
   LVM multi thin pool driver are still included, however, we
   recommend that you switch to the new drivers, as the old
   drivers are considered deprecated.
   Note that the new drivers will be renamed in future versions.

   Configuration file templates for the new drivers are included
   in the release packages.

- Fully qualified domain names (FQDN) can be used as a
   drbdmanage node name now (the dot character is now allowed
   inside a node name)

- A new connection algorithm connects DRBD9 clients only to
   server nodes (nodes where a resource has a storage backend),
   but not to other clients, thereby reducing the number
   of active network connections

- Packaging support for the Debian distribution has been added

You can find the archives at:
http://oss.linbit.com/drbdmanage/

There is also a GIT repository available at:
http://git.drbd.org/gitweb.cgi?p=drbdmanage.git

This is a release that comes with quite a few changes, so if you have 
any questions on how to use this new version of drbdmanage or any of its 
new components, feel free to post to the mailing list or to visit our 
IRC channel at FreeNode #drbd9+drbdmanage.

Best regards,
Robert

