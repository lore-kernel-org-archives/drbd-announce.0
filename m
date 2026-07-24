Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CBB348C6B
	for <drbd-announce@lists.linux.dev>; Fri, 24 Jul 2026 10:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784887478; cv=pass; b=b9LZ5h9om4yUb0Td9eqzdoJiCZ/vqtW82ALrb+tzJRUmOdszNNh4vAhLOVyTskuxcca2Kh0UTQo5PpKfd75bv/KdRe8/NPFueCti6yrPBMhWJGAGTv/dLwvDkxux9QCIjLNTEyzyxUambK1ofTtjvMP3RkpbgXw8yTZ7n4Gsbw8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784887478; c=relaxed/simple;
	bh=Y+TcSDQAcRpl9TPf9uV/SzLmcVA6WgWcntaWZ/OvBfM=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=C6YHejB4QY/NxXpLVPOTI9wdPnnoRJxoToI147rXDF4Ts92X4iZ274ZHAStlOr7rvU4Qk1qivev4rZI2Zo97xdZFOaKlL1VXbRcZsqFG1meyIFpprD4Pxy02Xw/Qg4pIUriXimvsZm8MqnklURul0cOlYOFAfvJLfOl+CeBPakQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=AEZksW5Y; arc=pass smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="AEZksW5Y"
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-495757ccbc1so2556335e9.2
        for <drbd-announce@lists.linux.dev>; Fri, 24 Jul 2026 03:04:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784887474; cv=none;
        d=google.com; s=arc-20260327;
        b=R4jtsX73XbPc7kDHSihwjMw9zqACg2Pv8oIpxAv8hKhIxyTze0yZUm+00kYUEvlhjH
         JD+EQfxODA6MKp3ZkEHrDNf+68QBDBT22MCM7L6MFSO087DAwmY8yYYjhJewAq99EPVZ
         4eKhbxlQFZnEn8Go+JAe2loC/d4XJ2t4pv4Td2qv7CPb2z7zlfxaVpWg9GIPYwj+iNf3
         WXB0o/i27Ctx/eGDSjxulwtDz/SMZZSjuNH+ncUyWT/JKNNoG+yW7hVwhBmHCy13dRH/
         bgQydFQlhK33EqvkJckGHievGLU8paf5QwQgw2zyvpxEm0RjX3X1g7FXQU8WXw+Tcnf9
         Du4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ku6e4PxTAHWJJ6T1Q8yrXmFGYU1lZuSlXbxbtY4dX/I=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=KFl4mqBDlYmeJZTLAD3u5EI0CEnHLl9HGDEhkPNZyY8ZPMSxWD9eGQ5Vgr6LYHlpOU
         IERv/3UFw9QulYlby+p/uPftf7VjI3HbYw+i443FqVqQJ6FhAwbBT/TxpRIXhR9TfEi2
         hHFupltYuYrI43x97aB+f2QgnuLwN18LurUMPK97FEE4GfXpo14v283uCj1ic4nVcnmt
         dCHWPfCi8qE0pHKIf4vpo80ltzjWIDQBNDhgraqfOYuM9VhFomVNnFdr7+xH7GrGGvQB
         h0kltXo62FCVelJncppiwVQTpGI2u7oFL5Ldz9Vxcz63RE76Vcyn6wTpWieYYX73b+N9
         6AWw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1784887474; x=1785492274; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=ku6e4PxTAHWJJ6T1Q8yrXmFGYU1lZuSlXbxbtY4dX/I=;
        b=AEZksW5YcvR5mbgBfQvqjqfc0Ig/icek378fG0P4d7o03mA5+daoZo7dluX+TzBN5U
         +KrGZ/LS2AqwJGZUJcmLtXbbxxbHaAJkH7LW5e+U2MAaLQEWoI9AbjVZ4GOFEgukiTLK
         fSen36sVtUb7PkznKhgNjnDO7F7Jg26rFn7HlR5tV9GbF85y9w+a2VPKYweA85BxRPL6
         58BVB92ItosagctCnTP/VSmG3v+rFZgadp+oOvplrukeFUg4iby8g05xC8HYA6IVOqwO
         qcZ3qGhf41ichv+cxOQ1Cq+KZC5dcGZ1WPbidWUL9NJ+CiyPI0G58VCpZLXH3uAmcfVf
         dcyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784887474; x=1785492274;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ku6e4PxTAHWJJ6T1Q8yrXmFGYU1lZuSlXbxbtY4dX/I=;
        b=Vs8Vj46vxJdMfPmd1BW/beBX4mDYq0ZLOCl+S1ZoKsnnlhsVVJVQZepy2v74uR9jm4
         OW+XdzN31ck/7PsCATzeJkCJQre0ALgnCbgmuEU5JaD1Jrw/KV84u4b3V99LBUn8rvv5
         Doo7LiQsxtEFqr20BvHxfpBLCTiYkZ/7C8clHjDogv7XiQhmiA4mj7c2rfO+YXycz3Jw
         q+ivZObmfq5PkIQdsrhlttZ2F504jRgqbnNp6qUCgKhIqZjJyALDJ0FUzM/h8iExqRTT
         jQv7ww89HMluI1nBKXpS2z4/Oi20EZddTAFGv+bhBZh2dzor8hUBJlnr3FbgAQnft7KU
         /HCQ==
X-Gm-Message-State: AOJu0YwFIBeLC31jbbf25extq+0aZG7N73vsWeO5XhofALgqOldJEJQq
	Nnwel/kn4mlsaOYGJXvttKV9HWCo7v2CzVjiq75TA83A1pobcKDEwpW3gAwkGAmFiq/khHFZWFb
	QqFmcw3A5voUxLHYcdKwI2nj5OYTQ4PhFiDDtpDn0f8nhzrlyDsBr/W7ghw==
X-Gm-Gg: AR+sD123+1AWpUlaWoRMVN415m3iMKsrjYA3qCbakDq/duy++govItNHhZQGOCZ3ekF
	DI7MPxxmTcvo2JTMwkXr/CrSfx3yw6Js3eRnzaYYUAfubPgX5eypidmPoMRP8dgI75+Xj77bprC
	EhlbfUUbBB8pxMsqQbr5xDl075HSBaWM0f/+nLkC2AmyFw0sZuTILT4OGhFsv0w0LzjIvNvHDZE
	mReClXtYXos2j5KnMFfaKfa636QbJu0T4g9iv5z5jDKnjCiK263EgDu4rZ9qk1rW9SIN7ohVg==
X-Received: by 2002:a05:600c:35d0:b0:493:e79e:da63 with SMTP id
 5b1f17b1804b1-49573d13720mr72116715e9.34.1784887474268; Fri, 24 Jul 2026
 03:04:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Moritz Tanner <moritz.tanner@linbit.com>
Date: Fri, 24 Jul 2026 12:04:22 +0200
X-Gm-Features: AUfX_mxjm6kZ4mODsMIFdgmsK_hKCkbqn_ZDcKLMNaOPQYJ0G8Gbqon4deGSr4Q
Message-ID: <CAKnz9xK_sR=4mFSUuC0LnSLryZ8JodFd=yStwU_kqh4hBDaMRQ@mail.gmail.com>
Subject: LINSTOR Operator 2.11.0-rc.1
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

We've just released a release candidate for the next Kubernetes Operator 2.11.0.

It contains a number of improvements that warrant a longer release
phase for testing.

The Operator itself gained support for limiting the number of
concurrent evacuations using the new
LinstorCluster.spec.maxConcurrentEvacuations key. It also now allows
passing arguments to lvcreate, zpool create, etc... on storage pool
creation.

On the new component feature front, we have added support for
consistency groups in volumes. This ensures that in the event of node
failures, a workload using multiple volumes at once sees a consistent
state of the data on the new host after failover. [1]

We also implemented optional Quality of Service settings for volumes.
These require an NRI plugin that enforces the necessary limits on Pod
startup. [2]

We also have the usual round of improvements and bug fixes by updating
our components. LINSTOR itself should be faster to start up on first
deployment. LINSTOR CSI should be more robust when validating RWX
modes, along with the usual dependency updates.

We have also updated the DRBD release to 9.3.3, making this the first
release using the 9.3 branch. This means we will no longer support
RHEL7 and clones for our Operator going forward.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.11.0-rc.1.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait
--version 2.11.0-rc.1

To get specific instructions to apply the update, check our users guide[3].

Source code is, as always, available upstream[4].

Please help by testing this release!

Best regards,
Moritz

[1]: https://piraeus.io/docs/stable/how-to/consistency-groups/
[2]: https://piraeus.io/docs/stable/how-to/volume-qos/
[3]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[4]: https://github.com/piraeusdatastore/piraeus-operator

---

### Added

- Allow configuring the separator between generated Satellite resource
names and the Satellite name.
- Add `LinstorCluster.spec.maxConcurrentEvacuations` to limit how many
Satellites are evacuated at the same time, for both direct and
ClusterAPI-driven node removals.
- Enable consistency groups in LINSTOR CSI: PersistentVolumeClaims
sharing a `linstor.csi.linbit.com/consistency-group` label are placed
as separate volumes of one LINSTOR resource, ensuring a fail-over node
always sees a consistent view across the whole set of volumes.

### Changed

- Updated images:
    * LINSTOR 1.34.1
    * LINSTOR CSI 1.12.0
    * LINSTOR Affinity Controller 1.5.0
    * DRBD 9.3.3
    * DRBD Reactor 1.12.0
