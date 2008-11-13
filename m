Return-Path: <lars.ellenberg@linbit.com>
Date: Thu, 13 Nov 2008 02:36:04 +0100
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20081113013604.GB16836@barkeeper1-xen.linbit>
References: <200811122220.08214.philipp.reisner@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <200811122220.08214.philipp.reisner@linbit.com>
Subject: [DRBD-announce] Re: [DRBD-user] drbd-8.0.14.tar.gz and
	drbd-8.2.7.tar.gz
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

On Wed, Nov 12, 2008 at 10:20:08PM +0100, Philipp Reisner wrote:
>  * Support for using barriers to enforce write ordering on the secondary
>    node. New config options: no-disk-barrier, no-disk-drain

let me add here: if your DRBD lives on a battery backed write cache,
and for performance reasons in the past you needed to say "no-disk-flushes",
chances are that you now need this "no-disk-barrier" in addition,
or throughput may degrade again.

do NOT use no-disk-drain if you care for write ordering and there is
anything below drbd in the io stack that may re-order writes.

to put that the other way around: only use no-disk-drain if you
use the no-op io scheduler, AND all the lower level transports involved
do not reorder anything before a write is completed as "on stable storage".

-- 
: Lars Ellenberg
: LINBIT | Your Way to High Availability
: DRBD/HA support and consulting http://www.linbit.com

DRBD® and LINBIT® are registered trademarks of LINBIT, Austria.
__
please don't Cc me, but send to list   --   I'm subscribed
