Return-Path: <robert.altnoeder@linbit.com>
Message-ID: <557F3B9C.4020302@linbit.com>
Date: Mon, 15 Jun 2015 22:54:52 +0200
From: Robert Altnoeder <robert.altnoeder@linbit.com>
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbdmanage v0.42 pre-release
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

drbdmanage version 0.42 has just been released.

Some of the improvements in this release are:

   - drbdsetup options support
     drbdmanage supports adding various options to
     the configuration of drbdmanage-controlled
     resources. For example, you can configure
     dual-primary resources now by using this
     new feature.

   - Filtered lists
     The drbdmanage client supports filtering lists
     (e.g. by resource or node name) now.
     For example, you can display all resources
     assigned to a node, or the other way around,
     all nodes that are hosting a particular resource.

   - Updated drbdmanage client commands
     The order of arguments has been changed for some
     commands to make those commands easier to use.

========================================

You can find the archives at:
http://oss.linbit.com/drbdmanage/

There is also a GIT repository available at:
http://git.drbd.org/gitweb.cgi?p=drbdmanage.git

If you have any questions, suggestions or feedback for us, feel free
to post to the mailing list or to visit our IRC channel at
FreeNode #drbd9+drbdmanage.

Best regards,
Robert

