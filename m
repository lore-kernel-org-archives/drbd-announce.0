Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B512367B9B
	for <drbd-announce@lists.linux.dev>; Tue,  4 Aug 2026 09:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785835713; cv=pass; b=pQqvSBanzitdPtjWabBOYWYkO5+QwkGahOOJZc0Zs+Tdd0K3rVFIOz3qKpyXS/xmwFxjHGmk42Gm5VTkY+kRKqX0/O+pMyfDpFSTgpVUua4LSzFLAphyXNxwZyLjmbC71xpHGwYN21HSOxCezAtIRzN/S6ScpK5Yg+NjDK2RD9g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785835713; c=relaxed/simple;
	bh=SO/62qPVGCPdc0gDqJjh0/1XvQ7f56tGaY+uXdMUnmE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=VEhJUU3GU268PfkLozheWvd6BRshftGPKAzb4iILXHeWZ7tjXj2PzzV4pFWHFO4D7+jQQtz2BvYNtyIcWQhITUTV26MR6SB7tVNU9tDXAmn8whBbvDh/HCX2EwrFFUNySrcYQZsTN4yl43uQy8zX4MzoSb35+3rvv8iIaCv4L3M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=D1I3m03Y; arc=pass smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="D1I3m03Y"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4957eefd361so21244275e9.1
        for <drbd-announce@lists.linux.dev>; Tue, 04 Aug 2026 02:28:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785835709; cv=none;
        d=google.com; s=arc-20260327;
        b=RU7NIKzspNhQdAFCbkBWfKv8Hl168gDSXFHCfYetcICeL6/c6CgR0e1/dUx3O1Pu/G
         MvqWFSog+3AqL+9ahmLJivaMr0SbamWidfn5iFSdeGfKT24cWVrMe6yKEr5oFSERlarX
         FGywlhL08eZDwg4O3JByPZdjPTR9ELM5jBLt/oBOfHwjCStdk4OUEN9N/5+nD9tFB8TY
         R8hRjh8il1Xx40CgmBN4YFGMp+jPcmzZAsS3MmEHMw+Pk9WztWAVfBDsvsTCfejTOeko
         MdxCBEzAE07xiIT4FLmsfrA7T4kD3UDgJKtT0EhHstUj5+W9m2YQSKt2QFTbjQslyp68
         CgBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Q7H4rbzfLKUbRrECCl4pRycanKfgzOoZArF7zZiwJRo=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=j+hHGSiwAzvD7GYYIA+83Ag44pb5ivKK317vci8ouskXOJaZKQUvs3GmIiajmBUozF
         AAeYIR4JAQy1FegIHS/RCJ/7ztWh62ygtRX4+SXYVFn2tVW/jfx34dqs9pdMcgNNplXJ
         ggu4kKy7lS9t4diZAT+aRo8j9OTL2sniTNHQeS+YKT7q+xwRdCbX1KcQBmxs9+3mOrIv
         DSArjaGQBpOzGWfkyui5NC9eiproaokViEy/nSZ3HyWfDF/gFI1pJBWSsvOzNwO4Z131
         q1LpUtLOZzw4/di67++Hjerho9IvA296N5dbvURgWKQYIo0mBlcFvEFH8ST1cDX7VHgY
         WGsA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1785835709; x=1786440509; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=Q7H4rbzfLKUbRrECCl4pRycanKfgzOoZArF7zZiwJRo=;
        b=D1I3m03Y+h72cZq+FM8DudN40ky3geJQGesV7meZ4rBRsWMEMZamOq7fdcPiGIK2rb
         +tG1M+LkqKQka7jzABmeFPGsIAmLDVsiq6xI2gaJ2C1XEoVxAqWIwZperB6RFI2jZnXt
         4uQbj4HAYtSYuRhwNu/egh4+6cLRmZi4eooJHFKIudVesdmwo8Aj0JcvJ1qPAVa6e03N
         9hEFUk3tg6r10LTQ04HFNfIpim5AM8Cnq2U6SucFh5e8maDCeafcsTpLmq1cb/Q7/6cV
         vx7lsJl1dHiFhsqAClSZgWmAjx+3QmLKguiLpzRkAN5I2zCkZSPd/MblWJA98ZiNdcBJ
         ImeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785835709; x=1786440509;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q7H4rbzfLKUbRrECCl4pRycanKfgzOoZArF7zZiwJRo=;
        b=LBnj8G8238VaS4BWT/qedabRqtmiQi/YcCJh1gWXCTJ6oOifnDWqFE5JlcIM+bZ6AT
         VUQe4pdAZGUHAZ31Ie/OuXL579A1T+VyKTqGx8duQM63pjw8w06oGxKMdlgD8b0w7ShW
         Z7w9VYyMHNekC5MgiC+nq4Nmfciy3J7gxl93D0f8b++06JE+StfabPG2Qfn8EOlQMMqD
         jhDqI5fM6h9KxXTXUgg0eKwXEkmqt+VGb+bGM/19J/OSwE3n0URXBHufgH06exReJpoS
         oe3AFNx/Y9Ko8rkTJMoCBo1zl59C3a2ykyJB4tCw3G/WN5sTZx/FO73VYOl6VE2bajU7
         f3Mw==
X-Gm-Message-State: AOJu0Yzk1Qdje4Aq4NeV1/2P1N4B7qYYZtFMOyUcUTr1ktiCTdryf7n6
	1AJtX0fCuScHr2lDUARxGUN6HsuPjCphMcZGhG/VO/GHiqnsmsHI2EjnKHm2iOEQZmID82ADobf
	3IurPDT39fDzkrIWFtjbM8L0tyJzg+e6A6V5+qsYtd885UnUHWW5DkPp8rLBi
X-Gm-Gg: AR+sD12IOSO1HJtVhcbT63EcS1H+KlqhviR+cQlIMjAWsLaY8Bfw65L6StFUSAg4Ty6
	9apE8yG4zamKxUSTG4RvRin3fac6QC/5ipzn1kld39nHMFp90FP5ifQ1jRRmEM5vh1yqZuoNs5m
	rxXIWrTW6R7ahkIGwyzs74ceA2NLBTEDi2jckrdFT3zi4u2jDIR8SZpwZ+uM0/qsLqi8zfOVFXi
	TXJGlrd0IHkQJ+Nkm7yh/SQMb2Wb28PUmlDw4NAMloTGamHB7WxU9BlCfIfWOmBtb9fI2v6ntJl
	hoD31DBq/KG6Y+cZuh8NwbUio8DS0Kmglp9/yoeerbPAF3c=
X-Received: by 2002:a05:600d:17:b0:495:3da3:beb with SMTP id
 5b1f17b1804b1-4980c653e94mr337661585e9.10.1785835709213; Tue, 04 Aug 2026
 02:28:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Moritz Tanner <moritz.tanner@linbit.com>
Date: Tue, 4 Aug 2026 11:28:18 +0200
X-Gm-Features: AUfX_myypCRwnP8308alm9ClyU0nfy7V5On3B7sjXHtKQC-XWgcwAU_idEcOe10
Message-ID: <CAKnz9xJzSn_qVK0zGwCOio2ROves=qEyP1cUoh-8X23AWxDujQ@mail.gmail.com>
Subject: LINSTOR Operator 2.11.0
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

We've just released the new feature release 2.11.0 of our Kubernetes Operator.

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

  https://charts.linstor.io/static/v2.11.0.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait
--version 2.11.0

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
    * LINSTOR 1.34.2
    * LINSTOR CSI 1.12.0
    * LINSTOR Affinity Controller 1.5.0
    * DRBD 9.3.3
    * DRBD Reactor 1.12.0

### Fixed

- Detection of Volume Group Snapshot API.
