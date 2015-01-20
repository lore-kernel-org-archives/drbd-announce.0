Return-Path: <robert.altnoeder@linbit.com>
Message-ID: <54BE7AD2.1000301@linbit.com>
Date: Tue, 20 Jan 2015 16:57:06 +0100
From: Robert Altnoeder <robert.altnoeder@linbit.com>
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
References: <2066153.j5FZ22asyV@fat-tyre>
In-Reply-To: <2066153.j5FZ22asyV@fat-tyre>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbdmanage v0.20 pre-release
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

Hi everyone,

along with the rc1 release of DRBD 9.0.0, we are releasing
another pre-release of drbdmanage.

Here are some of the new features of this release:

- drbdmanage volumes are created with specified net size
   now; drbdmanage calculates the space required for
   DRBD meta-data and adds it to the space required for
   the actual data

- this also works the other way around: drbdmanage
   can report the net amount of free space, so that when
   you create a new DRBD volume, you will have that much
   space for actual data - because the space required for
   the resource's meta-data had already been considered
   when drbdmanage reported the amount of remaining
   free space

- there is a "free-space n" command now; it tells you
   the maximum size for an n-tuple redundant volume

- volumes created by drbdmanage do no longer stay
   in the "Primary" role on one of the drbdmanage nodes
   after initialization; you can begin to use them immediately

- creating a new drbdmanage cluster has even more
   automation built in now;
   if ssh keys are present, drbdmanage can attempt to
   run the join command on the newly added node
   remotely through ssh, so you are no longer
   required to copy&paste the join command to the
   new node

- more comfortable usage: most list output is
   sorted now, the size argument of the "new-volume"
   command takes unit suffixes (e.g., "35gb"), and there
   are shortcut aliases for many commands
   (for example, try "nn" instead of "new-node")

If you have questions, or if you would like to provide feedback,
feel free to post to the mailing list, or to visit our IRC channel
at FreeNode #drbd9+drbdmanage.

Best regards,
Robert

