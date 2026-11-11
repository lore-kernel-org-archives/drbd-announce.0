Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.208.175
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794408805;
	b=aGZyAXtSMgSZwgjb/PPJGxbt2hj84HaoaSxFBfuFjggiEwkG5Qywxm4863+8ygRadINr
	 DFcpdTU5DPCWZEwWPoTsxnrNddTelyyx9VLuNq52gFh3BspUqUQDRnxPAlwFCzT+Lf5AI
	 0joyt6RVPHhxH/n8xkaw/rSasRXUdegQB4Pyur1jI4TlDNY4rFOLOPtU8pzmqj1Tcr26Q
	 EhBucOeIafVx23Y1Xfy8pa83OqWLayfQuR+11mcx6O4yFRiQD0H+Yl7maGa0lLPBggrZl
	 yHKn8Qzt1mdbbRlWNyY16t03donG35OtN6ZuE2IFgbGD6rl0pRigh3GSeI7ZOgeTZnA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794408805;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Subject:
	 Message-ID:MIME-Version:Content-Type:Content-Disposition:User-Agent;
	bh=FokaK7I6E0J8cy6H3qpEMoc7clJ+8fg1tDiqF+vk7I4=;
	b=HHlSIo8gJAzkiNxa0R2rnefQEDQu/gv+47FuAebj1olfmeOF7L3YkCHmxsn3Sf1G17Eq
	 FMpYuX8bpYJRRaE4oYvyjbHjCW/M9C95JE2hxHujBoH3ULCqXrfJY58g6/ZsQQ3gsKf2k
	 WB6OWeAr3CXU2jULq5vpTFvzE8zaxl3SG8jl7mwVn0sS1l386I6UKqWUhxeYWb4r9vqP9
	 uCYrCQxzfUNpbSsZxqJRJ05Y50D67H+hJHvnQBAtCDMo6gihRFbV9Y6+J7jONe3hY9fkU
	 VZKo0GoNzCI2fGKVX0/GDpglC88cqlWEQ7tLIJbnMfEqbtEb992lRAAnGFQd65bVp2Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=O4PrbzOS;
	arc=none smtp.remote-ip=209.85.208.175
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5ED606A326
	for <drbd-announce@lists.linux.dev>; Wed, 11 Nov 2026 14:53:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org BA5ED606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=O4PrbzOS
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3a1f628b1d1so24055871fa.0
        for <drbd-announce@lists.linux.dev>; Wed, 11 Nov 2026 06:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1794408803; x=1795013603; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FokaK7I6E0J8cy6H3qpEMoc7clJ+8fg1tDiqF+vk7I4=;
        b=O4PrbzOSGa4fZsRvw99RUttWuEGKj6g95sKehKip3kJa0QAmqKqSehgDlvEv7doZBo
         HPFOpty2RzkqElCs6rcrf8/u3xUWteza3GWaqSnoBEmgiFuspx58zH4jd2ZZMwp3RsD8
         V/FlnQbw5tQipr8AJ9PeydO04NAAclQHhqQ5+42AfJdSKRD33obIXeZ0oyrK12TXaJZ+
         5j1Z1QvX1JxXCLCbbpNt+sy/x+VVN597xjsPNdW8kD38RErOVoK9Bdc8FWBZORYZNNcv
         pSkglk0fFzh1Cmv9vvY3CahA/RJD0x0FgyTyqYSMc1DejydQPlFckfJANo1oE2s+pPit
         s8qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794408803; x=1795013603;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FokaK7I6E0J8cy6H3qpEMoc7clJ+8fg1tDiqF+vk7I4=;
        b=fHzF0efpUMBTq7nZ1yw7zgrHAJeWQml80pHZ58jv7g5Fw3YPj2DKvX3Nh+MBbN+F55
         e5jqkLZZfj/fIRmSSzvSyMECuBeULSZVfDOZtOzhQ8jL4B+6DHuFbRpAowtS/RKrFxAW
         kbcCUjFqhOFfuBNl9yrdCPnQ7QXe8ZA3Xs4HhgdZdXkjjk+yAKXbt01mITT28OrM6W31
         ywMnMF1XbU1K0N8ASMq0FEdVvjXpCW/Tt2dz6PnEwVs+mzeciQf1P2SIh7/uy+cg5pbb
         khjaNPGoRU6lI9pohcmzQCHnH+qaBcqRdTQrnL6wMbKxDHTsv9BX3QX3cCd2Nj7paLrB
         Vg1Q==
X-Gm-Message-State: APuU4Z+PAXFVlyjs0G46eILrXlim4IpdK7OrjEhdPY8dV/47W2vA+Bc7
	0Qwk3jHFF2f01XQUWjaF0Ald+vl91mohCixjx+wKU+nu0axOUIFoRhHKnnmJVUGfT4hcwRtZIc/
	VFeYK21khdg==
X-Gm-Gg: AYBFou35bjFHw21/NHOaR1aeZXLAX10bLg5C/aQMVHcW/rFLNXqiDY4Hy0RIuSn2Gms
	qzSAefVny8/wMpD7Bn49eBMF3thNknc8jTsjpeoVdA2PElXv9eFkLYbxtY+wTJv+pBMWB4P8Ttj
	OoN346D3lMliT0avVmssCY38dmNVBQ/8S+ROd6RbV0NMsGx+5kXPeSujKiuikJia+exwQtpOn5k
	OIC32ilo3JjIwjufqzGfG27eEhNpb5qr731UzS4ZT9rOI1twz7U1PnINnIYwC+41V7PgM0O3MGB
	l5HQFhQ6r2LRfmG6lXTDNQE8HdvDv+zzE0pi01j8J97M7SxhRB4TTRcten2EboaknegFSd3taOt
	Lxt55x/cnUsbBdH4EQ+ReVedNQkTA+LuBlqT/UeQekV5+X3HW3/IdptYx1zOXp5tfuyO1ISkPPr
	auNZud59ko7gtxKDpgTNIslDePmPwtf2ReMfUfoUbfLBoNJmU1aKPErUhbKbVqVy+gJ9cH8KYRG
	FkOKccDQA4oYRn7xCtHmhLQ1V9BPNqW7Ke+uNsG7M7GaGlTJjDtlxK1k4qp9zLnS2PJ69a2UgQV
	mwlfExkPCmtjqo2yMLl5D0aKLD67UQsowJ3MNAp5vzT2yGf0gTgEXa2pfBwa/AStWb7SgnGl7sj
	NqCWhNp1qsergkACO7EzMisbSMTs=
X-Received: by 2002:a2e:a9a4:0:b0:3ac:48a0:e253 with SMTP id 38308e7fff4ca-3ae126b8daemr5890191fa.23.1794408802787;
        Wed, 11 Nov 2026 06:53:22 -0800 (PST)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3ae09172a8csm11194921fa.5.2026.11.11.06.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 06:53:22 -0800 (PST)
Date: Wed, 11 Nov 2026 15:53:21 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-utils v9.36.0-rc.2
Message-ID: <avSBYSLIYXTqGR3z@arm64>
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Post: <mailto:drbd-announce@lists.linux.dev>
List-Help: <mailto:drbd-announce+help@lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
List-Owner: <mailto:drbd-announce+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jVVXFGcNHpmZmaa1"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--jVVXFGcNHpmZmaa1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the second RC of the upcoming version 9.36.0. Besides the
changes already in rc.1, it fixes a drbdmeta apply-al bug present
since 9.33.0, where the last activity log extent of a device was not
resynced after a crash of the Primary, and keeps the bitmap provenance
feature of recent kernel modules, which apply-al used to clear. The
cbt commands now also work over the legacy "drbd" netlink family, and
cbt-dump learned to report never written extents and to take the zero
extents of a dm-thin volume from its pool. drbdsetup attach gained
--discard-my-data to resolve a split brain detected on attach.

Please test, if we don't find any issues the final release will be about
a week from now. The PPA build will follow, looks like it currently has
problems out of our control.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/fb66d2599ae16b89cfe2fd51d5d7ec28918de487
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.36.0-rc.2.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.36.0-rc.2
-----------
 * drbdadm: raise the default cmd-timeout-short from 5 to 10 seconds;
   keep the medium and long defaults that were in effect (600, none)
 * drbdadm: show changed cmd-timeout-* settings in the v9 dump
 * drbdadm: fix adjust failing silently when a wait-connect lasted
   longer than the remaining cmd-timeout of the preceding connect
 * drbdmeta: keep the bitmap provenance feature of DRBD 9.2.20 and 9.3.4
   when writing the superblock; apply-al after a crash cleared it, and
   DRBD then counted a crashed Secondary's activity log bits as set for
   blocks its peers lack
 * drbdmeta: forget-peer makes the freed bitmap slot a day0 slot, a
   copy of one or all bits set, as the kernel does
 * drbdmeta: cbt-dump --mode=dirty|zero also reports the extents never
   written since create-md, from the day0 bitmap; "format": 1; the
   extents are start and length and cover the volume, as in ovirt-imageio
 * drbdmeta: cbt-dump on a dm-thin volume takes the zero extents from
   the mappings of the thin pool, which, unlike the day0 bitmap, know
   about discards; with external meta data, --data-device (drbdadm:
   --data-snapshot) names the snapshot of the backing device
 * drbdmeta: fix apply-al skipping the last activity log extent of the
   device as beyond the end of the bitmap, so that extent was not
   resynced after a crash of the Primary; since 9.33.0
 * drbdmeta: apply-al reports the amount it marked out of sync
   correctly; it reported 0 KB with up to 128 KB per bitmap bit, and
   counted bits past the end of the device

--jVVXFGcNHpmZmaa1
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmr0gV8ACgkQRgmezyI6
myKZQwf/eHIKFRIDX42eyp1rhtL1clt+KNvGLcLYbn2lDH27C9Y/qwJs87BT6Ara
jwMWn27dgHE5k4iBVqiDaLKtw8AryFP6+zcWnu/ZUfzX6a7VHHPrdlKIKniHVedU
Bxzi12WbKZNSBf8Ld/NbE6YqVghRe9jPkJxO57W1tS20EQqOAhpz1jlK8ILk4s4d
EJT/0e1S0MO6Y/xZMiW6vF2g1qQzOdz2BfRkgZYQVuKo3TvRzA9PGjH2iofy0liJ
0QOyN4d/KFSWEgQqkIowtleh1oJvqoNiTVuQJxelZJ4qts3CDFzNL8pAVokKG2/C
XZKHoczOzec9nKunqNoWr4Mc2FdKiw==
=14vI
-----END PGP SIGNATURE-----

--jVVXFGcNHpmZmaa1--
