Return-Path: <lars.ellenberg@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2A0834203C2
	for <drbd-announce@lists.linbit.com>;
	Thu,  3 Oct 2019 11:22:13 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id q9so2115521wrm.8
	for <drbd-announce@lists.linbit.com>;
	Thu, 03 Oct 2019 02:22:13 -0700 (PDT)
Date: Thu, 3 Oct 2019 11:15:40 +0200
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20191003091540.GB29493@soda.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] drbd-9.0.20-0rc3
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

Changes wrt RC2 (for RC2 announcement see below):

9.0.20-0rc3 (api:genl2/proto:86-115/transport:14)
--------
 * fix regression related to the quorum feature,
   introduced by code deduplication; regression never released,
   happened during this .20 development/release cycle
 * completing aspects of "allow-remote-read=no" behavior
 * build: add spatch-as-a-service

Please help testing this pre-release. If nothing serious is found
we will have a final release on October 10.

https://www.linbit.com/downloads/drbd/9.0/drbd-9.0.20-0rc3.tar.gz
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack
https://github.com/LINBIT/drbd/commits/a28cd09d83ab610cf15f07fa3e7c7eecdfc8fe4f

Cheers,
    Lars

On Wed, Sep 25, 2019 at 01:24:17PM +0200, Philipp Reisner wrote:
> Hi,
> 
> Rc1 was broken on recent RHELs. The problem was that some compat
> tests were failing for wrong reason, compile-time disabling some features.
> Well, and then the running RHEL kernel was sending IO requests with
> exactly those feature flags down to DRBD. Not good. That resulted in
> DRBD sending stuff on the network the receiving DRBD can not digest.
> 
> The other commits touch on building in Proxmox environment,
> where the .tgz does not contain a pre-computed compat patch, but the
> platform has a working coccinelle package.
> 
> 9.0.20-0rc2 (api:genl2/proto:86-115/transport:14)
> --------
>  * fix a case of false split brain detection if a diskless node promotes
>    multiple times, by aligning the rules for generating a new current-UUID
>    on a diskless nodes with them on a node with disk
>  * check if we still have quorum by exchanging a drbd-ping with peers
>    before creating new current UUID after loosing one peer
>  * fix after weak handling to not interfere with reconciliation resyncs
>  * retry connect when one of the relevant flags changes during UUID exchange
>  * fix reconciliation resync if one of the secondary got an current-UUID update
>  * fix resync to make progress after it was paused by an other resync operation
>  * fix false split-brains when a resync source changes current-UUID during
>    resync operation
>  * fix restore of D_OUTDATED when the resource first only attached and
>    then the peer objects are created (in contrast to the usual, new-peer,
>    attach, connect)
>  * abort creating new current-UUID when writing to meta-data fails in
>    the moment where the new-current-UUID should be written
>  * removed DRBD marking itself as read-only when secondary; this flag
>    was exposed using the BLKROGET ioctl; that should be left to user-land
>    use; recent KVM checks that flag, and does not dare auto-promote when
>    set by DRBD
>  * fix a small memory-leak when creating peer devices
>  * fix a possible information leak of kernel memory that pads net-link packets
>  * code cleanups, introduced enums for remaining magic numbers
>  * new kernel-backward-compatibility framework based on spatch/coccinelle,
>    replacing an unmaintainable moloch of C preprocessor hell; Merged the
>    complete kernel-compat submodule
>  * compat with up to Linux-5.3-rc2
>
> best regards,
>  Phil
