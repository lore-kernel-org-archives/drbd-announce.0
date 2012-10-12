Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 12 Oct 2012 17:01:26 +0200
Message-ID: <2161119.I1CzKrTTdf@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.14rc2.tar.gz
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

Hi,

This is a call for all interested parties to participate in release
candidate testing! In case you find any regression (or old bug) please
let us know before October 19.

Please note: This is a release candidate, not intended for production.

8.3.14rc2 (api:88/proto:86-97)
--------
 * Fixed a possible NULL pointer deference introduced in rc1, during
   bitmap write out upon detach

8.3.14rc1 (api:88/proto:86-97)
--------
 * No longer support write-ordering "barrier" on kernels newer than 2.6.36
   (or RHEL's 2.6.32), since it is no longer supported by the kernel's IO-layer
 * Fixed the cause of the "ASSERT FAILED tl_hash..." messages
 * Fixed an OOPS in case a on-congestion policy was set and the node becomes
   disk less
 * Fixed a list corruption for read requests that complete with an error
   after they were aborted
 * Fixed a kernel panic if the device size was an exact multiple of 128MiB
 * Finish requests that completed while IO on DRBD was frozen. Before such
   requests where never completed by DRBD
 * Fixed a potential memory allocation during deadlock online resize
 * Online resize with internal meta data failed to write the bitmap to
   the new on-disk-location after the resize operation. This issue was
   introduced with 8.3.10
 * Do not go through NetworkFailure state during a regular disconnect
 * Improve the handling of read-errors: Make sure that sectors that had a
   read error are overwritten with data from the peer on the next resync
 * Expose the data-generation-uuids through /sys/block/drbdXX/drbd/
 * Add a stop-sector to the online verify feature
 * Support FLUSH/FUA for layers above DRBD
 * The new flag --peer-max-bio-size for drbdmeta create-md is of use
   if you plan to use the device for long time without peer

http://oss.linbit.com/drbd/8.3/drbd-8.3.14rc2.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.3.git;a=tag;h=refs/tags/drbd-8.3.14rc2

Best,
 Phil

