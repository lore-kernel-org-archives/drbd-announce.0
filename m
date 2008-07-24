Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 24 Jul 2008 18:32:44 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200807241832.45083.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.0.13rc1.tar.gz and the relaunch of
	www.drbd.org
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

We relaunched the http://www.drbd.org , you should have a look!
It got *really* improved compared to the old thing.

And here is the first release candidate of 8.0.13. Please help
testing it.

  Probably the worst bug, was that the receiver got stuck when
  one initiated an online resize from the secondary node.

Besides that the list of fixes is rather non spectacular...

8.0.13rc1 (api:86/proto:86)
--------
 * Fixed the exit codes of drbdsetup
 * Fixed online resizing if it is triggered from the secondary node.
 * Fixed a possible deadlock in case "become-primary-on-both" is used, and
   a resync starts
 * Fixed the invocation of the pri-on-incon-degr handler
 * sock_create_lite() to avoid a socket->sk leak
 * Auto-tune socket buffers if sndbuf-size is set to zero
 * Made it to compile on Linux-2.6.26

http://git.drbd.org/?p=drbd-8.0.git;a=tag;h=drbd-8.0.13rc1
http://oss.linbit.com/drbd/8.0/drbd-8.0.13rc1.tar.gz

-phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
