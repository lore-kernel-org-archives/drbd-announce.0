Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Thu, 06 Feb 2014 18:08:42 +0100
Message-ID: <3088550.3YpodYlol5@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-9.0.0pre8.tar.gz
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

The reason for this release is, to have a base drbd for drbdmanage.
Please look at its announcement e-mail for further information.

Some bugs where fixed. Right now our TODO-lists still have sufficient
known bugs to keep us busy. -- This release does come without request 
for sending us bug reports.

9.0.0pre8 (api:genl1/proto:86-110)
--------
 * Fixed an issue with 2-phase commit when the members of
   the cluster know different numbers of minor devices for the
   resource
 * drbdsetup events: no longer terminates of 2KiB socket buffer gets full
 * drbdsetup events: output format changed
 * drbdsetup events: terminates if read side of pipe is closed
 * drbd-8.4 merges
 * Minor fixes

http://oss.linbit.com/drbd/9.0/drbd-9.0.0pre8.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-9.0.git;a=tag;h=drbd-9.0.0pre8

Best regards,
 Phil
