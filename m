Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B883047D458
	for <drbd-announce@lists.linux.dev>; Thu, 27 Aug 2026 16:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787846443; cv=pass; b=e1Xs+VnrmI0o1AJozQBKOxh/CneWHWpZptMnNgEYgp3+kwkC9GGtZ69Ki1HJHLPZtxQ2MESMjRCN8VfhenNc6U7VfYsOO+RLQLlK7DNxOXcCqZ4lDPHCPD2bOEUJ8rEmnyq0bBEwE4Sk+Fg2dofSgw1Blqw/Kwkm6fqw5AzhyfE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787846443; c=relaxed/simple;
	bh=KVhZj2tZ5VwzP/UBOqQTcgkFVw9ESU0OqjqCJCnpyY4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=Wbu+e9fZJnxGtaI2qo3GoUMGC5BgL2t3/SN2SJEOaXfe/loPWlbn+VFPmKqXXSohmKBOfcHwq9Yko+GdsUua8CH9a5u7YOpuUnmvmJlhuZKRprRvsoowscJZzwaTUzwmFAefiJ1JoQbJxJ9j2AlM3Oo1BdaVN1f4PWfmJF9Eo/0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=0N7CGcAf; arc=pass smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="0N7CGcAf"
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-482e61a34e5so735464f8f.3
        for <drbd-announce@lists.linux.dev>; Thu, 27 Aug 2026 09:00:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787846437; cv=none;
        d=google.com; s=arc-20260327;
        b=EieRb12gJt1QL6UcYHAziaCwPMsYZZUSv6FMpnexKVX/qjAmz3/UfsotjP0s1tw9gA
         o6E35SahSQv5iTfiH/rN6ZuvDQt+S5BdvNoRosa14WqNs3zrZkqVn74i8XONNyVz2tXk
         8hvp2QNtIUUiNLxBpxXipe3sMp1bbxl3QJUplY0pAwXvZ79GQKPyNBqdXINKrkcWJcIW
         wY/npvOHfmpdNcM1R24nDWrFOrq1M4AcsG0H2NHvCY7P5cRqILzJbDN9V7ldV3U9J2oZ
         2fZKdI2z9yHmFsgtJXIl8EsPG6wQ1U7GsSTjCVPmKtpDs3vi89LDhIZURUQPPWneXnf0
         n64g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=KVhZj2tZ5VwzP/UBOqQTcgkFVw9ESU0OqjqCJCnpyY4=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=kweffw0aaAEL+GLqJ3T8CiC2ASXVK7cb8LSPgJ1AQ1F1kWPaV0zdpb1ivHBjKm5qhc
         R/uNjNCBM3iNojvFijXfcAGQW2tmxBC79novBvsGhE072x1CEK44VxjnJ3jdVgfXn5pT
         oSFE9fI1IQdGDVx6j4xub3QabzaAxkDzQE+MLa7Fk1JUqrlyqRxPd01iQBZG8yuMwRIE
         hbjbg2YVIqP7FpJYQugfr4vg5dgf+IJ5AoKobs23Jwlv+fLhUpi4SL1sG90EFX/KtgOE
         ZiDQggahPhnLVuLFxFm6vJc6DLdceVa209lDG6CiC6ZczGilmGu2+xpskWRwUa/os678
         cE/w==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1787846437; x=1788451237; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=KVhZj2tZ5VwzP/UBOqQTcgkFVw9ESU0OqjqCJCnpyY4=;
        b=0N7CGcAfzxCSNKMQUo6/+TDurJeE4JVp6LScAauTp1V65IlSbcLP/KYl5PeAD7eCvX
         Qtlw7MWV4VL07606eSaxl9p48Klmc/u+9ccWNGhYgmybwqx34bW1q6Dnzgv4tg2fEz+d
         06Tu1lLPCSR8K0h9myiaN3uv1J4r+/8oK5BUB/X3pEp226rbu/wtmRTg8CAQQORsmcjb
         6214icCkx20NoKHnbooVbbKupW6nqEyBngZ7obGC8E3brYnbQDE+4XzAIEy5SeUoSZvt
         h3Zx0f6ZwM6IZJNfufBuqrEWWfP3y+JuuqzbTc0zDpqARWwlPQ+l82WPM4FDyBq6dDPm
         NcoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787846437; x=1788451237;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KVhZj2tZ5VwzP/UBOqQTcgkFVw9ESU0OqjqCJCnpyY4=;
        b=LfFxb/8SCIvu+4kXky+mfVIsF0hF/lVRM9xHpDCfSEPtnuOrx6n6z/M6Srn6s2rcjf
         isMEdbgE4rOdwT0pWH5C7BEZGOoWgDtuG/vUrsEfBmft5oUMRectdGjpw1Suo7yEY+Ct
         0aRZdA4kzIrdDSOFufpvkJ2qpv9Z3ydqys/MkRN/nkRoNin4k1V6/JwvNjYl6ZCOp9ET
         XlEi349cocWglDi1w6cACFYg6VtmIFh1HJ8+ZS4xIjq08MeuaFGMW2unjbPIELivITYB
         jSthYX4QSx5G0EvS3clhcF2RMuQWxzIePNciFRzv2x7qshBT/Gn4Xwoh00wcLkUrrahl
         NcrQ==
X-Gm-Message-State: AFuF++l4J2FcmYKmlOpMP6wqtR8EvCvCHl/BwRNq0HJF085JbQtGODII
	4eO9VYVrkxrSmKvIaB5mtqW9Ze7dStQwUc85yxvny0oAJK6Mo960kJ673Y8lEJBbfi1OE2pEztB
	/Fx5tqe3eu9AVxEm1E+VSsQRPbUMNT98TsJCYLxYAHD5x4CtK6N65NNs=
X-Gm-Gg: AR+sD13sOw6wmJ9UrjVdFGZkqti2jyvqWtGFKS/zrqdQSVh6PZtK5EyE/kqKReZ7XHl
	GOvRv/2mOV6UR7deeRvjijvhxAkqU9d5NQcP8Uam7gBf/riJHHq7M3Wpa2d2JWDoWn2u2+UD2rP
	LzO095vcv2C4jR8PkQiYZf8LwuKFqls8IKIa7cWYRDpnt9O5FYhj+EmcRRh0osFYAd8oSHgRS0e
	WZsP0lDYpKAQpYEfHw2aSn5+Y+ciWjYt6xynAvy11hDxbuRLaiv4HEuXtaJ7Asb3+aevqoEyztj
	lAh5z9WstC085HsxhnIAYqvacrc2XgVARISM0aaCrZog
X-Received: by 2002:a05:6000:4910:b0:482:daf8:a3d7 with SMTP id
 ffacd0b85a97d-482e2673529mr22158776f8f.3.1787846437275; Thu, 27 Aug 2026
 09:00:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 27 Aug 2026 18:00:26 +0200
X-Gm-Features: AcwNN1UMhvFnKmEh9oDXsooJou-z8V48fCv_5b8chn3aYwCo6PqFGs8RgpBNy_c
Message-ID: <CAHmn2DO2xehbqseuSOyw4j2AQ7U7ufCpUODT3h1RtEOzf4XPxw@mail.gmail.com>
Subject: python-linstor/linstor-client 1.29.1 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi!

A small new release is available for the clone --volume-size argument.


# linstor-client
## [1.29.1] - 2026-08-27

### Added

- resource-definition clone: new `--volume-size` option (server REST API 1.29.1)

https://pkg.linbit.com//downloads/linstor/linstor_client-1.29.1.tar.gz

# python-linstor
## [1.29.1] - 2026-08-27

### Added

- resource_dfn_clone: new `volume_sizes` parameter (server REST API 1.29.1)

https://pkg.linbit.com//downloads/linstor/python_linstor-1.29.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Renes
