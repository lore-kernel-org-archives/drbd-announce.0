Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4218936215B
	for <drbd-announce@lists.linux.dev>; Mon, 14 Sep 2026 11:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789386357; cv=pass; b=AujFH6UMsoBQtmNRFljCt3GFVdMJ4cH7tMVng+mMpXt3WLsnP9Em+6CtI7hV7ecT6R1yJCGE8b88tXYjotnIC9bIuTERZC5z+mNiktW5VPvzSmAkbSht0xfUNud2KkuV3lHUKQWOocCcDDt85o9mTVYvdYd9lDOr2z0wAa1x+1s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789386357; c=relaxed/simple;
	bh=ksYBa2Jf2BKVlC5NqcshIq8NtSWxKb98zPXWPVELBd8=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=la8x6go0iZpwu9XVF2iGxfKDXu3RW47DbpL6zgmD8MXz0XSmY3W2LfnAd6lvPWjEt2bNwxv6MrEVziuFibhjqKRK4uXt/fchC/Z0VTRSnlq7t885a+boNZ184OhTpfGv1CEYtUUpAczatSFc+QaHCiD/TYIYyqaDK96BNlEowPo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=I5rN6oyI; arc=pass smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="I5rN6oyI"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-49e6b280cadso25867765e9.1
        for <drbd-announce@lists.linux.dev>; Mon, 14 Sep 2026 04:45:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789386353; cv=none;
        d=google.com; s=arc-20260327;
        b=siq9Ns4QEPMAJJzBciOV2H9qWZrgAn2pzKyMp3f7z1yrwgwuSDRtQX0wML+HqNaYcb
         mRQyAEYj7bDkch3mtuWlxXs95x1bNS79E4r0HG8aY7gWCz3jSShW/8PLDfQcdHKEhL8K
         CseI+13se03gjVMQF//GqRIZMfgog/COW5Ukq/hhFE55fuFK7BVldojIN7Wy50dSxZET
         tG7d02LCNyH00ba7uGej3xN1n0jrqkZCl9A+nUwEeTQ3Rtga1n17eKOqDjn/LOWAnXfA
         D8WkVhyJTzbLDvZOniO3GPetad4hqQort1y+KSnOc9IRuhVrE1azEz/DdvLinjkqRGIe
         AxTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ksYBa2Jf2BKVlC5NqcshIq8NtSWxKb98zPXWPVELBd8=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=oXRfKUdKeOUuhUhwsyhqq8SIJy6Tq+nsSJDbXVSchdcBaTUZ3sB9vE7hAbRaVVqmn3
         u3WgjXsFZzmCVI7WC4fy4Xcg+sFBTvRmNtcZ2a+yzWFir3Y7XR8KsbQuwRYRsrnMeJ2P
         b7A3NZIc57hMSuOdQRYtn3K8rKwX+zK9J2FZgUwhW0V1D7NX8ByCQB2FuelN4BULD05e
         3G0+H6NaWiGFHsww8/hTD2a+3asW//JKtXkZbDGH+zTmWHLcpWUD70fP1iChJSxY8Fl2
         TE5/eyvjFqRGxbfApuWF1pDcwBMUzL7k+z76HOARTyGqRLq3U9MUKnX6uKsD1m2saPdZ
         DRhA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1789386353; x=1789991153; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=ksYBa2Jf2BKVlC5NqcshIq8NtSWxKb98zPXWPVELBd8=;
        b=I5rN6oyIFr6xTa1RE2qNolhucN9fDzJ1jYfcFrAxqHCnAsOFZ0so3CYoNJPBvW7LsB
         PUIGqrTtoELMfEuuaDiah4C4Pa7j/sR9uW+XAze2LdU41jtmvDYSahXrbVA7/A/inSi0
         EUmv5C9yJiVEtZ30JllFwWy1gSFtiCd+PkJprbPZwP2iOJw8GqLkSdRKeLQwl3o62J8U
         dS+VSMvJy68F9FfapT+gigZHyuRg5iRf7sVzpGlvu32R9Cys915DMTk9SKgJ96TjobL9
         JvgTa6KDZVqKFPECnrL6mmJ6OH69cR+HqD+WrfPAa0+HlQcrBuYUaIsNYUMyPkw6+1N9
         61WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789386353; x=1789991153;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ksYBa2Jf2BKVlC5NqcshIq8NtSWxKb98zPXWPVELBd8=;
        b=HY6b2y+eKLCeAfN/bEg/afJ8ozMc3iKfCIirdsxB4T8HmGbd/B9no6zI2Z8Q/no89z
         HmRypTCdPqIpMxJ1r7VZFaU+YaKClZl6VpdvcNFG2oJdfitynH3IUkQhx3cxVvNnSYqp
         ZRWdJunVM5pkv9cyYADyXBMMPudCO5szRaQRgr8vPk/b5ghTWzI5eIff++i/9WF3OV+T
         n7e/r4l6m46LcKTUDWWntHEfqi6O6ohSPnVu/FGM99LukCPvTHCvX37qINEWOmtlKo3Q
         7aaUhjPfqWdv80TVLi6zzHv2AWtopefF9x35xYSjHS3btVvOOE02YY53YdHZ7G1492qj
         ZQpw==
X-Gm-Message-State: AFuF++kEa+t15vbJ0eQs7KcxlSq1AnJIkv7PmVq369lqzaWakNE0Z3yk
	oaf//TwYm7lfKiEq3pYg6J05eG52BlJ/mII4Hdc2uIfXbMrrRknzfSQRui2/eSyKUqWLPkJSEQF
	jHrsiExuezqvfjz5L+XjKP57MJuuE1AGypYsoe21Ndc++dZsueMOt1Xo=
X-Gm-Gg: AYBFou2l5qmgC/chfRYPzZ68A7qBmLL0P5bqTdaObVPp73+2OU0ADyN3YDTLg/Er3gS
	NXVd5v7gNkbsvpTQjTp0eCbk/XFYM5yZhyLJ4ydiMKb9sR3COg0URb4IQUQFENciM0qNi443Mxo
	VgMdhymSwxIHJC8omQbQMZ//OLthRhKOkptiomqCEu21puqdwdJlPN7lLYv3vyIhLeqnxVTbNML
	0gu3iJWhMDflKPolYRRvG25c2cc9AY+E3LYK1UVEPBE0rcPg4hHl6XYh2Q52zL5Oz7oumyr9zW2
	fv05fqff708UsJ0qfoMBW+B/X0mekZkcqy85l3cPR4e/hBEirOGWhvs=
X-Received: by 2002:a05:600c:3acd:b0:49d:10d6:fd55 with SMTP id
 5b1f17b1804b1-49e7a639518mr22298095e9.1.1789386353419; Mon, 14 Sep 2026
 04:45:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Mon, 14 Sep 2026 13:45:42 +0200
X-Gm-Features: AcwNN1Xa45Z5maO5EWtbi-HAXt5JPVIB7necKnelL5BrB4eyQlw4zXRJMx5QgaI
Message-ID: <CAHmn2DOfTXSWjLN9jrE3k7kFQp4Qtek+Jaxxb4y91BVuV-VbCA@mail.gmail.com>
Subject: linstor-server 1.35.2 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi!

A small but important bug fix release for the 1.35 branch.

The automatic database export introduced in 1.35.1 leaked a database
connection on every run, so after a number of exports the controller's
connection pool was exhausted. If you are running 1.35.1 you should
upgrade or set AutoDbExport/Cron to "off" until you can.

The other fix is on the satellite side: if an integration outside of
LINSTOR left a volume's block device flagged read-only, deleting the
volume failed with "Failed to wipeFs" and the volume was never removed.
The satellite now clears the read-only flag before wiping the device.

## [1.35.2] - 2026-09-14

### Fixed

- Satellite: Clear the read-only flag of a block device before wiping
it, so that deleting a volume no longer fails with "Failed to wipeFs"
if an external user outside of LINSTOR left the device flagged
read-only
- Controller: Fixed a database connection leak in the automatic
database export, which exhausted the connection pool after a number of
exports

https://pkg.linbit.com//downloads/linstor/linstor-server-1.35.2.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene
