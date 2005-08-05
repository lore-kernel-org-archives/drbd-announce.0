Return-Path: <Lars.Ellenberg@linbit.com>
Date: Fri, 5 Aug 2005 14:52:33 +0200
From: Lars Ellenberg <Lars.Ellenberg@linbit.com>
To: drbd-user@lists.linbit.com
Message-ID: <20050805125233.GC17053@barkeeper1.linbit>
References: <200508051419.28674.bernd-schubert@gmx.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <200508051419.28674.bernd-schubert@gmx.de>
Cc: drbd-announce@lists.linbit.com
Subject: [DRBD-announce] bio_clone() critical kernel data corruption bug
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

cc to drbd-announce
because of the possible severity of the problem.


/ 2005-08-05 14:19:28 +0200
\ Bernd Schubert:
> Hello,
> 
> I just saw on the raid-list a rather critical bug that might be interesting 
> for drbd as well:
> 
> https://bugzilla.redhat.com/bugzilla/show_bug.cgi?id=164696
> 
> There's also a bug fix from Andrew Morton:
> 
> http://bugzilla.kernel.org/attachment.cgi?id=5394&action=view
> 

thank you for the heads up.

according to http://lkml.org/lkml/2005/7/28/230
the bug was introduced in 2.6.11-rc2,
http://bugzilla.kernel.org/show_bug.cgi?id=4946
says it affects 
 >=2.6.11-rc2, >=2.6.10-ac10, >2.6.10-hardened-r3, 2.6.12-gentoo-

so anyone running something in that range should apply the patch asap!

don't let the version number of you rdistribution kernel trick you into
believing you are not affected: e.g. I just verified that the SuSE SLES9
kernel (which pretends it was 2.6.5) has a fix for this problem since 24
May 2005 (so it _was_ affected!).

so better go double check!

-- 
: Lars Ellenberg                                  Tel +43-1-8178292-0  :
: LINBIT Information Technologies GmbH            Fax +43-1-8178292-82 :
: Schoenbrunner Str. 244, A-1120 Vienna/Europe   http://www.linbit.com :
__
please use the "List-Reply" function of your email client.
