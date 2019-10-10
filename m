Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 165114203E3
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Oct 2019 15:58:38 +0200 (CEST)
Received: by mail-wr1-f45.google.com with SMTP id v8so8042956wrt.2
	for <drbd-announce@lists.linbit.com>;
	Thu, 10 Oct 2019 06:58:38 -0700 (PDT)
Date: Thu, 10 Oct 2019 15:57:37 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20191010135737.GQ2889@rck.sh>
References: <2821659.NS9FCa6JyO@fat-tyre>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2821659.NS9FCa6JyO@fat-tyre>
Subject: Re: [DRBD-announce] [DRBD-user] drbd-9.0.20-1
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

On Thu, Oct 10, 2019 at 01:19:53PM +0200, Philipp Reisner wrote:
> Hi,
> 
> With this release the big news is the new way we deal with compatibility
> for older linux kernels. It used to be a mechanism based of #IFDEFs that
> tainted the main drbd code more and more.
> Now the DRBD code is clean Linux-upstream compatible code. In order that
> you can compile it against older and distribution kernels the build
> process automatically applies a compat-patch. These compat-patches are
> computed using coccinelle/spatch semantic patches. See here for more
> information:
> 
> https://www.linbit.com/en/how-to-make-drbd-compatible-to-the-linux-kernel/

Some additional hints/tl;tr:

1. It tries to find a patch in the local cache (shipped in the tar
ball).

2. If not in cache, try to generate with spatch. You need to have at
least version 1.0.8 (latest release, as of about 2 weeks ago). Earlier
version might generate patches, put they might be invalid! AFAIK no
distri packaged 1.0.8 so far.

3. If spatch is not installed, it fetches the patch from a web service.
For that you need access to the web, and you need `curl`. I forget to
add it as explicit dependency for the dkms. Most systems should have it
- PVE is a famous exception - or the build process will complain anyways.

Best, rck
