Received: from mail-wm2-f13.google.com (mail-wm2-f13.google.com [74.125.225.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6832C4D7D2E
	for <drbd-announce@lists.linux.dev>; Thu, 17 Sep 2026 11:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.225.141
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789644963; cv=pass; b=huHz0tyGzJvC/a4zl76GiO8xnHyFlGmR+6YH8ktbYeJ5po2DeLy9AsyloW27vycygVKpIB8BSmm7XSFNjHXrlnYxrufpETC8To81TX0mgZ4QvIV3SDqa9rCIXKbgl3+rzziWOGEgbseZx3nQcJ1Q149JAJqShg4pmXJDdmtFaQ4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789644963; c=relaxed/simple;
	bh=aV/k3Bi6zonW3frNmzUsBdIB0ZyrG3Tuvg7zcinMxzo=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=VDtSJX6e8zX6JGQQyQViTEWP1pIww5fFOB7NgeFkFSdoGqT1EIQ4gBp140S/x29zhGS6mUrPXPlOGKrgXVj4a3fef0ZJ7z/wstc9ZlX7gCjdaO1/et7mxvJZmrklnq6E9Ja4j+4GknegagKZgf0MPbBxtaAusg+v6vzn4EZCe+g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=mWA1sxwp; arc=pass smtp.client-ip=74.125.225.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="mWA1sxwp"
Received: by mail-wm2-f13.google.com with SMTP id 5b1f17b1804b1-49cd5462b69so4328405e9.1
        for <drbd-announce@lists.linux.dev>; Thu, 17 Sep 2026 04:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789644959; cv=none;
        d=google.com; s=arc-20260327;
        b=ORRIdpsjB6lEnCnqz+/EHUs1oqbQ7pTBowk0x7onAI1BVqPi0ZUTcOXaVlkETll1od
         1NAHGd9OLnHOAackcnUM9Pp+dUu6pk0ZhTPP5MX4taSUItgr2fRw/Yc4ZCpQ8o6tVcCJ
         wcjPtg+sf/Y689TXHcWYNxfrjP3DB0WwL6j6Kfuwfcyqh6/ssV1UJ3i3TTGfGOMhCGRs
         bn1eudY52V7yAVjyjQtqf4dTR+lONZ7irc0+jA4JeNTpiEVBPqVgjcXZaDgObQA74dHx
         u0I/tkQyuDvhEW1Ul3+AFcJteF11ZgRiB+dybo3jOz4I/KPNcnMEBfodTVh6QXjzQuic
         XQrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=z8ZdomchnWdQYHA9mi9tXthGuc92lHW21NaR+Ze7rlo=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=OlwdVyJOjmOQxHEY5poUXnUsFsNLHuYI33Xej+gxIw+rZJtTeBDPPgrF/WcANcYRmo
         6smCpDjBV9/Kjf2xWw6kmJEZdCNYQa6oGuFPkKosTM7vnbSuQDMyK0SnkhgX3Eb/ACgL
         4Wo08oTXNel/pFyXWPyVVT0JxE4hhAyr4y3nZAJP0apRkgClce2CtIjMgbAuc5DYt+f7
         Viq2OETucB7X3ZOZp+dksPvAN65oO/ZE2J+yJCaQSao+g8hZtBDG2w92XmjlvL+ruWde
         IcVIDX+N9pdTah33r3iBKO+KFrm7wEzbL7hG+JsMGFgAKUAYXQQQJB8qZ+wIXI50dKkY
         ZDNA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1789644959; x=1790249759; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=z8ZdomchnWdQYHA9mi9tXthGuc92lHW21NaR+Ze7rlo=;
        b=mWA1sxwp7VY2D6iUGjr+5XkfBAgFo+wdSRPh5ihnlbCM6nOlxnyYB+HpcA/SNBrtMg
         7hlYIv87ZcUjgm716RW9hoOCMGciQO+gUYQZhGwlf2uVbmwm0L5E3LkFm52hMjq/XkYp
         kg7d3idohFzRDiI091Ek9zzHiP8oG9vYjcZswqIVG3u2tzthkvs1UpKq+LV0aBb/kdoW
         6tKSfgEDng73Cnzyq3B/cNio6ByawQ55dhjoHqmsEk3wj+ZbLNrxNlL1IGNIRr87tKz0
         qZYv4RJtOU6+R2xGVUn0UmP4fxBQEpFhW68xUNFVyCtrVf0TYjoaO3Pe8rgDY0EZZag3
         Zs5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789644959; x=1790249759;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z8ZdomchnWdQYHA9mi9tXthGuc92lHW21NaR+Ze7rlo=;
        b=I3ksbM6uWBdUnqkai7obfEjTopzUdbRk0VWVbkD680KARgAE1o2pD3KZgybA81t+N4
         hB35KJmH7unPc/HnitOn+VPJjmqBloYFmH51c2Bl8VzHf5jY4OPlj1373i83bS6vlqu2
         cFzcF0/3vd49kSbqom+CHimrZvRmZLcBTFw7JSj+qe0lvClA97NsFdkySmD+pYKbNJiF
         PGWnpXzjZQ9XazygcZlqP6jpC1MQxa4C7Ft0dDIdnGUP6X3y1JzjPpUELNLi+3Wq7iDa
         S73Kwr87usxBD+k2os89/WPcetetRJxRuCpj6XDUurUpvnu52kj6S61iH46/+TMF7ZHW
         LXgA==
X-Gm-Message-State: AFuF++kqiil2mDMfmSF0sK6vEaGvPv7qxPylpMSk2vjRGt6Z+DQDJLuL
	+Ee7GQNdyEmK5GTTSkcsy46xR778/U00U6r+yNpONIt/XDjlw/LeKXp4PwChUQGSOaHxdAHjR9S
	oT1EqXDOtQb8bEdjXUCrFMhz8hOjvVZ7VGxIuzYMNVp8a0va89Uf+nTo=
X-Gm-Gg: AYBFou3XKDQVZNKJ3ev++Zbo/GTfv1LbOI+TJYBYXcHCa2jkp2DhqjBTIRmQLIavcMS
	Rex0d8/FnlwTxy8buinMctNzzMIhNdAx+L+Rfjb4UY6G9rSclI3cKn+s2O18Hg7X/AiGx8ZKyhU
	c9fU7M0RwggJDhL+a/HVcnm2PPDslm4fgTy9M91sL3uaxsLdineMl3hI0izzN7Ywallx4KXK3hH
	HOFnnfV8haPjzzOGpJMQ7TO9Oia8jZezt6mYFcfhYixDml+6dtyct6qPe5poMAxzcl5VVPNQ84k
	cYYRTkMyT/V6HE7EGrGmJPF+txP2cTmFSqG6FBblUOaugpZvR3bd9ukZsH0OpbXPSNM27DwpXaS
	WEkmRmpHxIJbirlZWWrADVQ==
X-Received: by 2002:a05:600c:46ce:b0:49c:dca4:94c with SMTP id
 5b1f17b1804b1-49eb7339895mr144638455e9.13.1789644959304; Thu, 17 Sep 2026
 04:35:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Moritz Tanner <moritz.tanner@linbit.com>
Date: Thu, 17 Sep 2026 13:35:47 +0200
X-Gm-Features: AcwNN1VB1Gf7ozZ49QbVsJIYJDOZF-bynt81w0rACt0xNXWvaz-JtBhT-BjvEKw
Message-ID: <CAKnz9xK9ZJqmxyvK2iUkzsW-VM_Med65JEmsgH6XjVtbj3wykA@mail.gmail.com>
Subject: LINSTOR Operator 2.12.0
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

We've just released the new feature release 2.12.0 of our Kubernetes
Operator. Along with it, we dropped support for old Kubernetes versions:
the new minimum supported version is 1.30.

The big new feature is support for shared storage. The Operator can now
register LVM storage pools backed by storage shared between nodes, such
as a SAN. [1] LINSTOR CSI builds on this: RWX block volumes no longer
need a DRBD layer when all storage pools are backed by shared storage,
and LINSTOR itself gained a lot of improvements around shared storage
 pools, including support for live migrations.

The Operator also learned to handle TLS certificate rotation. With
internalTLS or apiTLS enabled, Satellite and Controller containers now
detect rotated certificates, for example after cert-manager renewed
them, and restart to pick them up. The restart does not interrupt
replication, as DRBD connections stay up in the kernel. [2]

We have also tightened the permissions of our components: neither the
Operator nor the CSI controller has cluster-wide access to Secrets
anymore. If you use S3 backups, you now have to explicitly grant the CSI
controller access to the Secret holding the S3 credentials. [3]

The CSIDriver now sets fsGroupPolicy: File. Previously, Kubernetes only
applied a Pod's fsGroup to ReadWriteOnce volumes. It is now also applied
to ReadWriteMany volumes in Filesystem mode, which are served over NFS.
Keep in mind that this changes the ownership of all files on the NFS
export when a Pod with fsGroup starts. For large volumes, set
fsGroupChangePolicy: OnRootMismatch in the Pod's securityContext to skip
the recursive ownership change if the root directory already has the
expected owner. [4]

We also have the usual round of improvements and bug fixes by updating
our components. LINSTOR 1.35 adds snapshots for thick LVM pools and
automatic database exports: by default, the Controller exports its
database once a day and keeps the last seven exports. Note that the
exports live in the Pod and are gone once the Pod is recreated.

DRBD is updated to 9.3.4, which carries all fixes from 9.2.20. These
include a number of cases where nodes could silently diverge after a
reconnect or after losing a peer, so we recommend upgrading. [5]

Two things to keep in mind when upgrading: LINSTOR CSI 1.13 requires
LINSTOR 1.35 or newer, so if you run an external LINSTOR Controller,
upgrade it first.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.12.0.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait --version 2.12.0

To get specific instructions to apply the update, check our users guide[6].

Source code is, as always, available upstream[7].

Best regards,
Moritz

[1]: https://piraeus.io/docs/stable/reference/linstorsatelliteconfiguration/#specstoragepools
[2]: https://piraeus.io/docs/stable/how-to/internal-tls/#certificate-rotation
[3]: https://piraeus.io/docs/stable/how-to/s3-backup/
[4]: https://piraeus.io/docs/stable/upgrade/
[5]: https://github.com/LINBIT/drbd/blob/master/ChangeLog
[6]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[7]: https://github.com/piraeusdatastore/piraeus-operator

---

### Added

- Support shared LVM storage pools: setting `lvmPool.sharedSpace`
registers the storage pool as backed by storage
  shared between nodes, optionally using an external lock manager such
as lvmlockd (`lvmPool.externalLocking`).
- Support rotation of Satellite TLS certificates: with `internalTLS`
enabled, the Satellite container will restart
  to pick up a rotated certificate.
- Support rotation of Controller TLS certificates: with `internalTLS`
or `apiTLS` enabled, restarting the Controller
  container to pick up a rotated certificate.
- Precompiled DRBD kernel module images for Red Hat Enterprise Linux CoreOS 10.

### Changed

- The minimum supported Kubernetes version is now v1.30.
- Set `fsGroupPolicy: File` on the CSIDriver, so `fsGroup` is also
applied to `ReadWriteMany` volumes in `Filesystem`
  mode.
- Updated images:
    * LINSTOR 1.35.2
    * LINSTOR CSI 1.13.1
    * DRBD 9.3.4
    * Latest CSI sidecars

### Removed

- Removed the cluster-wide permission to read Secrets from the CSI
controller: access to Secrets referenced in a
  `VolumeSnapshotClass`, such as S3 credentials, now needs to be
granted explicitly.
- Removed the cluster-wide permission to read and modify Secrets from
the Operator: it now manages Secrets only in
  its own namespace, using a namespaced Role.
- Removed the deprecated `csi-health-monitor` sidecar
(csi-external-health-monitor-controller) from the CSI
  controller deployment, along with its RBAC rules and default image.

### Fixed

- Actually merge the host's `lvm.conf` and `lvmlocal.conf` into the
LVM configuration used by the satellite, and
  copy over LVM profiles from the host.
- Mount an `emptyDir` volume at `/var/lib/linstor` in the LINSTOR
Controller, so the periodic database export works
  with the read-only root filesystem.
