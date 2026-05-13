Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCC0280018
	for <drbd-announce@lists.linux.dev>; Wed, 13 May 2026 13:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778677668; cv=pass; b=RCN6L/pPHZogL8lgBY1c6w+CDd/w96LlyNOz7c6vnp+1Nwd8zx/437uK7h65ILh7V/zMzOwvyb4TQ6n5/BiIvl7iotDf9f6fi2NzAfMimZJNkH1j/pDO/U5I9RQMJVxMb7eFztY9F0Ju/ImgAq6dQeBGw0BUFRIMOd31JocRybU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778677668; c=relaxed/simple;
	bh=BAGRxLBrqE03UUoPDhEuY6c6DeYr0VRM1nQ9oLMY1Qs=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=nxqXySUvHo0ZT1Zz+Z2jIGyQUJMHZW7OCk3xnbcbe1T+3lvlkv9X4NNCXJWEhf7cUDM9I0uMlyMSqH7H+iMg968lTPjvzN/HNz6a+vOq+mIZn0VME4XqiNwNZ8DUvz6B4h/9EUaEzIgoGz/SulN4h3T/J2zlasSnzJd1HaPbt9I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=cDCP22jv; arc=pass smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="cDCP22jv"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4896c22fcbaso59337875e9.0
        for <drbd-announce@lists.linux.dev>; Wed, 13 May 2026 06:07:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778677665; cv=none;
        d=google.com; s=arc-20240605;
        b=Mpl4YzUSRjCvHpMzecGmhKVKvlqmaHSYh4aQMsamvf+yzKvApOKzI4lLijNzq8Aho0
         VphQSnLmf48DJygosv3fh808XHnOS55nR+zH+i1ZPT3he5O53849Wi2XifZehBsaKrea
         IMo8hzLV5Pqr5aG//Nz2HE/FBuRwc/TNhoynWI66l9kwNoz60UFxZqtR7ouS8y5RMlJn
         XLUQjZnlFY6QabHKeIyzJJXBkHM1c4Wrx7p7qJYXz8iTOzV0l4Czj7xwhgiSexLPcEGh
         wUmYlOxI2/wnSC/KPmBqIBak/0M9S5C1Do51rt606HwHWkQmIJ4oE5066xOMzJa7PgIK
         retg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=YD7JPYgK9n+BIR+ZGzMl9OBRMei7AK3jtsQDDSDrAa4=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=MhZu2UF/Ansvf2Nzn8gMMyqsWj7oBlF7Uhz029E0O0JlBOL+YYz3YOHJQga55DGL6o
         qps6f2VOqsaeeC03/oxfdzMBTnZndw0BGXUy7CtlNXRX7C7Csytl5kbE1z+7aqN137IK
         +TTmU6wFbChF7/YkyWjQv3F6zCbo4UPvAY/QAxAdvMjcQWrsy61uI0OKp8GwRaIvV+VU
         wuw6kYYYGN/SJIXR7h9UDf7URAg+KuZ2zYt7mz2ppTfxF4qNf38kSMVxs6FDOWm5cFpU
         WDUTSiCPnZfn50NVgnHUXQ62KMHNlyB6Os81t/MxsU5StdHw0ECnvu8UTS51vMwSw1Lf
         5QNA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1778677665; x=1779282465; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YD7JPYgK9n+BIR+ZGzMl9OBRMei7AK3jtsQDDSDrAa4=;
        b=cDCP22jvebJgn6gUHx6xjIPDV37XF/vvv/E292vdoyGQli/plW+C+sK2NknjcwpkPi
         O+As/aMMdjK3yIexz3RjF0vH7ft24vp8s4zaJEeqyH/d3llu/AhkEVqYCL+RMS6GrceQ
         QMO3d/pIwgF/nZuc0ZSeU/2ct6LGT6FrY2Pj5OiHUeY4UBgtX0o3lP+GC0+Ll5V241vv
         xcx7VD4PFajxQcgNQIHoXsjZE/UXGEJzpJr3Jw98zlMY7jYjGZAKp9GcWIM++Zs12cTG
         3amGuTv4meMtyIwngJ04PIQuucQtC/lgdPqUBnZ+YRQRw9D+a7b2WHwK/jYqddj1+W2I
         9j7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778677665; x=1779282465;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YD7JPYgK9n+BIR+ZGzMl9OBRMei7AK3jtsQDDSDrAa4=;
        b=hw2LmflCQC0jlO9kUfJQXcyCW071KaqjJmANidA3wb1psSxgcUA/VkLXhD5uFOstR6
         9lOhG6ZvM/h3lUn1+bnOl3FUyNUU10QX1tqEY6Fc9BDdK1FvGWlXbzYbn8Of8Xd+YTO7
         M3QMav3EexTV+BIRZfPWplXBa8Wf+prnbUN2CRGNkjNj9sjf8pmCUjomdpwC5b6YLKqu
         BFG7bStppcG0OoNvaNAm8hrItUaVusdJgCYAFBCKLZYvJt80YjWPeijnEIE/RjTdPiqw
         n7opDOpt+bVhCS5LlffhYfBJM8Z9MiCL9tiBKFN/kp+MOmCTPk6kHE9qNXF4B3Xwaqws
         M9ww==
X-Gm-Message-State: AOJu0YwmEBZS9vbqXoh96eJ/VPQEV1Tzj6ZzygKfh583G4T7TRS+x2R0
	VPexFO0n18IKpJjRc0o8jvoHVT+59JMlvZ6ttdMxnpu4XIOx8k0LbOuuRysVbzCL2ryiRBruZgF
	5bpQQTQHMhKixfMRevVjlLrlj9IrhL8sX9bkrOg5fd9WLIsuey3mOYX2DGA==
X-Gm-Gg: Acq92OEky4hN+75kc3Cj7sWXKOu9yKDPtfzCXhWmdOn/9gJd3GJ9QxdmwHKbAG+WW//
	fUDtGarRQJS9NWoTxhBZvvZOgxykx9X5rcy41VUQZKvsLCtU/342vvXcq9tMeT4p81AKOF+os/g
	c+G3gy0NvgwoK9bGdFEvJbYRH+StXAnoZTyoMN6YbIlMOQWuD2T+OSWoqzTVfXiDnrLuPSOkwhB
	1/p5g9GnXDuuNhovNS/0xaEHIFT+FW+JnNqKZq1r/O7NEJduPJpPaezKho0x4MLSbRTVdnV+5I8
	isWJV2E=
X-Received: by 2002:a05:600c:1547:b0:489:1c2d:211e with SMTP id
 5b1f17b1804b1-48fc9a0289amr45127965e9.5.1778677664696; Wed, 13 May 2026
 06:07:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Moritz Tanner <moritz.wanzenboeck@linbit.com>
Date: Wed, 13 May 2026 15:07:32 +0200
X-Gm-Features: AVHnY4K0-8HTvaBXb2K0TaJ48utTPxGvQWle4p34y1sR-EJdTI3a54ufbzk0-lo
Message-ID: <CAKnz9xJp2ypA-1mjAz=YPCX==iLaiC-AMY-hQv-aq+3b7EPvgg@mail.gmail.com>
Subject: LINSTOR Operator 2.10.7
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

We've just released another bug fix for our Kubernetes Operator.

This patch release fixes an issue with node evacuation: namely that it
did not work since switching to LINSTOR 1.33+. This has now been
fixed. We also took the time to improve calculation of the status
output and better behaviour when TLS certificates are rotated.

We recommend all users of release 2.10.x to update to this latest release.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.10.7.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait

To get specific instructions to apply the update, check our users guide[1].

Source code is, as always, available upstream[2].

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator

---
### Added

- Add a cache for reporting `LinstorCluster` and `LinstorSatellite`
status to reduce load on LINSTOR.

### Changed

- Updated images:
    * LINSTOR 1.33.3
    * LINSTOR CSI 1.11.2
    * LINSTOR Affinity Controller 1.4.1
- Enable automatic certificate rotation for LINSTOR CSI and LINSTOR
Affinity Controller.

### Fixed

- Node evacuation no longer hangs, generating error reports in LINSTOR
1.33+ in a loop.
