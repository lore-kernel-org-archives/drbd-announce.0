Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 19 Oct 2012 13:53:49 +0200
Message-ID: <1558204.ziQmZckuvl@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.14.tar.gz
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

Besides bug-fixes this release brings support for FLUSH/FUA for the
layers that get stacked on top of DRBD.

  Talking of bugs of previous releases: It needs to be pointed out
  that as the barrier-support was removed in upstream kernel (2.6.36), 
  it was no longer save to run DRBD in protocol A or B with barriers
  enabled.

  In case you...
  * use protocol A or B
  AND
  * have a kernel >= 2.6.36 (or 2.6.32 if it is RHEL6/CentOS6 or other clone)
  AND
  * have DRBD <= 8.3.13
  AND
  * do not have the option "no-disk-barrier" set. (= barriers enabled)
  THEN
  you might get write reordering on secondary, which is bad.

  Your possible ways out:
  * Add "no-disk-barrier" to your config
  OR
  * Upgrade to drbd-8.3.14

  Note: You are only affected if all of the 4 conditions are true.
  You solved the issue if you take _one_ of the two described ways out.

Best,
  Phil

8.3.14 (api:88/proto:86-97)
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

http://www.linbit.com/support/drbd-8.3.14/
http://oss.linbit.com/drbd/8.3/drbd-8.3.14.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.3.git;a=tag;h=refs/tags/drbd-8.3.14

best,
 Phil
