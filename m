Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECA9443C20
	for <drbd-announce@lists.linux.dev>; Fri, 11 Sep 2026 11:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789125143; cv=pass; b=c6PrHGfKE5L+IeZWWXY4Soz5V2TdQUDCzVuP8vDpXaQMmUNnfgceZiv2fRCEhLgENdEKvQ960oEBDi/AlrEPU2/8cYvfefe4hWxcH18BrIWlRNIirfzOjgYwr0UNOk322J0t9hD4EyV+eXxo7TDSUY4oWtkAj/c7P/K2tE7vEBo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789125143; c=relaxed/simple;
	bh=0uhc87UA3SmyMdtN/TMSLUR4WDjCVRMTzcOJwTT5ljI=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=YwZhhxdqWXQB4pTF+RL/DpFhit6qW5PbiJBKpj388qzRg6elR1B0MYQXpVoyQC6bedQugfaNsuEj11tsNcyx8aGPv9cMbT8GYEPYWVNK+Pqc0YsxWXkkJ05+w1f7LXIMO9ZP7NvFP1yYXps5B1tb/aUY7rMfEAc3dIOnJNidheA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=BPgI5V6h; arc=pass smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="BPgI5V6h"
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-486e70f2457so360721f8f.2
        for <drbd-announce@lists.linux.dev>; Fri, 11 Sep 2026 04:12:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789125130; cv=none;
        d=google.com; s=arc-20260327;
        b=O6i/Xpd5O7VDZlWZXJPtcau5lEqiL5ymJxLbAVgdkD3liADN0LAjErmZ9SKhEMXNyl
         WheufogM2c9XtB5VD2o+DLRSQSDmue4F/HYZA5uADQLLaiMvYQU8CwK+hYTbwtybtX0M
         LTknEDUAyF+LCzD1pFsCJ0OhEUZmsbwbjppn7QNxHysN/LcAup8srVbkkr6UmF+utctw
         zdtNLc2/FqVWck9Zl6DI43yJsfYT7Dbqe9VnWnM3t/Ui8AIXq8AxQA17pAvA6R115bZZ
         srlVXZW6fMGwF5tkbERuF4Ah3t6M9sJxO0FHOyqy8Bgx4mAeFdU14axr24xFO18PWepO
         14fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=6LbFRfWBB8q7lybAwrM13cAAOVf2Y/EEiMhDIku+Uno=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=n6Sa/qh1sKfenSX+h98bdyoXL6T3ugtzpbMNWF5LVtRPyIodfjSXz2dyZlN/PLwV1B
         lkTYmYHmYNp6esdLbM430UU018wSFn4lJA/r0lMzf/i6u2lko4C+nVDAzdyzA/2wxZk0
         XbYWybUmbcUrE4mhwgTl3DedhjSrDS1HkDDsASPdMr0jtHTr2cSs/lIH5dwoRImmW1i9
         WAVHUdqElCuOFWGxwS3KrwKM604ZqZN5meIgjtw8pQ+f0kTEz6PXFXhnZA9SSG/Qj6/s
         u3FUhuGYNNtdDc95PS82HWGmB54fNGC598L88Dc8ZjND9fB2qfsSIXy42YVLwGxZeGbJ
         DP2w==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1789125130; x=1789729930; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=6LbFRfWBB8q7lybAwrM13cAAOVf2Y/EEiMhDIku+Uno=;
        b=BPgI5V6hBxBfcix89LNZyl4T+yYBcmFPGLVwXTK7AK+vUjCzj5wOCMLRWL8jYKrmu7
         QUCIPIJG/twEsbiOELHPK5TXbBfGwV2ehhL9o1BQEJCkMhdORxHyi/l0K5mtriokUu2f
         Pcf6x6sV4U+wPksMely/PCG0yZ7MJM6LHVReAPRfVDB8dYpEegx08oxGzP4WaHz0u0Hl
         pd+ER+Sa6Iy4wUvAJq0JK68Dfng5fHfUN4xbHJA8YkiC4JDKv7d05lu1BJAcdgejKWiM
         S05u/zddJwxJP4F19MicgohS+RMqUPu3Df7QDvuBhjBx7dMBOdaS5R/lINWI6pKYi1Cf
         OKCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789125130; x=1789729930;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6LbFRfWBB8q7lybAwrM13cAAOVf2Y/EEiMhDIku+Uno=;
        b=JycMy9ekoKWS0XiZmeDwEtRej+YLU7wHwgP58TcJs5EFmfm+T2FM3dl2bKhF3Vl6um
         cCUyK6pU/a5891ivBhKAUObYTfpipyo4+XUgcIML1qmqS++s5+98Ntj3l1+z35eoWsfn
         8GiuQGqrkZT6CXwVc4SsQVnqc1UBqAWu/L+AGkeqL/SLlwqTk3GJN+Za2ZI9Zp+eOoCo
         KO3i1Ed6vQP/5VScf2/o/9EPj2648eRcBXzzNrEDe5dw2SVy2U5v5A5gjxj3w31zH0po
         GOtQ0DnvUOi2nZ2qagc1XLP1o4zyP5Vv0bu7Vvc9o+jyi+CZxhW1InX9ggRanJTb7+6W
         q7gg==
X-Gm-Message-State: AFuF++nkv+3YqUSblRutG8b7qZRKF/CrJioka9GaVOZewExjHV855Oeo
	ICzawNvQa33p4Aw9e7R8vEAFjldTlaI3+gTUhCATzDhqHFjDfDtsJvZQ0zeFK4519HIVVn9vIJu
	6YFo5umk6TYrkxxEsAU5teeMDrSjHKFTwWf6MCs1PtEJlOyYn2Gm1HyQ=
X-Gm-Gg: AYBFou3hdhXfbSk0kzGyu6cyrKWJCTdD+ZArXKHKiPZFz4kaeQjCDFjMRL/14Ln0b9M
	vmdrAxv6L++5Xtf8f2d19/cyEnw0Yu+2dqrGTawBVzWFlVcFnCjl0r6m52/Xyn9whg/tKELdwPn
	qIH1unKKp5fE+Lua8QRvgzC860nVY1P227chozGouVzDvNF9Jz6Nx201801ymkAfD4G3XJifdQe
	ZMmfPaNRo5gNlA7jcib858UbLW5+6OixjoN0JO3o2XUiJAkDH0kxK3iH4S9VF6DZS4Z0Ycbldsr
	AOPhpga/EnzGrVdxGDYP/oAi1LVz5MArJKRDOCo7hBC3ECoEERVIK8pr88iec0U2J1dHXaGRd8T
	6Ab1L292ZDX8=
X-Received: by 2002:a05:600c:34c2:b0:49c:fc6e:a3dc with SMTP id
 5b1f17b1804b1-49e619d87ecmr44879905e9.27.1789125130365; Fri, 11 Sep 2026
 04:12:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Moritz Tanner <moritz.tanner@linbit.com>
Date: Fri, 11 Sep 2026 13:11:59 +0200
X-Gm-Features: AcwNN1Up_HKoEyYou18HSrSOOuaHca2Wy4VSXPGlP7tOR_5EVNW1cdNOnO-lT5I
Message-ID: <CAKnz9xLrGPQGo9dgoZ2pH1YhaCQ=bCu1q5cwj8L2TA6mu__S-w@mail.gmail.com>
Subject: LINSTOR Operator 2.12.0-rc.2
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

We've just released the second release candidate for the next
Kubernetes Operator 2.12.0.

To recap, 2.12.0 brings support for shared storage: LVM storage pools
backed by storage shared between nodes, such as a SAN, can now be
registered using the new lvmPool.sharedSpace key, optionally relying on
an external lock manager like lvmlockd via lvmPool.externalLocking. The
Operator also handles TLS certificate rotation for Satellites and
Controller, no longer needs cluster-wide access to Secrets, drops the
deprecated csi-health-monitor sidecar, and raises the minimum supported
Kubernetes version to 1.30. See the rc.1 announcement for the details.

Since rc.1, we changed the fsGroupPolicy of the CSIDriver to "File".
Previously, Kubernetes only applied a Pod's fsGroup to ReadWriteOnce
volumes. It is now also applied to ReadWriteMany volumes in Filesystem
mode, which are served over NFS. Keep in mind that this changes the
ownership of all files on the NFS export when a Pod with fsGroup starts.
For large volumes, set fsGroupChangePolicy: OnRootMismatch in the Pod's
securityContext to skip the recursive ownership change if the root
directory already has the expected owner. [1]

LINSTOR 1.35.1 adds automatic database exports: by default, the
Controller exports its database once a day and keeps the last seven
exports. The Operator now mounts a writable emptyDir at /var/lib/linstor
in the Controller Pod so the export works with the read-only root
filesystem. Note that the exports live in the Pod and are gone once the
Pod is recreated. LINSTOR 1.35.1 also fixes resizing volumes in shared
storage pools with external locking, and a race between the block
device probe and udev.

LINSTOR CSI 1.13.1 restricts RWX block volumes without DRBD to the
storage and LUKS layers, as cache layers keep node-local data that other
nodes would never see. RWX block volumes on shared storage without DRBD
also skip the KubeVirt VM ownership check, so coordinating concurrent
access is left to the user.

The upgrade notes from rc.1 still apply: LINSTOR CSI 1.13 requires
LINSTOR 1.35 or newer, so if you run an external LINSTOR Controller,
upgrade it first. LINSTOR 1.35 also drops the unused access-control
tables from its database on upgrade, so a downgrade to an older LINSTOR
version is not possible afterwards.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.12.0-rc.2.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait
--version 2.12.0-rc.2

To get specific instructions to apply the update, check our users
guide[2].

Source code is, as always, available upstream[3].

Please help by testing this release!

Best regards,
Moritz

[1]: https://piraeus.io/docs/latest/upgrade/
[2]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[3]: https://github.com/piraeusdatastore/piraeus-operator

---

### Added

- Precompiled DRBD kernel module images for Red Hat Enterprise Linux
CoreOS 10.

### Changed

- Set `fsGroupPolicy: File` on the CSIDriver, so `fsGroup` is also
applied to `ReadWriteMany` volumes in `Filesystem` mode.
- Updated images:
    * LINSTOR 1.35.1
    * LINSTOR CSI 1.13.1

### Fixed

- Mount an `emptyDir` volume at `/var/lib/linstor` in the LINSTOR
Controller, so the periodic database export works with the read-only
root filesystem.
