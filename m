Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F216C41C2F2
	for <drbd-announce@lists.linux.dev>; Fri, 10 Jul 2026 11:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783683739; cv=pass; b=CfoeV7M8+ACK2PtNGzo7jOUpGGJVlXLcXDy7lPpSBVBjcUA/+X5gHtB0f8kLiIqyEfwQk20Vus4ZxUdyv0zvgTndvGsi6lDzYN7le5S+GhPPTj1XUAoZz7aynUtJaVN4fF+YoGHsLiwzDLqu1+0xYF7IY5+/YPHTtJQFIB6hG2Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783683739; c=relaxed/simple;
	bh=eChGHH/AAFQJdg2XOrDIxVnA8VF0lICXwyffqYqu+Qk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=RC5kI/caYEgc/kb6KA74yBQQXkUJL5NuhIwvcfIAwg5Exd8MGIxl9VZr+g3p/0oHwOPNCCFNfoF6Y4qvOuyGEQVqR9Jxun7ih+4ptiUF2rZY2jwNmBDwKvpJJW6ftXXoYHhMgGUSqXkXx300uKnOvr4+by3W271UJEjJJhZ4GgM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=CpDVCzFJ; arc=pass smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="CpDVCzFJ"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-493f6de72faso1281785e9.0
        for <drbd-announce@lists.linux.dev>; Fri, 10 Jul 2026 04:42:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783683722; cv=none;
        d=google.com; s=arc-20260327;
        b=f2V/sBIQH3Mfzifyk3ew+q1+cICy1T+gUKy65WXFYRGQyC+Ib89sGXBBz7ldW3KozY
         tT37k1STW2YX1/RxFKGeqqhbBj/d4p0ijAVKf1hZPeGZnJtGhwGSS9wCqs9CsamzhWQS
         tKVEZ05zAUTtBKYAuuvrD6pBzL+Dp4zqbWEPh6Wyx/rOzhATnpXDhivZVBiwGAH1l/em
         KS7NEFN9uNTpMET2o/mBhljSq8piTxp+DSXQy5nJ2KFSXNG35uHEzs17XnvYFkrDSjlV
         4I657NnM1ymMQ//udOIPs2X0d+e+NyGPjGumrVMJbdJHpO++wig4BReW9wX6TyTrwYwX
         X1gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=uPJl+GtMiBmno8nG4vLeBhbUmjQCji5rqek6ozGVtkU=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=Ijx5yO14AYLeEWEDVlRMKhLnjFwRskl3liO06mRVY3YimNtoOnxZ0kDRw+yyJ+ggdF
         qKAklNkx2hRcEl4o/rcRw5O1l6l79aqkbjB8SZKWWyG+uA7m/DeAQkZ7rZpiu92kLQos
         gC15nwPXJ9JXq/CKsUd2fUEOBsjvcl0Ph0GyUHxLX9n56BTgpvEeJxuWIjGVVidANoe+
         TeT1WnfZv6PfxmhNmGjEQYNgh32zZ373+5eelpJG4S3ru06jBmUYCGJcQSnoz0yhubYR
         51DaKv+9fKy3Ls7qN1SBZUjPUVqu8bGqSzK7h5IZr+EcJN8kNPTlcjUOwXJEB92YbQq8
         OUxw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1783683722; x=1784288522; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=uPJl+GtMiBmno8nG4vLeBhbUmjQCji5rqek6ozGVtkU=;
        b=CpDVCzFJFopVivBhISbPB5/1NAdNwDQXe0dMz9X1cigbXsKSt9UGe4hqiQfkFvGUM4
         1G7BIZir2/J9RfWVOiFgsNWIyFqI6BIUDgRFz+ZoM7qQ0ZS7MgHIbEuFd5RQBXxyN6rA
         eLLjiEPLiF51WEuU6UKYP2lfrwoRIuSrmonOVDSDmgSYTaf54VG07stVm0Ubu/usG+KY
         4/lb4k3UH4Ermi56zXQpMXayTHWb3uJn+H/DM+mE7LAFx6j23kVUp0pRas7681rqfsi6
         0OMuE+RPIxqBGALQObDGPaDwfSsi6MiPCbUMG91qJUxqrFyWUWcTblRFBDo/fkRp465h
         RDfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783683722; x=1784288522;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uPJl+GtMiBmno8nG4vLeBhbUmjQCji5rqek6ozGVtkU=;
        b=OxUHfYRzYTUsN2BUXkRPiQrm5+jgaZeHAh9hhgnToqLobNH+R/QUBJBroJngkpE8XO
         Sbcg+3VXLwaLp4C8PWWmBr4n85Zzm2+gIACqhiSj9D7Tf6V9zF1GHyI/fTjg4Es0Ew8u
         i3lWAdsaUOs8X5WgO8iwu6efHnGUvkWly9bTQmWhaHVfBtd6dUTG4YoSEspjAHQd+WOx
         PpJH+EH/zsiAgBgPl/uWFV9Vp8xNDaDhz1Mj/e+mBnhiu1GZhZoUIXZr+Xo73MexxUSS
         WB2hn5OXzgLz+BEYqKKAxIzGiQr7/wvmeG+8IdrWy8u4baHraT5T3ZMlrjhuLZyuE29l
         wzLg==
X-Gm-Message-State: AOJu0YxwV2Y4ysC6feYzdMDuufLqmAjay0HR87jeK5Im90EtiZpdRPIy
	PQugv62GKESO7qiAiXaf1ImipdyCyw2JEFZasiI9i5RfSik2c0cIGsTc4Ej37IBgKeWcFSqeXZ4
	box7kcFZgL7tB05CRKaxVmlyZP4f4S1q4AwO8WE8LqdwD29HUeb78ZcdbeA==
X-Gm-Gg: AfdE7cmXSmAzB45/egDojFKtWrft+mut/6/oIzNBkMaK3tVO6CHfw8c2rrQhTmtxzBi
	TV3frg3KmUwDbL2jaKJ/R/tamHMZTGhs84AGtKmJvsPr2E6TXaYwg6hQB9ekB3d1+8hoQnpqATj
	/nto7yEe4ivgYasj5RrdoN88o7u33IJajNmDremEp8AiPdKTcx2iEDws+qGjZIW5OUea4s6eaqR
	dEybHGkIYDFMCuHgDANRa3rwceMLhFvav+rUQzhIanrGriw45glSC/af7l0twD7/cq79lZ0Az83
	s4P6EIU=
X-Received: by 2002:a05:600d:6401:10b0:493:d117:18a8 with SMTP id
 5b1f17b1804b1-493f2b3376emr23218905e9.9.1783683722229; Fri, 10 Jul 2026
 04:42:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Moritz Tanner <moritz.tanner@linbit.com>
Date: Fri, 10 Jul 2026 13:41:50 +0200
X-Gm-Features: AUfX_mxrWmuJ-lIcXJ_gGLuFzM0w-IniZeXKFfB9FD6x8Fwz2d7oLv1hL9lalhs
Message-ID: <CAKnz9x+nk0jLb8sg-OrLWzi7Jbu28KtR27QYbnrKbHJ8CJOtWg@mail.gmail.com>
Subject: LINSTOR Operator 2.10.8
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

We've just released another patch release for our Kubernetes Operator.

This time, the Operator was enhanced to first check if the storage
pools are set up before issuing the related LINSTOR commands,
providing nicer error messages in case the devices are missing or
pools not set up.

In the components, we have updated LINSTOR CSI, which can now take
periodic full backups in case of incremental backups, so you no longer
have an endless chain of incremental backups clogging up your storage.

The updated HA Controller contains fixes for bugs created by not
accounting for manual DRBD suspension: LINSTOR suspends IO for
snapshots, which should not be treated as an actionable event.

DRBD was updated to 9.2.19, including a number of bug fixes itself.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.10.8.yaml

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

### Changed
- Storage pools are only registered once their backing volume group or
ZFS pool exists on the node, avoiding pools stuck in the `error`
state.
- Source devices are checked for existence before a storage pool is
created from them, reporting any that are missing.
- Updated images:
    * DRBD 9.2.19
    * LINSTOR CSI 1.11.3
    * LINSTOR Affinity Controller 1.4.2
    * HA Controller 1.3.3
    * Latest CSI sidecars
