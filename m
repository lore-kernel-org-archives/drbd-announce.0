Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 12 Jul 2013 15:12:39 +0200
Message-ID: <2823936.JTIeTXbGrm@phil-dell-xps>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.0pre5.tar.gz
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

There are a few areas that are not finished, e.g. the
init-script, or the pacemake integration script.

Other that that, please report bugs to one of the mailing
list as you find them! -- The number of known bugs we have
here to work on is going down quickly.

9.0.0pre5 (api:genl1/proto:86-110)
--------
 * Fixed the drbdadm invalidate command (Now it takes a device or
   a peer device)
 * Builds on recent linux kernels not (up to 3.10)
 * drbdsetup down all (downs everything independent of the config file)
 * Fixed an OOPS on a diskless node in case of an detach/attach on an
   other node in the cluster
 * Fixed a deadlock in the down code path
 * Fixed the "bind before listen failed, err = -98" race
 * Do not OOPS when "downing" an opened device

http://oss.linbit.com/drbd/9.0/drbd-9.0.0pre5.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=refs/tags/drbd-9.0.0pre5

Best regards,
 Phil

