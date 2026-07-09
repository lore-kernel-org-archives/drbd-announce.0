Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F12330D25
	for <drbd-announce@lists.linux.dev>; Thu,  9 Jul 2026 14:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783606863; cv=pass; b=sqphNt4SPd/G6qGnnriQAusVsOsuyOObiJ1BuFEFZyxmFxZELGi3ukIrmZBwkGrfpHXkJq8j0VDRGpwN9ebJgh/VNCiFL1Rtrkz1sS/bwt2jKyBkALhAKhJ0r454tEZfXCUC2rP/7Zg7SMK3U0ivAFXo//eUACqsUV+w2AXbSzM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783606863; c=relaxed/simple;
	bh=0ZDsI2rguovwNGPDypR7ZA6QOVvYAMIuJfcvC+BAuLw=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=JmyK+o0aOaftpE/xLgQAm3jeKbL6KxzXZD9J4wBndhIAKYN4rFQSmhwl/iYGLY1BMoZoKDhgpeL9O5Nkaymdb063DQYVS4tMo6mvkTjGWCK08YdrEvXS8EG6Nqxfm7rhFoqLVjxsM9l7w2dhgjm3l5lRrr1GrCNhazfl69p0V8c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=AJo+m3SF; arc=pass smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="AJo+m3SF"
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-475881b9a4bso1685943f8f.3
        for <drbd-announce@lists.linux.dev>; Thu, 09 Jul 2026 07:21:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783606859; cv=none;
        d=google.com; s=arc-20260327;
        b=qtDmVyZGAF1f2Q7gM3LyZ7zjCvLh7YtFOr4od6orIobXTsaJ4tyhLi8FBAZ3hss9Zr
         Zy1wVyb9J064kGRxrgc1N0MjdiJg6CmcrLarDfSmdZWYx/ZJe6CMvi5y4666EpFqMuiZ
         BwEtC3txShL7omZPoNClwb6blVOGdGM9SqWmv+tUXlbPcrwcLO/icaRgy+FIo1j88ohB
         3fN5jiIUjMl+ZDfIWb4IWFIWX0LknmRCRE10cs7EhuiBbpd5dRZM+vXVAfO3enYhQoAV
         LkfWYQB0UA/elJ7+lnFofQx+JlR35GU9MH1qSfxuhS3l2DiveYP4HqS5nxuU94zE4Rkl
         9BwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=0ZDsI2rguovwNGPDypR7ZA6QOVvYAMIuJfcvC+BAuLw=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=ExHHoWvDycc1USoh9LbXIEmgem5iFDl8EfOxBSYTIpDJes0DDsbpvBqSveQvth+lsD
         P9/+klRsia9D+L9GrrvBXGb3RlVDyfNnhK9epbM64qd6pCw9J2yFMjfeJ+C2hZusmxUC
         FLG7pbWAGsRfM4/In3YOVyMWy4/mtuZaUZGcGeiEIkw1VWWf2h3mkanhOj8yJW/+YO8g
         RnrZS8ER9XpKs7QOCd+INmLYaRoMNBPpH3sNNiiP3xquHquL4WNBpsch9MRyxGvY9DTw
         zxj6AKwMHrvWXfSVN41ebOydMyh7NulaNE5ducD8eKyOYLN7C44ktNcuMpgisJAAsIis
         5BAw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1783606859; x=1784211659; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=0ZDsI2rguovwNGPDypR7ZA6QOVvYAMIuJfcvC+BAuLw=;
        b=AJo+m3SF+LxcKB2h6jRyrPnLPS8BPke126AiyNJOu5vzTwbxy71CjytF/py8GFEJfJ
         S9PYIK9sHthlxQjT9y8KeRndubR0ZgqVx4KD4BIKxZuIOgsoy7Tv73xJxJ9V9is/B1H5
         M68DZSi2uIk8nZxsFwel+SD0tT02nn9JU9i5yRxw6RlY4V7kgxKNgEW1PSVU49c2JV1w
         TA6ulNYdDZG9x1VKbOAvo63HwYbrL5etZwDC9pGyTJ/DyXeFMGG7jsnDvFuZB1eNpy0k
         ZYkka21D4HAnTTG4Ed1lhuJasOzYUlOOPr9SF6hjksTkOtBUfntLocIgWG4XIdLCaiYA
         Defw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783606859; x=1784211659;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0ZDsI2rguovwNGPDypR7ZA6QOVvYAMIuJfcvC+BAuLw=;
        b=AQPeX09DRRJE3VsPpnkJnqoQa424thVBz3WvqDlFlUKD9d13WUoRNeJ+X43pR23ll1
         zDB/h655LZdEIb4nqPdtfn5KGPD4Iq+P4YHeZvWhgbkl5Bo7SetZ3NGWkHulDh40E0QM
         blnA6gAFXzmWRjOcRCTuiMjJRFom6pxAecawwUliwdKWN1R8e6jloh+/hczPPWt2BoMd
         SVTnKwGGtCzdHnIj0czQNbWwu7rLpKQExtfL1DVXBTAzDauTEneWZfBSzGEnnv2sCOJU
         y1wVWJMi5oUKOg7t2xb3T3bNV/eyN1iGArIKe4cDByviL2X2ZvPfigGw/q4XwzEAkFS8
         zOmA==
X-Gm-Message-State: AOJu0YwCSYMEL8R/Sf8uyKZMYOOW7uNGoz0rGS4tPk6d7SG/9rsRz0K2
	u2cP6WHk3ZOpHLf96Mub5TI/NgAcxI0+Y1iAqyOqa1oeMstZkVCLF7IDys0FulACmhKNMe9a14/
	PeT3/QLRMTMtd0GciXTRY9KK1KwM2KkrtPyDTyL7q9Ig7WuQykQQ6HU1MJQ==
X-Gm-Gg: AfdE7clT9R5b+d7wvLOJigqXTWo59f9Ll99Npr6ED+Z9CDPi9Jc+86B6z90ts2o0huz
	mDtrXObTIH4jj/VWL7VRZ0ffXDUXr2RV19+dP+vcNKD2MBPEvNANcFJU9Le3BWipwKSBmjPfWEt
	v9CR8Wc5+yeDOcNpLGHXShdcxwoaaXM1hbvxe0QL3ZRP/51qvK9A8skb0ihLFf5AxOY7Y9HlrZB
	mdhE+2e8ADH7vYRHKvILE7tUgrC2XKzvPmd4KtmuqDvTbXL0xSVekhQ+6BJWSAcXZHuBIqP
X-Received: by 2002:a5d:5f88:0:b0:475:2171:add with SMTP id
 ffacd0b85a97d-47df072e297mr8028012f8f.22.1783606859319; Thu, 09 Jul 2026
 07:20:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 9 Jul 2026 16:20:48 +0200
X-Gm-Features: AUfX_mysL9TSEr3NPSAGlRJY1aHj9ImwCXS_0ooQvfJmqq5qVkGXDYCLuQ-1gBk
Message-ID: <CAHmn2DNjuySqxscZcF6KjyE1HuPhHUw81Ehuzu=vzVsMXznoxA@mail.gmail.com>
Subject: linstor-server 1.34.1 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi!

Here are the first bug fixes for the 1.34 branch.

We fixed some shortcomings of the new AutoHTTPS feature, the
generated certificate now includes SubjectAlternativeName entries and
is automatically renewed on controller startup within 90 days of
expiry (new certificates are now valid for 5 years).

The external command I/O monitoring introduced in 1.34.0 got another
improvement: in addition to /proc/<pid>/io it now also watches the
block device statistics, so commands no longer time out during large
flush phases where the process itself doesn't report any I/O.

Resource creation on a setup that already violates the
resource-group's autoplacer settings (like --replicas-on-same) no
longer fails, and a tiebreaker will now ignore a violated
--replicas-on-same limitation, "place anywhere is better than
nowhere".

And finally there is a new controller property Logging/ArchiveAgeDays
to configure after how many days error-report log files are archived
and compressed (default 60, 0 disables archiving).

## [1.34.1] - 2026-07-09

### Added

- Controller property `Logging/ArchiveAgeDays` to configure the
minimum age in days after which error-report log files are archived
and compressed (default 60, 0 disables archiving, always whole
months); the value is also used by the satellites

### Changed

- SOS reports now include DRBD statistics (e.g. out-of-sync):
`drbdsetup status` and `drbdsetup events2` are collected with
`--statistics`, plus a new `drbd-status.json` from `drbdsetup status
--json`
- Improved trace logging of DevMgrRuns when creating/merging/deleting
core objects
- If resources already violate resource-group's autoplacer settings
(like --replicas-on-same), a tiebreaker ignores the violated
--replicas-on-same limitation. "Place anywhere is better than
nowhere".
- Extend ioProgressMode to additionally monitor
/sys/[dev/]block/<dev>/stat in addition to the old /proc/<pid>/io to
survive large flushes.

### Fixed

- Fixed ArrayIndexOutOfBoundsException in the file storage provider
when parsing `losetup` output, which broke the device manager whenever
a loop device was present
- Fixed AutoHTTPS certificate missing SubjectAlternativeName entries
- Fixed AutoHTTPS certificate never being renewed, now valid for 5
years and automatically renews at controller startup within 90 days of
expiry
- Fixed missing 3370 -> 3371 redirect for the /ui endpoint with
AutoHTTPS enabled
- Fixed manual resource creation no longer fails during a setup which
already violates resource-group's autoplacer settings (like
--replicas-on-same)
- Fixed controller package upgrade failing when `/var/lib/linstor` was
set immutable (`chattr +i`); the immutable flag is now cleared before
unpacking

https://pkg.linbit.com//downloads/linstor/linstor-server-1.34.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene
