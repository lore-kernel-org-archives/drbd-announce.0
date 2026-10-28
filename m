Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.221.53
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793194024;
	b=qnY5nGMgFrCQviqV8NX9CZPH03AjpVPKs81Wbwkk9QMMH2PVusqxvGL8fRXsCYWTtOgY
	 3G6rEFh0LVe4WuTs5eagRXH1fWBz/FUHtmdoCjYaGW+PyHpy7RXUjjGCvdmF/r+eZCy8R
	 8Ti8yhGk8dU2KyGyZ+ohxEBRc9rZO0J4Qu3iLXP4WslAeLWscvut4JeZI5C+9vUoYwUVu
	 d0Ev4cl9j5cZ2LHfdMns66+BW2XyPwNt7u4Q4nz1UnCIYcEvG8ofiInnXJqbaKMfvTvLK
	 vj9HIQcBBL8uBeDfxTd0pymO7AK/7f+mrcKhjgJJW+sKhEicRSGnEphTq9DakjsyN8A==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793194024;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:From:Date:
	 X-Gm-Features:Message-ID:Subject:To:Content-Type;
	bh=aIjujNZO+DaDx5UtJkmx8LMKjL6ptfFx5qA8VZbx/QQ=;
	b=KIEjMl/SO+eKSjQDGU5bGII89c/ERYcKgYIXAoh/VJJUmbn6saG72LtfPN+F2AHh7GmV
	 t5nywOvDKY0PEVNQ6YpZgLw9/GpVmT7hymPPA3SZj/piHLMHbXiH2ehS+mJYM/Y65iLOP
	 8tnVCQ2bt6PQ62c2B5Ec+KZE6CJw/4BI8gyNS5VkM4Xc1krJU5VlpsBNZAYcCcHhdPbP7
	 xjt5nUciMthsl+JIWmXcuzox9P0hUbvf+XpVZI9rO+D52/xJaxMlIEJe6+zfgVyfDEU9v
	 9GnOna6D4riAnAzBOMK1ngr5Y6i96YUyw1jhwFF2faZ/52pZILQ3EXA/N9dqRRv8i9g==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=FL2emuC2;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.221.53
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9A5606A33E
	for <drbd-announce@lists.linux.dev>; Wed, 28 Oct 2026 13:27:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 2D9A5606A33E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=FL2emuC2
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-48df4e9d2d4so579994f8f.3
        for <drbd-announce@lists.linux.dev>; Wed, 28 Oct 2026 06:27:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793194021; cv=none;
        d=google.com; s=arc-20260327;
        b=WDb+9YbDwlfwG4WBCDNalYI+LCEZb7+2uYivWPeujoWnm3YMMpuVZOmnigZvJ/dpnb
         1iO6/rD5+bGEWQ47XAiaaNGM5HY4MybELVcQ+yJguIMpPpmgYb4+OqPo/1XMmTrTo4gt
         QJdpzFIqMei8s2S/qFL1iKaGf8NK22/2UtTTuS+P0fMQhnhlEMWjFfu0VaD6hoA7JJia
         dgizPwMzv9QpyuM+IpRE+GL5BKe2b2cwNPht3faLbxtudP+R2VdPFdYhkAcLwYTBJh10
         8KbPP9Nl5zbkJml63VDEjRGjwEXOheATOAGZLgqikXAPi+heGx0iJ5k8m/QOy74Q6jcy
         TFVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=aIjujNZO+DaDx5UtJkmx8LMKjL6ptfFx5qA8VZbx/QQ=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=dgKP4Ylr4cONRiOJ6MSAUuWSznYCJMI8wGMhAlrQfhQGkkZNyGfpQr0IaXXKdZmP/w
         6ud0qYzelYz2UIuZOb+IQ3kGP9AOHmaXXKBlDXfJJznBszIpyK4Nh5fojIBt+lM5pJnu
         2xENuZ6HtaoL0g+w+XqOsO90KjxQEKwb0T+8mYqvNV9+Njz7T3sEiFlrurr2yNO/zgI+
         hj6eoaRnwpxit4iQ3IFdNsumQcpZV5tFahDYumgqOGUoEqLhehyFuaYZv9sAAJ+DRNTQ
         z1nt3Rc5xlR/DpFFGNVM9fu+iCLUHdFiEsXPQ1ipNM3Bp1iSa2Vp4jerA4fc3QdkEFXt
         EjOQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1793194021; x=1793798821; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=aIjujNZO+DaDx5UtJkmx8LMKjL6ptfFx5qA8VZbx/QQ=;
        b=FL2emuC2ghhYiT5qkZ7NBeG1oVG2KmKNIDWdS+cbRUKl95h6pMcvUeQNonFK0Dph8p
         7jGXhruRqXwHabYYjd7dqmwPjc61f/zDBpPQY2iDUUF81g0Okujkog8spf19h4W+W42o
         4HCkj5uCLhGHX5VaQYodGgbFMSfiNH2DFvsr3FV2mwjnzxBR+Ud2secn1RFNeKjzdbQj
         5pNBkmY2ktMz7wfzxxAF01+fmvUzOh6TEqp8jky4UUVzKuUzW1k7IZMV0luEx4pUI8KG
         Xy6EwCihinukI3dwuppr5HmehBg+dDv8LkeuStM7a2K+LrcVDXQ9RK3MiVHyRTDIRoJF
         Z3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793194021; x=1793798821;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aIjujNZO+DaDx5UtJkmx8LMKjL6ptfFx5qA8VZbx/QQ=;
        b=Knt7BljPi4qQy1ls1HPLuI/hRC+2UwjnsW08fiMG7RiYZ8sm7gn6Qbl1TJpegSVeCt
         Itdand8g5hJOeBsUCvT7csc3xjVACvclA8WcPjuoaqJ4bSmAcE/TtILooUZjamoqs/+v
         5SxroD6PcKrSzZtjoaeu4mk6ja7OXVaqMVRtAJbnUBZrKNpRnqgKQP5fioz2u2BtBsgw
         lbjrCDRcg1mJ+8Gf7+ssKY8gGrxao4IeygpttiaM93x11gvkxG4ZK5fgnfXuqrOO4Uyu
         yFGTEydEVNvHTOeFN7k28GR0KfXLcn/AMmc4o7PMgkdyeax+SUafcEmbCeEPnfQrCroH
         Arig==
X-Gm-Message-State: AFq9FYIzxLHW5Ffah+EiSZMLzW9ah7HkbZRC8wgx1VlFhUkIaYMAFfVY
	4lxZ9cD8Lx4sT0oTaQyOEX78rK2aUHP4m9xVjCOhhwkSS83GupppGOtI0JirlTlCHUXNV0Lfxin
	qXx05XWsmd+x8AI0PfjALuCirWolz3ziWYucTcYGnYyy/e5Vrxft7Wn22BA==
X-Gm-Gg: AYBFou0KMtO/wH9Axv3/awh7Endwfpw5QQwMKwukkI5Z1SeGXNYSmBdZb6Y/a0qkpH3
	4l6B0td0lnHCTtPKVxFBUSVpMUC1ijtCVyrI3/cApQn78l0lMh6NEqH1kEUn8n43+Qei7hdbY2I
	Yq/52DQjvU25HoDM5d3yuOGuxEHKG0WDzqsw8S0kiuIOq6RDl4PzHcWHM1bDphOdtnKHbKIpppR
	mE/6TAPW7HkdyvgXWEyp7eo0Lm95ds64KgOTWRxDXVDFBvN0T4uDUcq2m38oCVdODF2qZls/3vC
	kp7ymJ6lsHpRRtJby134U/f71TmtSm/GBET3CsJZ4KAphpPJs83rYirUCTlO1M9ucdz5u1iBVDw
	LIkwOjzbcx5h7CBN4Au2zwLqaXkYwk8fE5NEwXRyeXwrcrABScfhnGaRrMbLt92qixpWeDd8=
X-Received: by 2002:a05:600c:4f55:b0:4a2:1398:dd05 with SMTP id
 5b1f17b1804b1-4a9661ab508mr49647285e9.16.1793194021403; Wed, 28 Oct 2026
 06:27:01 -0700 (PDT)
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Post: <mailto:drbd-announce@lists.linux.dev>
List-Help: <mailto:drbd-announce+help@lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
List-Owner: <mailto:drbd-announce+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
From: Moritz Tanner <moritz.tanner@linbit.com>
Date: Wed, 28 Oct 2026 14:26:50 +0100
X-Gm-Features: AclHuK9v0GUu290_JQ-Lrd3PSW6j-0mtNDk_Tf7yEFTWLXXnTcSSJeN3XXQFz14
Message-ID: <CAKnz9x+VMikb-vGKLJF8UiEK+qi1Dszgir1wexF=tLpkRJNYQg@mail.gmail.com>
Subject: LINSTOR Operator 2.12.1
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

We've just released 2.12.1 of our Kubernetes Operator. This is a small
bugfix release with a few improvements:

* You can now set the number of LINSTOR Controller replicas. [1]
* Pods of the same Deployment prefer to run on different nodes, so a
single node failure is less likely to take out all replicas.
* drbd-reactor restarts on its own if its metrics stop responding.

As usual, it also ships updated LINSTOR, LINSTOR CSI and CSI sidecar
images, containing their own fixes. Noteworthy are improved RWX
provisioning and shared storage capacity calculation.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.12.1.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait --version 2.12.1

To get specific instructions to apply the update, check our users guide[2].

Source code is, as always, available upstream[3].

Best regards,
Moritz

[1]: https://piraeus.io/docs/stable/reference/linstorcluster/#speccontroller
[2]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[3]: https://github.com/piraeusdatastore/piraeus-operator

---

### Added

- Add option to set the replica count for the LINSTOR Controller Deployment.

### Changed

- Document the kernel modules required on the host when the DRBD
Module Loader is disabled.
- Prefer spreading Pods of the same Deployment across different nodes.
- Restart the `drbd-reactor` container if its metrics endpoint stops responding.
- Updated images:
    * LINSTOR 1.35.3
    * LINSTOR CSI 1.13.2
    * kTLS-utils 1.4.0
    * Latest CSI sidecars

### Fixed

- Grant the CSI Controller `watch` and `update` on `VolumeSnapshots`,
required by the snapshot finalizer controller of csi-provisioner
v6.3.0.
- Grant the CSI Controller `patch` instead of `update` on the NFS
reactor ConfigMap, required by LINSTOR CSI 1.13.2.
