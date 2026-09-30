Received: from mail-lf2-f12.google.com (mail-lf2-f12.google.com [74.125.229.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198C24CDDF7
	for <drbd-announce@lists.linux.dev>; Wed, 30 Sep 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.229.204
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790771917; cv=none; b=HgjDA/AUiCkRzlIn/Sk+QKSSH7aJTve1fkrMZ5jYxCRLt5pavsTykvhRrwlqogqYFxWZCUfaaUb0vDMEw7Iv4tiZfmo/ZMEJTvpXleZOqx1EHhhTQ2gPBkaAsHLiFWMhDqhzgTPPkQqIG9R0NP/K1Eyu7BoY/bcORGL2G3fMIdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790771917; c=relaxed/simple;
	bh=qgC+jJhvc4gKX/jDjoI5+sqdSmIlOvenBZ94AeHGKGQ=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=dsGZ1aWLierVorZmF7ahEOyvQOGZI24V6yjvu45N885PBEdpncEuUWno3i8O2XOQx+qkyX7r1YlR08Mt+eSXn6w4d+SPasAs8HMFff1Xha9QNuqD6MZKJbl2F56UNFt1G3yaGCkr8xUk8WjE21LJl1DGORuhiJAHmkwitPd27Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=0UfHFU+L; arc=none smtp.client-ip=74.125.229.204
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="0UfHFU+L"
Received: by mail-lf2-f12.google.com with SMTP id 2adb3069b0e04-5ba3add810eso925246e87.0
        for <drbd-announce@lists.linux.dev>; Wed, 30 Sep 2026 05:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1790771913; x=1791376713; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7S7WvGCdebNHZWc7MgHtZVXCp3bGjDP9pjlq7k393Jg=;
        b=0UfHFU+LT5FRIbrHbipBPiJXpFTTZRY/PHgWETgG9YN+JzsqzczzoZXtcIxkdGGSlR
         5KhpsMgrXOPYOWoI/hYoTdSvA4lPSXKZ5y4mcjHx2LYpw33GJtV3cmsKC8GbOqe8II9Z
         rnkzgA6WrO7WlsXviztriJqHe2yibEOzspsiHumPP4UkxQHzzYrqb6dnMrMEjY9xBfJ2
         Gk51loIxuBTMe0YtPK1u075PClbjtlqe2ZDNIty+3sW+F5y2+9MW9TQVSTg/QJ3Cgm2W
         A2VPIfromZDdY5JIeVm/AVztIfPbVKq2/SVlklfS4i7X/hAFQxUUB5+e4kHhQHcgct9t
         Rahw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790771913; x=1791376713;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=7S7WvGCdebNHZWc7MgHtZVXCp3bGjDP9pjlq7k393Jg=;
        b=VepNON0bYXy1Nl34OpLbLcW0RauxxGUoGpLfaGov8cZO3mjlHYj4jI1Bj4wbUZwE7Y
         VQ34F6TDjB5eDLM0bwEGKkoHey4R0PrHGrPCwQFWMb6WFqRBtL1BM2HTs/DARuV4f7DK
         mtu2LrhMfBRL/FThe2Fvcy5i3I3wtGUjb08NZ4tDvSQi7cw+gqF2otj7ib4vwwxpDuHA
         Ic42x7W8qCrXdCu8PqXwLSYrCdE0US5cVTSP3/hDHJVeF6Xa630inLdRR3Tfgq8+eeaZ
         gh7mqp8MfZmvv+/Lg4ai9e1/mOww4lZ8a7ecWHO6+SpquEvXV6DvvM1VhVOM5ptMTl/e
         TrFQ==
X-Gm-Message-State: AFq9FYLg4jzIyZNcIao12Lvgp7FTEbFSt6WGPoQ40yILRY4BukomDWaA
	7d8WGfO3jV9Q8Wsnx692SJYNkP2jIXlAPYy7pxOTRGu/kCquu+okSFmB9IWvQz2xp3QsS5juq4Y
	FVZ1PIA6eiQ==
X-Gm-Gg: AYBFou1nxytAO3T336vQHyr5aBIxXc5FJWtzth3z7IbYT3ewQ/wrBtZ7t8GxPIwVtu0
	3+bygAqPVhbBMI0ovRwo2skZUzkM3iWldvbxrhFtwdLL04PzR5+7aJwdGimC8KJv5QVJV7sethf
	nDZvS66NCzAdW74Bp9uJFAFIztzE2WPXGNzyU4yGThOH7FHiRl+EFEjiPqcgCC52asUrIZ2srJz
	nhmv85z9+Oxqf5wcd5qTX7qolbtQRx4V6VWAOKRYWWXoeegBwaw6ZOQ75fB317xQ4lHj8xHCG5J
	oLfbGtxkOh7b5su/HMRmaXlLmW6Pzns2+DTIi2zgv3GvB+iV84KWCG2uiWOyYrvavBFiWgd3wKc
	DKre8sW6Nyccw8ZY9Dy5LNtgDuEkq0Mf5Fr+hvOlSjNlTOB6b18UpSuY2lCg7kGxoItLB0o5gp9
	o4nxXi7Ma1EraGUY2q8gifrw/kMp5PvIZjT1AsJxbz/ka1DTJWbTK9B28JQCw5la3YSCi2Jy+87
	i+bwLi1Afd2NQX5vs27sYttyl0ujpMY4t60h5bGtDlNreWNU8E=
X-Received: by 2002:a05:6512:4027:b0:5b0:eda:de25 with SMTP id 2adb3069b0e04-5ba402b3505mr625244e87.6.1790771912629;
        Wed, 30 Sep 2026 05:38:32 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ba3fbfb884sm318673e87.54.2026.09.30.05.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 05:38:31 -0700 (PDT)
Date: Wed, 30 Sep 2026 14:38:31 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-utils v9.35.0
Message-ID: <ar0Cxw1_d4upDcxx@arm64>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jW+NkgYhNkhZakdy"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--jW+NkgYhNkhZakdy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 9.35.0 of drbd-utils. There have not been any
significant changes since RC1 except some noteworthy drbdmon changes
that for example significantly reduce flickering. The release contains
improvements and fixes all over the place. Highlights include a major
DRBDmon update, various drbdmeta metadata conversion improvements, and
SELinux improvements. This release contains a lot more code than any of
the previous I remember the last ~10 years, so please test.

IMPORTANT - read before upgrading on Debian-based systems:
==========================================================
This release splits drbd-graceful-shutdown.service into separate
disconnect and down services. Unfortunately, when upgrading from any
previous version that ships drbd-graceful-shutdown.service (9.26.0 up
to and including 9.34.0), the *old* package's prerm stops that service
during the upgrade. Its ExecStop runs "drbdsetup down all", which takes
down all DRBD resources on the live system in the middle of the package
upgrade. RPM-based systems are not affected.

Before upgrading drbd-utils on a Debian-based system, neutralize the
ExecStop with a runtime drop-in:

  mkdir -p /run/systemd/system/drbd-graceful-shutdown.service.d
  printf '[Service]\nExecStop=\n' >/run/systemd/system/drbd-graceful-shutdown.service.d/50-upgrade.conf
  systemctl daemon-reload
  # then upgrade drbd-utils

The drop-in lives in /run and is self-cleaning; it is gone after the
next reboot. The service got split into 2 separate services
(drbd-graceful-{down,disconnect}.service), so you can keep the override for
the old one till you reboot, you don't need to remove the file or reboot
immediately.

If you upgraded without this step and your resources went down,
"drbdadm up all" (or restarting linstor-satellite) brings them back up.

Please test, if we don't find any issues the final release will be about
a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/e1e02e77e6d068f626cef7c3998ed08b0fde7669
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.35.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.35.0
-----------
 * drbdadm,adjust: fix ordering to run del-peer after connect;
   avoids quorum-deadlocked resources when swapping a tiebreaker
 * drbdadm: fix segfaults and buffer overflows (config parser,
   adjust with proxy without path, "_unknown" options)
 * drbdadm,adjust: support dedicated proxy nodes; name proxy
   connections after DRBD node names
 * drbdadm: add dump-superblock command
 * drbdadm: skip diskless volumes when iterating "all"
 * drbdmeta: metadata conversion improvements: add convert-dump,
   re-create the bitmap on v09 to v08 conversion, refuse v07,
   restore-md handles changed bitmap slots/granularity and
   activity log geometry
 * drbdmeta: create-md: add UUID control options (v09);
   report by how much a file system is in the way
 * drbdmeta: resize: fix bitmap copy offset, fsync new metadata
   and zero the old region
 * drbdmeta: mark all out of sync when the AL was disabled at
   a crash; initialize the AL on restore-md
 * drbdmeta: add --quiet and --var-lib-drbd options
 * drbdmeta: various fixes: out-of-bounds read in apply-al,
   memory leaks, 64 bit shift, reject foreign bitmap granularity
 * drbdsetup: fix events2 --now blocking forever
 * drbdsetup: fix "sequence mismatch in netlink reply" race in
   wait-* commands
 * drbdsetup: handle ERR_PATH_COLLISION; hint at
   DRBD_GENL_RCVBUF_SZ on rcvbuf errors
 * drbdsetup: show resync suspension by parallel-resync limit
 * userspace: switch from genl_magic macros to YNL-generated
   netlink headers
 * libgenl: fix setsockopt sizes and unchecked realloc; no
   SO_RCVBUF warning without CAP_NET_ADMIN
 * SELinux: allow usermode helper transition to drbd_t, module
   loading on Oracle UEK, setpgid for Pacemaker; auto-label
   /var/lib/linstor.d/
 * drbdmon: major update: selection filters, bulk actions,
   export/import
 * drbdmon: faster, flicker-free display: only redraw changed
   screen regions, single write() per update, use the
   terminal's synchronized output; decode cursor keys in
   application cursor key mode
 * scripts: add drbd-fence-peer.sh fence-peer handler and
   find-resources-with-unrotated-uuids.sh
 * drbd-verify.py: report which files are affected by
   out-of-sync blocks; new JSON schema and --report modes
 * systemd: split drbd-graceful-shutdown into disconnect and
   down services
 * debian,spec: do not stop or restart units on upgrade; handle
   drbd-configured.target; debian compat 9 to 12
 * doc: new mailing list address; fix disk shipping procedure

--jW+NkgYhNkhZakdy
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmq9AsQACgkQRgmezyI6
myK+1QgAgXahQeJH8Csf66s2vZ25400AJG2lYLnLeLSzWwXTfLAWKJnUCkuEXRzm
KrtrfPWHoNWBnsvJFZs9C6pbjcetTrcnOIPsTgpKXFEpqVjtmxSfyRnJz09rRFRF
6BOlO0zjGi4nAdZCYmdLb7KmLf52vAeplbOT3fA/f52hNEKhBVZq37OtVJv8Ved2
NfSao3gly111qDckHuzwDh+BzWUGh2ljzluHohweC4q2f0s2cQBL06wAlaXzoAv0
6ehg93OlzPTwseSJOirXp5ArsIxTMBcyKf7YmPLrDD35TK10bRz8NyuhoBeheW6y
ABqNOLMGIzqs+/uGF7Svkr6pSiB4FA==
=hD89
-----END PGP SIGNATURE-----

--jW+NkgYhNkhZakdy--
