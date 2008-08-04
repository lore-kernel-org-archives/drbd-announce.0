Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 4 Aug 2008 17:34:38 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200808041734.38820.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.0.13.tar.gz
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

In case you plan to online resize a device, you should better
upgrade to this release first. Other than that, this release does
not have any spectacular fixes.

8.0.13 (api:86/proto:86)
--------
 * Fixed online resizing if there is application IO on the fly when the
   resize is triggered.
 * Fixed online resizing if it is triggered from the secondary node.
 * Fixed a possible deadlock in case "become-primary-on-both" is used, and
   a resync starts
 * Fixed the invocation of the pri-on-incon-degr handler
 * Fixed the exit codes of drbdsetup
 * sock_create_lite() to avoid a socket->sk leak
 * Auto-tune socket buffers if sndbuf-size is set to zero
 * Made it to compile on Linux-2.6.26

http://git.drbd.org/?p=drbd-8.0.git;a=tag;h=drbd-8.0.13
http://oss.linbit.com/drbd/8.0/drbd-8.0.13.tar.gz
http://www.linbit.com/support/drbd-8.0.13/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
