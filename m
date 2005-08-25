Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id 94B5214EE4
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Aug 2005 15:56:23 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 25 Aug 2005 15:56:25 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200508251556.26065.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.12.tar.gz
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

Yet another DRBD release...

0.7.12 (api:77/proto:74)
=2D----
 * The /proc/drbd code used a fixed single page buffer. This breaks=20
   at about 30 configured devices. Changed that to use the seq_file
   interface.
 * Bind the source of TCP connections to the IP address that is
   mentioned in the configuration.=20
 * Fixed a connection flip-flop bug when the two peers used different
   user provided sizes.
 * Various fixes in the online-resize code path, including online shrinking
   and handling the case that the memory allocation for the new bitmap
   failed.
 * Random improvements to drbdadm:=20
   * The "size" option is now allowed in the disk section
   * A new "disable-ip-verification" option for the global section
   * The "disable-io-hints" option is not longer available.
   * Allow "drbdadm -- --size=3DXXX resize r0".
 * Fixed a potential very unlikely race condition that in the end would
   trigger an ERR in drbd_actlog.c:607. Actually I never saw this trigger.
 * Fixed a logic bug in _drbd_process_ee() that, paired with a race conditi=
on
   could trigger a "ASSERT(b->n_req =3D=3D set_size)" upon disconnect.
 * Removed the "disable_io_hints" module parameter.
 * Added the "disable_bd_claim" module parameter, to allow users, WHO=20
   KNOW WHAT THEY DO, to read-access the data on the secondary node.
 * Allow "drbdadm invalidate" only in StandAlone and Connected states.=20
 * DRBD no longer goes into StandAlone mode, if there is an random network=
=20
   error during the handshake phase, instead it retries the to connect.
   Only critical problems, e.g. incompatible protocols will cause it=20
   to go into StandAlone mode.

This time I released the hard grip a bit and let some improvements slip
in, that are save to apply in the stable series.

The few bug-fixes are really non critical. Update as your time and
schedule permits, no need to hurry.=20

On the other hand, if you are up to use the online resizing feature, it=20
might be better to upgrade before.

http://www.linbit.com/support/drbd-0.7.12/
http://oss.linbit.com/drbd/0.7/drbd-0.7.12.tar.gz

=2Dphilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
