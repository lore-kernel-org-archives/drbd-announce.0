Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A88377A85
	for <drbd-announce@lists.linux.dev>; Thu, 13 Aug 2026 15:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786636220; cv=pass; b=UQhDGFwLJLTJeVNLbBhMGET6NzP9Sw8fOiAEPR3EZ6rBuznuwlVIT/mTiVzTf9YHvrVbd/PCdKpLpi68DvAv9mygQQc2w8ViOPL8otjyv1l83uMt3H0C3RAi+/29yyFQKhW1T1JpeyvELAJtUA/d8+BIobF8pQxBqaxjk3m97YQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786636220; c=relaxed/simple;
	bh=jAzMUQ86+dEWM2cQwBI/O/UTx0jYAH9cqf27n4e8jPk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=RTLTbMCgbHGf5nqFPP8oMTQ7uAfhJDwaN3Z42n/CwDCUWlfRMhvvTbgMmAbY4AGJglvZg6uH9Hza4s7ww7aDZebzbV2CpGIPm5P3IGE66HzcX1IGjPmUzZNUs8+1u5WfcjKgrZUzMdj1t0Z+pw1a+2DrSUOB4PbKI3wm6mQ3Y1Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=oT9fyGZv; arc=pass smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="oT9fyGZv"
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4954a9e8490so6951245e9.1
        for <drbd-announce@lists.linux.dev>; Thu, 13 Aug 2026 08:50:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786636199; cv=none;
        d=google.com; s=arc-20260327;
        b=LqopG3CRK6Lbpjnvsp4JDFcf8jy3Pa+1GDY3xXZ3vDwp2WpTzLhIKCga6B/nU1C8Az
         iWLRXcEyRWKH6dsxbQPCkHvscc0cTJMUVVs7pQnk9S/oBTFvZKD+vAtv8Fz0z+ueHe/A
         Sjvx4CKXTWcICkOk4nigYkgd5F7jF4fEntxiRx9QUNJ6nWByG3xOneG+s1x9lo3ZCnU3
         FYFDTTnHm8LvxlRQ9miUcEQz0DbZO5eD1ibrVC1xnfc8KnixkbrtvHEQ8Bt3iRL4b/Y8
         W6qpXqJlXzPgGZPIDH9hNz3dNCUN7QbHFTaMbMI+HDqpFrRiR1ZrtUuX5O6ITSH4NZ8I
         xenw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=7xaj62zrG+WRXjg4rbkIq94QmK7Yqm6935OE3nXZvxY=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=a6GjGWGkiLC4Q+llkYWLUjnVrU36FujqECSpGTa4h1FnqynC1EYq7j25cw8x6D5s2k
         wNkF/cYzEKjQsSN9CfalVLuGC1qhHxGaDK5eDIh0t+J78A27hEuoPw4955IwpbyWboqZ
         BiwJiNVLeBzEyaLBDfg+Da/813IkRqra87EHkThWndjePa0KkH0oRzwHL6ISRU8Skd+e
         zNL5YBHcpmR4jiQwfHnJqMUuod2c49LrlhMJKAhCMacoqLCF7VmwcxAJxuNcmKMIPqDq
         7SQh+XA/UcccUI+R5fgyqHYhEZfa/9SiDsg3eoUZI6kCTcpMEwYHifcLw05zrgRs3ELV
         7h7g==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1786636199; x=1787240999; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=7xaj62zrG+WRXjg4rbkIq94QmK7Yqm6935OE3nXZvxY=;
        b=oT9fyGZvMYp96wpBoM/aEGgsC9S9TadJXNmoXqPPf9JRb53xJWOBXfieabTzDid6TQ
         KwaYYUQP45AraQK//mknbLW3Pe/SyGnd1FG5Mc1WTGQ9DBRF3/qiBTvnvX/WvAZTq1AD
         A1fyjxY9mJuiBinUJqyOonsqYjQpH5Z5ztWgqhdGpfOjWlAFuxmC/wOP74+mi6C5xPJT
         KepfPWlxo5D5NENMtfXhpdAT0+jFBLvat+peuzTEnKBFWA7kw4hSPhblfa7z0zgv6V26
         2wz+42BWF0xWeSUt+XioAAar0DODUTpsIbfwAuwf/NPUjoC1nIPzyyXfmu4p8yiBcgET
         v/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786636199; x=1787240999;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7xaj62zrG+WRXjg4rbkIq94QmK7Yqm6935OE3nXZvxY=;
        b=s7zE/Pg1ZJ0MneDxO8jXjGgDnLJZ7k0/vyJusDYNU6aD+BqaCU6BkqbpSyHwhFLdyn
         Cs0f5Lh1HGLwUvPIwxxUBDGzE+d6/TydbuBK6Dd+WUxeBJqocPmci7kPdNnEhPZp8quu
         2P+SKiFGRDRseZB1e67rTM1pQ/etOTYj9b5TZr+oFE8IDzmKIPogc02I631hicR+IqdS
         w/W8BkDoN5jjGTkkoQij9cfPHTAvUlW65yfkDGr8MmxJO0CG1d41Ii9Izf3+lSxyNqgH
         /BkAQ1IM9N/b7CBHHG519Qe64mpJ2hJlDy63FzQ5R+N/DoAHHsiNABa2sAeH88WZN2+C
         DAkw==
X-Gm-Message-State: AOJu0YxmBm8zJZIYneF4iQ2h2AN1FsilQIrCIMIjSwWoLKhpHfZMieHg
	W4Dv2zfFDebNOEs41fFjvuVvBKw0cPqQ07F45QnLr1ueJmkD4bpKyteg74yWZ0/NfiU7N/pN7v+
	YSPjkRKMKm6FGhTC+XdpH1wfzTPlAdwaKDPbtY2dYqKq9VWNcwdxJ6Vg=
X-Gm-Gg: AR+sD11Z8cmHaxL49k7mr3IiLtj+iQW21zhazQ19kfJpT3emruEi1p+8TkAZXqu7n0n
	FbbODAErhVvOItneN9Ra8twYu1LQMRC2yEDFvGRkVpZ+J4UR6E7uOg31PWhmCPnX1KKmKXlh8db
	4tvDyiclj+FBehrsL+imFcoybM7WJWj5n1lz6zSR+iFvTNo5jkyVVU0QQYgGKocojVJZhaExJax
	ACp5A/dh/YQa37e7tZAF2BZPye7zuYkROofUZVjUYKDolk3/XQxe3cgqpJtvrBH8wQGLEsdypQz
	g9VKsFGM8fl8i7BqzDF+VqF948BLie0WugmXZf/e9PFVZw==
X-Received: by 2002:a05:600c:c87:b0:499:810b:6f57 with SMTP id
 5b1f17b1804b1-49982200fa5mr66756935e9.4.1786636198884; Thu, 13 Aug 2026
 08:49:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 13 Aug 2026 17:49:48 +0200
X-Gm-Features: AUfX_mzE335-kJTvHx1gUPZf4Ivje_rUROIIO58Pmnd1ymztwL7oMF9rObi-J0s
Message-ID: <CAHmn2DOO0cQXPO_bFwnw4+18TLOrQttPpiCdPWcP7N7EvMHKwA@mail.gmail.com>
Subject: python-linstor/linstor-client 1.29.0 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi!

This new release learned the new resource-definition truncate arguments and
also the new make-available --auto-manage-dual-primary option.


# linstor-client
## [1.29.0] - 2026-08-13

### Added

- "resource-definition truncate" deletes all resources of a resource
definition without deleting the resource definition itself or its
snapshots; with --delete-empty-resource-definition the resource
definition is deleted as well if it has no snapshots
- "snapshot delete" gained --delete-empty-resource-definition to also
delete the resource definition when it has neither resources nor
snapshots left after the deletion
- resource make-available: new option --auto-manage-dual-primary
preparing a resource for a live migration to the given node
- New command "resource unmake-available" reverting a make-available
on the migration source node after a live migration

### Changed

- "file modify" now resolves the editor like systemd: honor $EDITOR,
then $VISUAL, then fall back to editor, nano, vim and vi in that order

https://pkg.linbit.com//downloads/linstor/linstor_client-1.29.0.tar.gz

# python-linstor
## [1.29.0] - 2026-08-13

### Added

- `resource_dfn_truncate()` to delete all resources of a resource
definition ("truncate")
  without touching the resource definition or its snapshots, with an
optional `delete_empty`
  parameter that additionally deletes the resource definition when it
has no snapshots
- `delete_empty_resource_definition` parameter to `snapshot_delete()`
that additionally deletes
  the resource definition when it has neither resources nor snapshots
left after the deletion
- resource_make_available: new `auto_manage_dual_primary` parameter
preparing a resource for a live
  migration (REST 1.29.0)
- New method resource_unmake_available reverting a make-available on
the migration source node
  (REST 1.29.0)

https://pkg.linbit.com//downloads/linstor/python_linstor-1.29.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene
