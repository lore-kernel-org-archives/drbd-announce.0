Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: Csurai Akos <akos.csurai@ericsson.com>
Date: Mon, 13 Aug 2012 14:50:46 +0200
Message-ID: <1657779.DPIXeVsfHg@fat-tyre>
In-Reply-To: <5028F437.9090907@ericsson.com>
References: <1991686.1oj2MZFnps@fat-tyre> <5028F437.9090907@ericsson.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	"drbd-announce@lists.linbit.com" <drbd-announce@lists.linbit.com>
Subject: Re: [DRBD-announce] [DRBD-user] drbd-8.4.2rc1.tar.gz
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

Sorry. That was unintended. Permissions fixed, now you can
download it.

Best,
 Phil

> Hi,
> 
> What do I need to be able to access the tar.gz?
> 
> Forbidden
> 
> You don't have permission to access /drbd/8.4/drbd-8.4.2rc1.tar.gz on
> this server.
> Apache Server at oss.linbit.com Port 80
> 
> Thanks in advanced: Akos
> 
> p.s.
> All the other tar.gz can be downloaded from : http://oss.linbit.com/drbd/
> 
> On 08/06/12 19:45, Philipp Reisner wrote:
> > Hi,
> > 
> > A release in the 8.4 branch is really overdue. Please try it out, and
> > verify that you preferred 8.4 bug has been fixed in the meantime.
> > 
> > Please note: This is a release candidate, not intended for production.
> > Please help with testing!
> > 
> > 8.4.2rc1 (api:genl1/proto:86-100)
> > --------
> > 
> >   * Fixed a write ordering problem on SyncTarget nodes for a write to a
> >   block
> >   
> >     that gets resynced at the same time. The bug can only be triggered
> >     with a
> >     device that has a firmware that actually reorders writes to the same
> >     block (merged from 8.3.13)
> >   
> >   * Fixed a potential deadlock during restart of conflicting writes
> >   * All fixes that went into 8.3.13
> >   * Removed a null pointer access when using on-congestion policy on a
> >   
> >     diskless device
> >   
> >   * In case of a graceful detach under IO load, wait for the outstanding
> >   
> >     IO. (As opposed to aborting IOs as a forcefully detach does)
> >   
> >   * Reinstate disabling AL updates with invalidate-remote (8.4.0
> >   regression)
> >   * Reinstate the 'disk-barrier no', 'disk-flushes no', and 'disk-drain
> >   no'
> >   
> >     switches (8.4.0 regression)
> >   
> >   * Backported the request code from DRBD-9. Improves handling of many
> >   corner
> >   
> >     cases.
> >   
> >   * Support FLUSH/FUA bio flags
> >   * Made the establishing of connections faster
> >   * New option 'al-updates no' to disable writing transactions into the
> >   
> >     activity log. It is use full if you prefer a full sync after a primary
> >     crash, for improved performance of a spread out random write work load
> >   
> >   * Expose the data generation identifies via sysfs
> >   * "--stop" option for online verify to specify a stop sector
> > 
> > http://oss.linbit.com/drbd/8.4/drbd-8.4.2rc1.tar.gz
> > http://git.drbd.org/gitweb.cgi?p=drbd-8.4.git;a=tag;h=refs/tags/drbd-8.4.2
> > rc1
> > 
> > Best,
> > 
> >   Phil
> > 
> > _______________________________________________
> > drbd-user mailing list
> > drbd-user@lists.linbit.com
> > http://lists.linbit.com/mailman/listinfo/drbd-user
