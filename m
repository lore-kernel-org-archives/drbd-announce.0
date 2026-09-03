Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598344A5C47
	for <drbd-announce@lists.linux.dev>; Thu,  3 Sep 2026 13:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788441425; cv=pass; b=lLQ8hCW5DHpX95zS8z1npGo/h6p9PCo3kTPegwbWHW+uzsFMRl1Gn7U/nhDrxhK7xO9McYi2GngemeMs2BC+QX5HpK9tcnccSZH/qtG2rfv8OExjqinCLPr87mIWYuk0Q7K5mzTDeTzXwjF5TyKoEU1S6IHtxD/kq1oSYwf1Jeg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788441425; c=relaxed/simple;
	bh=4d5mrcoKnuKqaIZYf70e74WLozlSj5D9Kg6gBvQyqMc=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=LJ6M9ckEAhOF6FXSxXsvoZeuQW0iyPeKOtRZgWIkneE96Qgzu6UqyNqkjZTLbDNwlWEbTenIU4bAU/jV3P1D9bZHl0v3xq0tRgL7nRXmr0CWwRM+wIBoGuX1XnBB32Pw6ZhDRTROGBhW0GOJ8TZuWCyfTC43CopopSo05V05rJo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=WG8gpiRG; arc=pass smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="WG8gpiRG"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-495590dde14so26687305e9.0
        for <drbd-announce@lists.linux.dev>; Thu, 03 Sep 2026 06:16:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788441410; cv=none;
        d=google.com; s=arc-20260327;
        b=nj1G1jVgGXITq3bx2Sf7ywxdHEt+65WhKGIuFoy/6+zXBJmMicZAF1kchdygR1mvAP
         nP5gXJTLgvcFrZ51GAwfezS0Icg/SEx5do25D2xzseyP+k9vAbRwxyLsoFIn2XbJiplK
         ZPipa0Pd+3pVkL7uDGOgfnU84BW7sWzWg6ehPq3snBfUxeh22f3EuYHtZaqtG7qm/8A4
         2HkQxIRAeMM9jLoTnHdUNdIMZ9UF97kF4kUeC06xD0rcjYJntCfloaUGck5346E8nplR
         LZ7s4eWEgsjZIjWX/sJCNRHssoa3HER/chnmmVFTLRNU09+YzgC4hJwyWVn7uNO8KbHz
         uIrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=UmnD9GCAlYDc7u0fNXeNULksiMWxcCpTHEy6bY6NWug=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=J3NK0vnG2RLtx3rgwg2G96j0XAwg8E+17m/8JNKB1gYMDSmOKE5B4LRTcOb7gQ/k0J
         1yZWnTepdDkbpMpCqAb18GS4/pNzs20FtpOMFz1+tfJAs0L6ZnVo/IOPb71wCeaU+IOd
         LZtgJFPnq5Snpr23kNam51GCrM/JLXScnB44HPIQ8rCsY5ZWJBdBhVNuAqzvWeFYj3JK
         lwAwC8dxBSXbIHMIT14gkV519DA1yknVDSZno8SAuqHsgQxG/QH2tkQMJoex6sPtebZo
         cEdXik05QHLm4/8YEJgKcfSgBZ3L4+jwt0MZe+pQLPIQ+ShVHn1CY9P+yj5gL3E6R/sB
         Fe+w==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1788441410; x=1789046210; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=UmnD9GCAlYDc7u0fNXeNULksiMWxcCpTHEy6bY6NWug=;
        b=WG8gpiRG65y5rfq5f/BOdqrWWqVUqUc8QVxeEDSsBBYTf6lO5u+/CBixwF93wQfchI
         r0jAeffzzml1XZGx1M8vDwJbK9nvFSyj9ItzFHrvjYTSJKHpHogHr60zDTBJnoTOdGEq
         OvQpZ1y332RnkkmnK+XlS+kk/6o747cZbWnbfkm1gzz/J30d4ONNzcQ4d5PQq6JCp1/x
         8kls5N6iqh9bziKXBbMod/cSSKxiGx9qkfLTzc7Cc89hIVCfJDjNAZAukvspDlOHWW8F
         Gxxt1WkoUn7jn544X0NcPL7ZuTc3QoeH5tfMqRuN0Svrqz2swssRHVEQAqojc32Xs+TL
         jnbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788441410; x=1789046210;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UmnD9GCAlYDc7u0fNXeNULksiMWxcCpTHEy6bY6NWug=;
        b=h/9qdZ/80OCyJOwNRpaA69h8P3D4tWBM/SAHvqPgzZUVhP33rv0JkC5BqwBL7MpCjH
         c8AVSJLoJNXlRoDaAwNoX3PhwJkpABDSiiPuLbchvpxKRu1F6qu0gUveFknbqY03QaX8
         ewELZc8H1eaiFKeH+IJLYDsHHr2sUG2eKMYCbP/amWHvDiPh3PP1AS9RlfyWSkFbAxmr
         R0cmzCJ/xGMGRVGwPXDHgkqi2Gpw/BkDujcPKONynEm0u6tQlq0j61pf1R3wnXv3TvcF
         bwxr+lYx46G2fSpkobiDlr6A79YH6cem9smlVs/GVsU8e9O/pCEPlD22e+T4O6VQ7ziM
         QvzQ==
X-Gm-Message-State: AFuF++lpYdF7R/ysO8yRmJPCKi8SOO/ZE0I7F7XjjNRd6Cx/QGRjj82W
	IkzydTVrod6vIhcSO0kqfZRQqWB4f2xQjDygkp0HqzTDGsEbwMLZkk625f0s49OqCSnDn6jpBYa
	RxG0f2RTAgWxpS5qd56W4dTQIjgG7Zq8Gk1sTIbHfPi1DYTxac/INgYYADQ==
X-Gm-Gg: AYBFou030aGQk7OsyHaY5NsAr2BUOqERZAkmfP5LkoMz3oew7Pvda0JQmYAaQLrQZyM
	XGE7wpAlZJwaMeiTVuhYe7dvqCN1ZJ7G0qImUM/cWdaT7gU3G3d3nFI72XDjE0nEJv9JJw+Vjuz
	PXveqzuHxowh7TMV9H1S00NusrVufhvLJaMqKL4r7LE+6jRmwqcTsuGP9aZtfb3w2EHrdjIrgiI
	QcSkGZ7U7gUhYyhUJM8bwKDjNn/yFoMXS5KVoj0fzXbx3mstoxoGto9xVC52mdqC6ATOb3d31Qt
	plfmZNpRQSNlMErehr2GOD9SWdksxfF2LXRwVlhFUtxllXosAIlALw==
X-Received: by 2002:a05:600c:8714:b0:499:b65d:1250 with SMTP id
 5b1f17b1804b1-49ce580d869mr224629475e9.2.1788441410101; Thu, 03 Sep 2026
 06:16:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Moritz Tanner <moritz.tanner@linbit.com>
Date: Thu, 3 Sep 2026 15:16:38 +0200
X-Gm-Features: AcwNN1V4UCnzZtU7geOr-hy_QZ3FyzZt3NF82F2zbXpEUxdmiLK-mDjpRELNdFQ
Message-ID: <CAKnz9xK53CiJjRz1ZrFCNrPH5qT10L_c4Dd9r+hgbJY_PeGGKw@mail.gmail.com>
Subject: LINSTOR Operator 2.12.0-rc.1
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

We've just released a release candidate for the next Kubernetes Operator 2.12.0.

It contains a number of improvements that warrant a longer release
phase for testing. We also dropped support for old Kubernetes versions:
the new minimum supported version is 1.30.

The big new feature is support for shared storage. The Operator can now
register LVM storage pools backed by storage shared between nodes, such
as a SAN, using the new lvmPool.sharedSpace key. If the hosts already
run an external lock manager like lvmlockd, lvmPool.externalLocking
tells LINSTOR to rely on it instead of its own locking. [1] LINSTOR CSI
builds on this: RWX block volumes no longer need a DRBD layer when all
storage pools are backed by shared storage, and LINSTOR itself gained a
lot of improvements around shared storage pools, including support for
live migrations.

The Operator also learned to handle TLS certificate rotation. With
internalTLS or apiTLS enabled, Satellite and Controller containers now
detect rotated certificates, for example after cert-manager renewed
them, and restart to pick them up. The restart does not interrupt
replication, as DRBD connections stay up in the kernel. [2]

We have also tightened the permissions of our components: neither the
Operator nor the CSI controller has cluster-wide access to Secrets
anymore. If you use S3 backups, you now have to explicitly grant the CSI
controller access to the Secret holding the S3 credentials. [3] The
deprecated csi-health-monitor sidecar has been removed as well. Volume
health is now reported by LINSTOR CSI directly via the new CSI 1.13
RPCs.

We also have the usual round of improvements and bug fixes by updating
our components. LINSTOR 1.35.0 adds snapshots for thick LVM pools and
fixes a number of issues around shared storage pools. LINSTOR CSI 1.13.0
updates the NFS server to NFS-Ganesha 9.14, fixing I/O errors on RWX
volumes with clients running Linux 6.19 or newer. The HA Controller no
longer taints nodes for freshly created resources that briefly report no
quorum. The Satellite now actually merges the host's lvm.conf and
lvmlocal.conf into its LVM configuration and copies over LVM profiles.

Two things to keep in mind when upgrading: LINSTOR CSI 1.13.0 requires
LINSTOR 1.35 or newer, so if you run an external LINSTOR Controller,
upgrade it first. LINSTOR 1.35 also drops the unused access-control
tables from its database on upgrade, so a downgrade to an older LINSTOR
version is not possible afterwards.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.12.0-rc.1.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait
--version 2.12.0-rc.1

To get specific instructions to apply the update, check our users guide[4].

Source code is, as always, available upstream[5].

Please help by testing this release!

Best regards,
Moritz

[1]: https://piraeus.io/docs/latest/reference/linstorsatelliteconfiguration/#specstoragepools
[2]: https://piraeus.io/docs/latest/how-to/internal-tls/#certificate-rotation
[3]: https://piraeus.io/docs/latest/how-to/s3-backup/
[4]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[5]: https://github.com/piraeusdatastore/piraeus-operator

---

### Added

- Support shared LVM storage pools: setting `lvmPool.sharedSpace`
registers the storage pool as backed by storage shared between nodes,
optionally using an external lock manager such as lvmlockd
(`lvmPool.externalLocking`).
- Support rotation of Satellite TLS certificates: with `internalTLS`
enabled, the Satellite container will restart to pick up a rotated
certificate.
- Support rotation of Controller TLS certificates: with `internalTLS` or
`apiTLS` enabled, restarting the Controller container to pick up a
rotated certificate.

### Changed

- The minimum supported Kubernetes version is now v1.30.
- Updated images:
    * LINSTOR 1.35.0
    * LINSTOR CSI 1.13.0
    * HA Controller 1.3.4

### Removed

- Removed the cluster-wide permission to read Secrets from the CSI
controller: access to Secrets referenced in a `VolumeSnapshotClass`,
such as S3 credentials, now needs to be granted explicitly.
- Removed the cluster-wide permission to read and modify Secrets from
the Operator: it now manages Secrets only in its own namespace, using a
namespaced Role.
- Removed the deprecated `csi-health-monitor` sidecar
(csi-external-health-monitor-controller) from the CSI controller
deployment, along with its RBAC rules and default image.

### Fixed

- Actually merge the host's `lvm.conf` and `lvmlocal.conf` into the LVM
configuration used by the satellite, and copy over LVM profiles from the
host.
