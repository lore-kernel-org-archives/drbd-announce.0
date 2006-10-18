Return-Path: <Lars.Ellenberg@linbit.com>
Date: Wed, 18 Oct 2006 15:39:36 +0200
From: Lars Ellenberg <Lars.Ellenberg@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20061018133936.GA7865@soda.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [DRBD-announce] BUG alert: protocol A and B broken
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

due to the serious problems that may result from this bug,
this mail is sent to drbd-user as well as drbd-announce.
sorry for duplicates.

while rewriting the request handling code in drbd 8 we noticed that
drbd network protocols B and especially A have been broken ever since:
uppon connection loss, they could "forget" to set certain areas
as "out of sync".
if there is no later write to those areas,
they will never be in sync again!

	you have diverging data sets,
	and you will likely see
	file system corruption
	once you do a failover.

  if you are using

     *  protocol A,
	it is very likely that you are affected.

      *	protocol B,
	it is unlikely that you are affected.

	you could be affected, if there has been
	a crash of the Secondary directly
	after connection loss, after the RecvAck has been sent out
	(and been correctly received by the Primary), but before the
	data was actually written on the Secondary disk.

      *	protocol C,
	you are not affected.

if you have been using protocol A or B,
we recommend this workaround for now:

use protocol C, and start a full sync.
 * edit drbd.conf to have "protocol C;" everywhere.
 * do "drbdadm disconnect all" on both nodes
 * do "drbdadm connect all" on both nodes
 * for all drbd devices,
   make sure the "last known good" (current Primary) is ok,
   if neccessary do a fsck on it.
 * for all resources in Secondary state,
   do "drbdadm invalidate <resourcename>"

we believe that the problem has been fixed already in svn,
but we want to be very sure about the fix,
and about some other pending things.
thus we will delay the release of drbd 0.7.22,
which will contain those fixes, for some more days.

again:
	if you do use protocol C, you are NOT affected.

thanks,

-- 
: Lars Ellenberg                                  Tel +43-1-8178292-0  :
: LINBIT Information Technologies GmbH            Fax +43-1-8178292-82 :
: Schoenbrunner Str. 244, A-1120 Vienna/Europe   http://www.linbit.com :
__
please use the "List-Reply" function of your email client.
