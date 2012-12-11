Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 11 Dec 2012 10:52:37 +0100
Message-ID: <2028276.oopXmFtUlb@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.3.15rc1.tar.gz
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

Although there is a fix for a regression that was introduced with 8.3.12,
the real trigger for this DRBD release, was the fact that Linux-3.7
no longer exports a symbol that was used by the out-of-tree DRBD. 

As usual: Please help testing this release candidate, and report any
bugs you can find!

Please note: This is a release candidate, not intended for production.
Please help with testing!

8.3.15rc1 (api:88/proto:86-97)
--------
 * Do not end up in Unconnected state if the connection breaks at a
   certain point during the handshake (was introduced with 8.3.12)
 * Closed a race condition between promoting and connection handshake,
   that could lead to an inconsistent view of the peer's UUIDS
 * Fixed a race condition that could lead to a full sync, if connection
   breaks at a certain point while starting a regular resync
 * Fixed crm-fence-peer.sh for pacemaker 1.1.8
 * Now builds on Linux-3.7

http://oss.linbit.com/drbd/8.3/drbd-8.3.15rc1.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-8.3.git;a=tag;h=refs/tags/drbd-8.3.15rc1

Best regards,
 Phil
