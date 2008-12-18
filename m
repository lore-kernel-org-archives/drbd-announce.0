Return-Path: <lars.ellenberg@linbit.com>
Date: Thu, 18 Dec 2008 20:03:56 +0100
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20081218190356.GA11114@barkeeper1-xen.linbit>
References: <200812181946.56945.philipp.reisner@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <200812181946.56945.philipp.reisner@linbit.com>
Subject: [DRBD-announce] Re: [DRBD-user] drbd-8.3.0.tar.gz
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

On Thu, Dec 18, 2008 at 07:46:56PM +0100, Philipp Reisner wrote:
> Hi,
> 
> This is the release containing all the features that formed DRBD+ before:
>  * bit map in unmaped pages -> device sizes > 4TB (up to 16TB currently)
>  * DRBD stacking -> replication to a 3rd node (even 4 are supported)

and before you ask:
 no, that is NOT 3 or 4 primaries.
we still support "only" 2 Primaries.

and in case our existing DRBD+ customers read this:
you'll be notified directly concerning the upgrade/conversion path.

>  * checksum based resync -> Speeds up resync processes over slow networks.
> 
> Besides these highlight, again a number of bugs was fixed, see the first five

I count even eight ;)

> items on the change log. Users of drbd-8.2.7 should upgrade to 8.3.0 .
> 
> BTW, this is the successor of drbd-8.2.7 and the drbd-8.2.x branch. 
> 
> 8.3.0 (api:86/proto:86-89)
>  --------
>   * Fixed 'sleep with spinlock held' in case online verify found a difference
>   * Fixed error code pathes in request processing.
>   * Fix for stack smashing in drbdmeta
>   * Fixed a bug that could lead to a crash when detaching/attaching
>     on the primary under heavy IO (Bugz 171)
>   * Fixed a bug in the new epoch code (introduced with 8.2.7).
>     Might cause crash at reconnect after connection loss during heavy IO
>     (Bugz 160)
>   * Fixed a bug in drbdsetup that could cause drbdsetup wait-connect to
>     miss the connection event.
>   * Fixed a race condition in the new barrier code. (Reordered barrier ACKs)
>   * Do not rely on blkdev_issue_flush() returning ENOTSUPP

>   * bitmap in unmapped pages = support for devices > 4TByte (was DRBD+)
>   * checksum based resync (was DRBD+)
>   * support for stacked resource (was DRBD+)

>   * Added support for stacked resources to the bash completion stuff
>   * Added missing documentation (manpages)
>   * Fixed drbdadm handlers for stacked resources
>   * Support of drbd-proxy in stacked setups
>   * RedHat cluster suite (rgmanager) integration scripts
>   * Renamed 'state' to 'role'

CAUTION!!!
this "drbdadm state" to "drbdadm role" change may break existing scripts,
such as certain versions of drbddisk (so upgrade your userland, too!)
or the heartbeat ocf drbd resource agent.

because even though "state" is still supported,
a deprecation warning will be printed to stderr.

and if your script does 2>&1,
it may try to interpret the deprecation warning on stderr,
and fail miserably.

>   * More build compatibility with older vendor kernels
>   * Added drbd-overview.pl to the packages
> 
> http://oss.linbit.com/drbd/8.3/drbd-8.3.0.tar.gz
> http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.0
> http://www.linbit.com/support/drbd-8.3.0/


-- 
: Lars Ellenberg
: LINBIT | Your Way to High Availability
: DRBD/HA support and consulting http://www.linbit.com

DRBD® and LINBIT® are registered trademarks of LINBIT, Austria.
__
please don't Cc me, but send to list   --   I'm subscribed
