Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id D8D934203EF
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 May 2022 09:03:33 +0200 (CEST)
Received: by mail-wm1-f43.google.com with SMTP id
	1-20020a05600c248100b00393fbf11a05so774068wms.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 10 May 2022 00:03:33 -0700 (PDT)
Date: Tue, 10 May 2022 09:03:30 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YnoOQgnN8y7tFuwb@rck.sh>
References: <Yme3v51RJ+pIxn63@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yme3v51RJ+pIxn63@rck.sh>
Subject: Re: [DRBD-announce] PPA transition to Jammy
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

On Tue, Apr 26, 2022 at 11:13:35AM +0200, Roland Kammerer wrote:
> Dear PPA users,
> 
> As some might know we have a PPA providing the DRBD9 stack[1]. From
> today I started building new releases (drbd-utils and linstor-server RC
> as of later today) for Focal and Jammy, but no longer for Bionic.
> 
> I will build everything we already have (linstor client,
> drbd-reactor,...) for Jammy in the next days. But there is now a period
> where new stuff does no longer show up in Bionic, and Jammy is not yet
> complete. Jammy should be complete at the end of the week, I will post
> an update here.
> 
> I will delete all Bionic packages in about a month from when Jammy is
> complete. This deletion only affects the PPA, our customers of course
> still get support for all officially supported Ubuntu releases.
> 
> Regards, rck
> 
> [1] https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

Dear PPA users,

this took a bit longer than expected, but we should have everything in
place now.

Please note again that we do not build for Bionic anymore and that the
artifacts will get deleted "soon".

Regards, rck

