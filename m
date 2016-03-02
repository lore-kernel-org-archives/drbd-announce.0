Return-Path: <robert.altnoeder@linbit.com>
Message-ID: <56D70C65.3000003@linbit.com>
Date: Wed, 02 Mar 2016 16:53:09 +0100
From: Robert Altnoeder <robert.altnoeder@linbit.com>
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbdmanage v0.93
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

Dear DRBD9 & drbdmanage users & testers,

we have published version 0.93 of drbdmanage.

This version includes a new backend storage plugin for ZFS. The ZFS
filesystem is not a standard feature in most Linux distributions, but
will be included in the next Ubuntu release (xenial).

Some other fixes in this version include:
- fixes for control node <-> satellite node communication
- fixes for DRBD configuration file generation for some corner cases
- fixes for the 'wait_for' plugin
- attach actions on diskless assignments are now silently ignored
and several other minor fixes.

The drbdmanage archives can be found at:
http://oss.linbit.com/drbdmanage/

...and our GIT repository is available at:
http://git.drbd.org/gitweb.cgi?p=3Ddrbdmanage.git

If you have any questions, suggestions or feedback for us,
feel free to post to the mailing list or to visit
our IRC channel at FreeNode #drbd.

Mit freundlichen Gruessen / Best regards,
--=20
: Robert Altnoeder
: Trainer / Developer
: LINBIT
:
: http://www.linbit.com

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT.=20

