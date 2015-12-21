Return-Path: <robert.altnoeder@linbit.com>
Message-ID: <56781C2C.1060108@linbit.com>
Date: Mon, 21 Dec 2015 16:35:08 +0100
From: Robert Altnoeder <robert.altnoeder@linbit.com>
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbdmanage v0.90
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

we have published version 0.90 of drbdmanage.
This is a pre-release that is considered close to
feature-complete for the first official
drbdmanage 1.0 release.

Some major new features in drbdmanage 0.90 are:
- Support for satellite nodes; those do not have their own control resource
   (copy of the drbdmanage database), instead, satellites are 
remote-controlled
   by drbdmanage control nodes (those that have a control resource) by
   means of a network connection.
- Support for growing an existing replicated volume
   (Note that this requires a change in DRBD9, which allows resizing a 
resource
    that is not in the Primary role on any node; you will need to 
upgrade DRBD9
    to this version to take full advantage of easy automatic resizing 
with drbdmanage)
- Failure counting; drbdmanage retries resource actions automatically if 
such
   actions fail, but will now stop when it reaches a defined number of 
retries.
   The command to resume any failed actions is 'resume-all'. A more specific
   command to resume only some actions can be expected to become available
   in drbdmanage 1.0

One major change that is not yet in drbdmanage 0.90 but will be available in
drbdmanage 1.0 are functions to modify existing objects
(such as nodes, resources, etc.).

The drbdmanage archives can be found at:
http://oss.linbit.com/drbdmanage/

...and our GIT repository is available at:
http://git.drbd.org/gitweb.cgi?p=drbdmanage.git

If you have any questions, suggestions or feedback for us,
feel free to post to the mailing list or to visit
our IRC channel at FreeNode #drbd9+drbdmanage.

Best regards,
Robert

