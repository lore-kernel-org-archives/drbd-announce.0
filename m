Return-Path: <robert.altnoeder@linbit.com>
Message-ID: <558052EE.6030007@linbit.com>
Date: Tue, 16 Jun 2015 18:46:38 +0200
From: Robert Altnoeder <robert.altnoeder@linbit.com>
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbdmanage v0.43 pre-release
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

Dear DRBD9 & drbdmanage testers,

due to a change that made it into today's DRBD9 release
in the last minute, here is another update of drbdmanage.

The drbd-utils released today include preparations for
multiple connections or transport layers in DRBD9, thus
requiring a change in the implementation of the
"drbdsetup connect" command.

The command is used by drbdmanage's automatic cluster-join
feature (the "drbdmanage join" and - implicitly - the
"drbdmanage new-node" command), therefore requiring another
update of drbdmanage.

This is essentially what you get with this version - a fix
that lets you run the features already presented in version
0.42 on today's DRBD9 release.

========================================

It is recommended that you use today's DRBD9 release in
combination with version 0.43 of drbdmanage for your tests,
rather than any older versions you may have checked out from
our GIT repository earlier.

========================================

As usual, you can find the archives at:
http://oss.linbit.com/drbdmanage/

...and our GIT repository is available at:
http://git.drbd.org/gitweb.cgi?p=drbdmanage.git

If you have any questions, suggestions or feedback for us,
feel free to post to the mailing list or to visit
our IRC channel at FreeNode #drbd9+drbdmanage.

Best regards,
Robert

