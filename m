Return-Path: <rasto.levrinc@linbit.com>
Date: Tue, 12 Jul 2011 18:07:59 +0200
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Message-ID: <20110712160758.GA22288@barkeeper1-xen.linbit>
References: <20110712063021.GA25101@barkeeper1-xen.linbit>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20110712063021.GA25101@barkeeper1-xen.linbit>
Subject: Re: [DRBD-announce] DRBD MC 0.9.4 / Pacemaker GUI
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

On Tue, Jul 12, 2011 at 08:30:21AM +0200, Rasto Levrinc wrote:
> Hi,
> 
> This is the next DRBD:MC release 0.9.4. DRBD:MC is DRBD, Pacemaker and
> Cluster Virtual Manager GUI.

Well, one problem with that release long time ago was that
setting allow-two-primaries in DRBD config stopped working. It is valid option
in some cases.

There's new release 0.9.5 with that fixed:
http://oss.linbit.com/drbd-mc/

Rasto Levrinc

> 
> You can get DRBD:MC here:
> http://oss.linbit.com/drbd-mc/
> 
> Screenshot:
> 
> http://oss.linbit.com/drbd-mc/img/drbd-mc-0.9.4.png
> 
> 1. You don't need Java on the cluster servers only on your desktop. 
> 2. Download the DMC-0.9.4.jar file.
> 3. Start it: java -jar DMC-0.9.4.jar, or click on the file.
> 4. It connects to the cluster via SSH.
> 5. If you use it without DRBD, you have to click "Skip" button on couple of
>    places.
> 6. It is recommended to use it with SUN Java.
> 
> DRBD:MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.1.5 with
> Corosync or Heartbeat and DRBD 8.
> 
> -- 
> : Dipl-Ing Rastislav Levrinc
> : DRBD MC http://oss.linbit.com/drbd-mc/
> : DRBD/HA support and consulting http://www.linbit.com/
> DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.
