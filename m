Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Date: Tue, 18 Dec 2012 15:52:38 +0100
Message-ID: <10513486.21Gig5VYjD@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [DRBD-announce] drbd-8.3.15.tar.gz
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

The rc-week was very quite. The important "feature" of this release
is that it can be built with Linux-3.7.

On the side of bug fixes, a few very exotic issues where identified
and fixed. In case you operate a huge installation of hundreds
or thousands of nodes, you will for sure profit from this release.

  All the others will profit as well though with a smaller probability.

In case you use pacemaker 1.1.8 already and use the crm-fence-peer.sh
mechanism, upgrading to this DRBD is strongly recommended.

Upgrading to this version is recommended if you prefer to stay
with 8.3 series.

8.3.15 (api:88/proto:86-97)
--------
 * Do not end up in Unconnected state if the connection breaks at a
   certain point during the handshake (was introduced with 8.3.12)
 * Closed a race condition between promoting and connection handshake,
   that could lead to an inconsistent view of the peer's UUIDS
 * Fixed a deadlock related to request splitting racing with changing
   the AL size; when triggered the drbdsetup command never terminated
 * Fixed a race condition that could lead to a full sync, if connection
   breaks at a certain point while starting a regular resync
 * Fixed crm-fence-peer.sh for pacemaker 1.1.8
 * Now builds on Linux-3.7

http://www.linbit.com/support/drbd-8.3.15/
http://oss.linbit.com/drbd/8.3/drbd-8.3.15.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.3.git;a=tag;h=refs/tags/drbd-8.3.15

Best regards,
 Phil

