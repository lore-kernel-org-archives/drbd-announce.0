Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F16E4B148B
	for <drbd-announce@lists.linux.dev>; Wed,  9 Sep 2026 10:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788951524; cv=pass; b=tx5C0V/Br64OErZdCxkC/AZlcmWk067XEs4QNi0jQyYtKomAtJ9sifjVJ9LFwEZQXAKJs42G0Sl2Oe9KFOzRwvLW1jIub5HrNVcusxbz81D/dhDtYiJvC05fhlbJdZvF7B/YEeGVjbANZF5U7+PloDWzs9hzrMG/je3sfm1KwjM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788951524; c=relaxed/simple;
	bh=Z1HOcxYeXK3DpWQff7Mqz1c2DofzCST9PYa2e14lfPo=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=NpC6M9cB+i1MVT2NcuTSgw3Xo37msRS21z+TfhskIa844LL95KtZFCjSRsChW7LaYqwsBBpBH+H2ogaH2HcqnQ+fgc28lN/ByvhB0rBXhOxLj73B8nuhyg/SvlRXIpmNHnQjkhjOEW1O1LukX+cKWCDXJsFKcACNBgIukx6hxNw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=uKjkRoGj; arc=pass smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="uKjkRoGj"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-498028b3d5eso54285035e9.1
        for <drbd-announce@lists.linux.dev>; Wed, 09 Sep 2026 03:58:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788951519; cv=none;
        d=google.com; s=arc-20260327;
        b=AUulAesJnrjTSCEaQ1x48c1dD4Oro474phUavbHs5FY8LPVW31OtU88tNRNkGK4MEn
         gpjqFzbwa8LH4tA1+CjrBy5oQwSAxnNjR2S6UYO9fRvsjPkkkRJNzBLXz90xp4fHx+Ik
         t16R/ZkpFCCXf4pmulfyH2eXApBR604GapH50I2aLCGPji47ucvDnhy9UR6nVQBDUKnf
         6GBvTXmFS42zvn3Rc6TNFKAMlVc3HIthBwXYbYayFAwQvZU3miz14Ua/40sJWSP3UM+8
         aBazOIQwQKi6342NFHKMdYpczddkbQ3Zsq5nylAyMjwCzfKvtX4zJYuFTLizjqFmjC1x
         55YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=DjRpKHCqt1ilA5N+H/eSEnSUGqVDhcrpAueujrRujyw=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=E2o+P5ADzUImLn/HZvHHzx40zkXLFZaxt5BR0OZv4erlGTrxgZ1k9YMGMNhDyvwvGM
         +kXWgLpNpvOYhxcuxYBR3ABvjoDE2LwX0baVCyXPAk+FLHeKQXBQB/t5mM/WbbPwGfpl
         kaRho6/ka/YsmP7T0DMGH/myxzjHP38kLfZ4Uum7yWrChdmdt0a3asJx8DfO0YUBCzrd
         tz/sD12KXwm0COeh2XOw9oT7VXhf5NXzESQh8ragEnVcbxIFXqbtyRRxRNUjZyGmvt+I
         vMynTjPq8BffAtThAeMH3m0S/p1DiT96aa0B2FukgWanHNfHSJ3smM/G5AzZVcxf3K8O
         UG/w==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1788951519; x=1789556319; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=DjRpKHCqt1ilA5N+H/eSEnSUGqVDhcrpAueujrRujyw=;
        b=uKjkRoGjtk3x+v1C1PfYAnR4Zecd7rApVkX44UCc0Hs1WzCsspnSQQQxFUW9PVdoVN
         +b2woi0KvglP2ZKTWHTQdx0YHNh0j7HJMq1fv19Lk9IQ37gk0K1musHWDRjKfHBpfwzD
         uZMtXdCIbiJaZR3pDeUGzMBImXufyzWyQL/DdY5fgy8hbeU6qFw0zyrOpz9KZgr6hh7m
         +pVNvYjamNvah7bXZXKtUcoK3mNZVhXWYuP91lA+U9+GH3hUqaNLO+bVkM3Tlqyouabu
         FfVkv8/g3IY86nwzD+OinSYvPUkR8E+HXI/dafZbpM/zlqE2Y4iJ962PBAbAAUcLVjQr
         R0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788951519; x=1789556319;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DjRpKHCqt1ilA5N+H/eSEnSUGqVDhcrpAueujrRujyw=;
        b=MIsCyJgF+ZVzfGqRSw2M/jfWWuU7fdESAUcd13Vl4XiGNJCSFlSAo1AFQjX/XxsSt1
         12lUwKPebaj7Nfy4KjUKVDUmRNpY1qR0KOtjVN410yL/Bsm6uHkcIYyDnyzP3bteA5Fa
         jN/u1qseWUDonu7TClTuVsyERiWFsQoi+dSbTuEPDvF22mETeqxdII8hcR1VXVi6Ce8B
         YPy4rYMcOleQxfTV4c0YRjqjMqDZTmO3IA2/0tNfNcgoSAT3N87BQ/aO1bZUrHp+URWt
         6+yhcf73VAv+Vo3BC1EyLuUor9M5FYRnO9gO4YyFRjW+2FpwClYyyOZvtjfTVaRwN3rt
         BkQA==
X-Gm-Message-State: AFuF++lrOgg8JcytwRS8iCzAZ9xBJ/RVOml+xBP3UL80CuWTnBjd1sWj
	9X5aenEiUBsH8HdYUYXvAL6ey6s4v3zI1yiuJyXLDYIufKsMrcCePxrzyiHMgFkGS0OGby4PFM7
	TFSDNyAgUdfaqTIGYpCzJgI4B+y4FEmuCrJbSogQjPCycw37SmJhf61s=
X-Gm-Gg: AYBFou05X5+ipRs9JuhAOjKmxhc0Bo2BmcZBPJ148NI9lYNtt6uL9z/3X33ko+awVs0
	cfSjnzoRauOGamPOgvuwc1VwtmM/RLmPMZmTG43zV53fbBZS4jyAwm8R442z8palrLm3LQlYap+
	/owkExWP8p6UaKa+V1ZeoYAEteuZGfpaxx1MxdheWecEe7Y1x0s0wKmN8GO4gpfbKAmkU1hMITM
	g5UxF1Lh353V704DGADFRqqvfygkboPSl5aFluXKUvE7H0AztpZ+TwD9nwKzGmlOQA9hPtN/h9e
	LqNRHBvlbx0inKIxDOmqK89RpkRDWK7OFe71mmqBqhF+O9zlCE9lC/k=
X-Received: by 2002:a05:600c:19d0:b0:49d:1840:4fd2 with SMTP id
 5b1f17b1804b1-49d18405074mr108554425e9.23.1788951518854; Wed, 09 Sep 2026
 03:58:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 9 Sep 2026 12:58:27 +0200
X-Gm-Features: AcwNN1V5XMAhX7SijxIEP6_K91BHLtibSia8leklPqwxSS4qU0gCunBaZplsqeU
Message-ID: <CAHmn2DO6OehnmKiwMs8GGtLQ+Z38uZbT1=_L6Ai7v4oxX6qtQg@mail.gmail.com>
Subject: linstor-server 1.35.1 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi!

Here are the first bug fixes for the 1.35 branch.

New in this release are automatic database exports: the controller
now exports its database once a day (default 4am) to /var/lib/linstor
and keeps the last 7 exports. The schedule, number of kept exports,
target path and compression can be configured via the new
AutoDbExport/* controller properties, set AutoDbExport/Cron to "off"
to disable the feature. Along with that `linstor-database export-db`
now compresses the export if the target file name ends with ".gz" and
`import-db` detects compressed exports automatically.

The import-db command also received a couple of fixes: it no longer
fails with a "Foreign Key violation" when the export lists a snapshot
definition before its resource definition, it now works against
non-empty databases and reports a useful error message instead of
"Unknown exception occurred".

Resizing a volume in a shared storage pool with external locking
(e.g. lvmlockd) was refused because of the wrong lock mode, this is
fixed now.

And the block device info probe no longer races with udev: the
temporary probe volume's device node is now awaited and the probe
retried, so storage pools no longer silently miss their min/opt I/O
size properties.

## [1.35.1] - 2026-09-09

### Added

- Added automatic database exports. Default: every day at 4am. Added
configuration properties:
  - "AutoDbExport/Cron": The cron when the auto-export should run.
Default: "0 4 * * *". Use "off" to disable feature
  - "AutoDbExport/Keep": How many exported database exports should be
kept. Default: 7
  - "AutoDbExport/Path": The path where the exported files should
land. Default: "/var/lib/linstor"
  - "AutoDbExport/Compress": True/False whether the export should be
compressed or not

### Changed

- "linstor-database export-db" compresses the export if the target
file name ends with ".gz"
- "linstor-database import-db" detects compressed exports
automatically

### Fixed

- Fixed resizing a volume in a shared storage pool with external
locking, refused because of the wrong lock mode.
- Fixed the block device info probe racing with udev: the temporary
probe volume's device node is now awaited and the probe retried, so
storage pools no longer silently miss their min/opt I/O size
properties.
- Fixed "import-db" failing with "Foreign Key violation" when the
export lists a SnapDfn before its RscDfn.
- Fixed "import-db" against non-empty databases.
- Fixed "import-db" reporting "Unknown exception occurred" instead of
a useful error message.
- Satellite creating error-reports for parsing null bitmap block-size
entries

https://pkg.linbit.com//downloads/linstor/linstor-server-1.35.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene
