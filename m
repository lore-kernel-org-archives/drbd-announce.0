Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com
Date: Mon, 1 Mar 2010 11:20:13 +0100
References: <201002281224.27101.rasto.levrinc@linbit.com>
In-Reply-To: <201002281224.27101.rasto.levrinc@linbit.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <201003011120.13758.rasto.levrinc@linbit.com>
Cc: linux-ha@lists.linux-ha.org, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org
Subject: Re: [DRBD-announce] [drbd-mc] DRBD Management Console 0.6.0
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

Am Sunday 28 February 2010 schrieb Rasto Levrinc:
> Hi,
>
> This is the next DRBD-MC beta release 0.6.0. DRBD-MC is a Java GUI that
> helps to configure DRBD/Pacemaker/Corosync/Openais/Heartbeat clusters. It
> is compatible with Heartbeat 2.1.3 to the latest and greatest Pacemaker
> with both communication stacks and DRBD 8.

I've just discovered a not critical but quite annoying bug in 0.6.0 release, 
where internal guiid would be saved in cib. This is not a problem for the 
cluster, but if you use crm shell as well, it would complain loudly about 
this parameter. You can simply remove the "guiid" paramater in crm shell 
every time you save the configuration, only to get it back in DRBD-MC.

In order not to be annoying for very long I've just released DRBD-MC 0.6.1 
with just that bug fixed.

Rasto Levrinc

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

