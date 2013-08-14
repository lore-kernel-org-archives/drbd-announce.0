Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Date: Wed, 14 Aug 2013 23:13:27 +0200
Message-ID: <16013273.Rn8n6TS6dV@phil-dell-xps>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [DRBD-announce] drbd-9.0.0pre6.tar.gz & drbd-8.3.16rc1.tar.gz
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

this is a *double release* day. On the drbd-9 side great 
progress was made since the pre5 release. I ask everybody
interested in drbd9 to check it out and report any
issues found back to us. 

9.0.0pre6 (api:genl1/proto:86-110)
--------
 * Fixed the wait-[connect|sync] drbdadm commands. Now they actually
   work on all three object types (resources, connections, volumes)
 * Fixed the resync vs application IO deadlock on a resync from
   Primary/SyncSource to Secondary/SyncTarget [Was introduced in
   drbd9 development]
 * Correctly deal with writes from a Primary on two Secondaries that
   do a resync
 * New command called "forget-peer". It is used to free a peer-device
   slot. Online (via drbdsetup) or offline (via drbdmeta)
 * Lots of minor fixes

http://oss.linbit.com/drbd/9.0/drbd-9.0.0pre6.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=refs/tags/drbd-9.0.0pre6


On the drbd-8.3 side the fix regarding devices larger than
64TByte shows that our user base is moving to larger
device sizes. Also note that the crm_fence_peer script
infrastructure received a number of improvements.

8.3.16rc1 (api:88/proto:86-97)
--------
 * fix decoding of bitmap vli rle for device sizes > 64 TB
 * fix for deadlock when using automatic split-brain-recovery
 * only fail empty flushes if no good data is reachable
 * avoid to shrink max_bio_size due to peer re-configuration
 * fix resume-io after reconnect with broken fence-peer handler
 * fencing script improvements

http://oss.linbit.com/drbd/8.3/drbd-8.3.16rc1.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.3.git;a=tag;h=refs/tags/drbd-8.3.16rc1


PS: drbd-8.4.4rc1 will arrive in the next days.

Best,
  Phil
