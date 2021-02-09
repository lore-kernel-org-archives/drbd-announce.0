Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id DB75742022B
	for <drbd-announce@lists.linbit.com>;
	Tue,  9 Feb 2021 11:13:25 +0100 (CET)
Received: by mail-wr1-f51.google.com with SMTP id g6so7902739wrs.11
	for <drbd-announce@lists.linbit.com>;
	Tue, 09 Feb 2021 02:13:25 -0800 (PST)
Date: Tue, 9 Feb 2021 11:13:23 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210209101323.GA2233@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-utils-9.16.0
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <https://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <https://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Dear DRBD users,

this is release 9.16.0 of the lower level user space DRBD utilities.
This release contains improved documentation and compiler warning fixes,
as well as a number of actual new features:

- Setting the initial GI and using it as initial synchronization point
  is a trick used to skip initial sync on storage that allows for it
  (LVM thin, zvols) for a long time. LINSTOR does that by using the
  low-level drbdmeta command directly. Using drbdadm for it in single
  node clusters was actually broken. This got fixed.

- drbdsetup events2 got some nice new features: It got a diff mode that
  makes it easier for simple scripts to trigger actions on state
  changes from some old state to some new state. So far one had to
  implement this (old) state tracking on your own. Now events2 can be
  instructed to print the old state as well, which then looks like this:

change resource name:some-resource role:Secondary->Primary \
 may_promote:yes->no promotion_score:10102->10102

  The second addition for events2 is a full mode where it prints
  (almost) all key:value pairs regardless if the value changed or not.
  This is mainly used in a new software component we will release soon.

- rename support. Resources can now be renamed on DRBD level. This
  requires a not yet released DRBD kernel module as well. Also note that
  renaming a resource with the new command is not the only thing one has
  to do, one also has to rename the resource in the res file. So down/up
  might still be the way to go in simple use cases. All in all this is
  most useful in a LINSTOR context. There is no timeline when/if this
  will be implemented in LINSTOR (as this is more complicated than one
  might think), but the lower level foundations are there.

- c-max-rate can now be set to 0 to disable rate limit. This also needs
  the next, currently unreleased, DRBD kernel module release to work as
  expected.

If you don't need any of the new features, there is no urgent need to
update. The new kernel release as well as the new software component
will require this version, so if you can, install now and report any
bugs.

Regards, rck

TGZ: https://www.linbit.com/downloads/drbd/utils/drbd-utils-9.16.0.tar.gz
GIT: https://github.com/LINBIT/drbd-utils/commit/a7820b3c14497a34f955ba5ce56cf1bc9d2d353e
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

9.16.0
--------
 * drbd-attr/may_promote: fixes from 9.15.1
 * drbdadm,v9: allow set-gi in single node clusters
 * drbsetup,events2,v9: diff(erential) output
 * drbsetup,events2,v9: add --full output
 * v9: allow resource rename, also in drbdmon
 * drbdadm,v9: allow c-max-rate to be disabled
