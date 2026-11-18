Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.208.176
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1795004083;
	b=whOFee140fihJ93RHJOWQ52vH5lgq8QYdF+ERr3dXqnFPuGoH7IOg66Lha27zcC6FnLy
	 GrLXqgXFNcibB81HoYLuhaSUtzMpELUPWfJyadPNeoPgt6trJ+fLJq0BXFezjIeOXjdaD
	 wTB51GjsG+JofVH/rXEPGYUDBb/43Gwk87ptOgDcZcbCGzlpY4eyN3qehGDCR5Q/pDhDw
	 vAw9LMZRfbRNUK0O9HSLnHljFYk9VuhV9cKGavrrlhn71VqFec0UOrhsxxx0twbBFAeGa
	 uNma2nNlURXmQfaGXySF9kHKn5hX7zZ1Zt0Qp+1d69unX7mG5CJskyKKlcpZtv6+cbA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1795004083;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Subject:
	 Message-ID:MIME-Version:Content-Type:Content-Disposition:User-Agent;
	bh=MrDSd4u3PZyPKDeAqR6PS64YoHjLnMsfnXlvRLNasQU=;
	b=GkGbFE8h7IrVPSLC05EKhbTOK4gQgmVt4onrfaxh6MrpRRY/WvVG9EFYdrTobLIdLHt4
	 GVAZ28TDqRBrAoJiiCoDwncJG1LavJh0IhSdp7wvYdIxjfmbOeVUykkVms0nQNvYJFnRj
	 S2exefdxV2XMw+HLEralXcr9HkcTtbfzqw9BCFJdnwt/GTlrH+jOcd3n/Du02NWbpPeHy
	 aYQVaF6omgb3Dp3WPIVQL/XVZZLEFUuTiD8UUC5Zz/+rl6Wib3MIDyupGrMxpCzVFOFJh
	 yrX9kQK62hoJgxI91hcryprLQ5yuRixUJRVdk0oCw+DBg8SUqK1tdQ3TxQ/D21PomPg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=1KZEoPia;
	arc=none smtp.remote-ip=209.85.208.176
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164AB606A31C
	for <drbd-announce@lists.linux.dev>; Wed, 18 Nov 2026 12:14:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 164AB606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=1KZEoPia
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-3acff56a300so9482221fa.2
        for <drbd-announce@lists.linux.dev>; Wed, 18 Nov 2026 04:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1795004081; x=1795608881; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MrDSd4u3PZyPKDeAqR6PS64YoHjLnMsfnXlvRLNasQU=;
        b=1KZEoPiaZhQBev9M4vc1vBEC9duYAdWpbZ1fPS/pPvlSSHh5DyBiQhjOzsBox412yv
         c0KaYTDGq6mpDt7BlmZItGMQpN0fiCGp1AADXkldnGODWH1UTSLxswzdxLLeKWO/WFhp
         erxUFpvZGt6szyIH0q673/zdsu/axeYg84/vB9lDw4TXE18DDKdp4DNrYhBzmlL+RSC7
         arbM5kfOo2xmM1+cN+aqp7XxRiIC8bEAoStDyFCK40M9mB72lisK5FxxIZYn1rBq29Lu
         P3AE3sn0IuCulJXRnaZtQrlkYEQ99m2476qTiGekaokfuI+lt1EQ6QBOR1Nv6Ax43fzQ
         EYqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795004081; x=1795608881;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=MrDSd4u3PZyPKDeAqR6PS64YoHjLnMsfnXlvRLNasQU=;
        b=RbiYgI1EW3M8o3Lsygavoui6SUUVXe68tacew3QoMzKuO6gfdAGklF4/ktIM1/dnvS
         ppUNKoS5G1MoQNT3YrVcb6bdk7pHC5JMxsPvihRXnOXVxvVY66IdeeH9pLD3wFqJ8r0V
         KAQk5Bpadt67gjBu+sOaqIzGl9ZgPzN0CKbDien1ou82XxBHNEc5eDfbC1UXYjqepB4z
         wL7qmJ8xT31/VJpXlQvEoABg20XVcmTXBmAoHuf8VvfpwfYv8Fs3y8jeXru/AC8VPqHq
         f4iJQyLLmZU6woJraPEpttKans8Ynf1mzuVBYiUxIEyVfvTu1B2QqwSedsb7fndsXK+5
         IR0A==
X-Gm-Message-State: APuU4Z9Q1gBILT/zmVY9QpG2ZBXrljvV6ZYAgYUctMk6qMHXRA23PHxi
	iztTGZ+fSiMccktPYLVzQ8JaCWayUoFx27an2Djq2fr/IEFzBPaTVYnVmbzUhCnIajp2Sd2MRj+
	M1JDMuQ5new==
X-Gm-Gg: AYBFou2f2zonmNT8OSijGB3RvTjWX3EDzYoZ5MK61RK77pazurvBLmLaV5/h7r1eb3p
	deXHEZf6u5gpSZ6B2HzCc4Hm8c1DpD+d1ql/IdMFO+aeIQy/W/gmiZllh/3wwLaBnZeWChqUsHG
	v88sV0JhEkdVZlXLKlGwbt/Sdv6LFfY/dnGIS9FYLmgpzbir+HXXhlqMPI2YSvsXwKI1yBkJ5bU
	ZPXeK7j0PaXwaZcdUanxAp4AN2XcQazODCjEzNoEshzB2nJ8W6E87yTaUuzNNRnla6fUx86nftG
	605cO2KpQjdRDLkwEr8DaPFVEvkAR5iWvNoHwCC7oPWO9JLjC0Ln+jvEUoUVYN0OXnnXqMPsxTe
	XJ3MCqdrOZH42yWb4gOZqebLJY3ihF/+pZR49khSfTo9/dg3X9kXUyFaGCaCJy1Vth0yh1PPpud
	6NrzBbPAQ/OTULHZr6V50/5COIsq5yV1ypmNk3sZX/+aOOsoIn6XEyyfH1C//iKlTIb549OSvb1
	zgDA/uB4SOMA4Bim3DbnQG10G3M5LPf83K7uXJmHjIoVWdZoQcRLmstM8plmFLWRxhuLm256zPz
	VtxKKDEMtTBgV7fLnCqThN4vao/IiYBMfHRLT3Jcex8T1vIq92JFq5JjzjpyeY/AOWkjZp6rUp8
	ZijfRDA==
X-Received: by 2002:a05:6512:3d03:b0:5c1:79b4:442a with SMTP id 2adb3069b0e04-5c1aa059f23mr928929e87.58.1795004081095;
        Wed, 18 Nov 2026 04:14:41 -0800 (PST)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3ae67b0d1c3sm5741441fa.23.2026.11.18.04.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 04:14:40 -0800 (PST)
Date: Wed, 18 Nov 2026 13:14:39 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-utils v9.36.0
Message-ID: <av2Wr_LwbPwgT-bS@arm64>
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
	protocol="application/pgp-signature"; boundary="SIYQphf6oC2+tKJO"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--SIYQphf6oC2+tKJO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the final version of drbd-utils 9.36.0. There have been no
changes since rc.2

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/e25b7d4d17e53811c6fd57f3ae7add0b9028cced
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.36.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.36.0
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
 * drbdsetup: use the "drbd2" netlink family when the kernel offers
   it, fall back to "drbd"; DRBD_NETLINK_FAMILY forces one
 * drbdsetup,drbdadm: drive a DRBD 9 module that advertises 8.4 over
   drbd2; use the 8.4 tools only for a genuine DRBD 8.4 module
 * drbdsetup: hand drbd-8.4 command lines to drbdsetup-84 instead of
   translating them to DRBD 9 requests
 * drbdsetup,drbdadm: add the changed block tracking commands
   cbt-flush, cbt-start, cbt-stop, cbt-status and cbt-dump; suspend-io
   waits for the last barrier ack, --flush-to-peers=no skips the wait
 * drbdmeta: keep the changed block tracking bookmark across
   superblock rewrites, add cbt-dump
 * drbdmeta: converting v08 meta data of a crashed primary to v09 keeps
   it a crashed primary, so DRBD 9 resyncs its activity log extents
 * drbdadm,adjust: fix a recreated proxied peer stuck in Connecting;
   rebuild its proxy connection when a peer or path is new
 * drbdadm: fix require-drbd-module-version-{lt,le,gt,ge}; for example,
   requiring 9.2.0 or later accepted a 9.1.0 or 8.4.11 module
 * libgenl: report the kernel's extended ACK text on netlink errors
 * drbdsetup: add attach --discard-my-data to resolve a split brain
   detected when attaching to a connected device
 * spec: enable SELinux on SLES 16+; require bash-completion only
   conditionally; no rich pacemaker dependency on SLES 12

--SIYQphf6oC2+tKJO
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmr9lq0ACgkQRgmezyI6
myKAOQf9HmBc056MNUVBIeOHu1AHQ7107m5hPZD6PCXyQgkEi+wII8h+09mlQwnD
lUAMAuCnDZrI55A62rewdC6SHh9u1+9+Rp4YGS77zO2fLZrnU9xFoq31qQaxz1Z/
AUIeeizVUv6OCwJBi2WeyHRH31/tZS9iALl4aqDNhToNyw3Zn2lAZXfL7yq15Gc0
7ZVVFxJpVDvF+/FoqxiX/SXBCV396vPrn0ppTLVfKCaVcXIgKhNkdyMJJdjmcUfk
hWwQmqPD2i6v2r1vCtxRDpJZjmtdwzANkG1R3zdeWagoy73S0IcwK5Y1sQqD1sEC
WLv5XeBaqKN/2DW4Aa/ejHQyZyhZJw==
=+uXv
-----END PGP SIGNATURE-----

--SIYQphf6oC2+tKJO--
