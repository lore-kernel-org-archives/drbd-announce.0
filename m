Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7954C54A7D8
	for <drbd-announce@lists.linux.dev>; Tue,  8 Sep 2026 14:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788876444; cv=none; b=CiQe0i2iUEJEPbFrdRE2BJLopwhhD8NdRkrZg4SOKH+qTftIVP5z7kyAcSDmfuhy1aq67owWpIPiArehUiF4qdI0CK35KKs+0qIL/ACe8Z1E0IBbGBYQGDJtzGk4e5vTXUhk9TgDEWwLe/bQEXt/b+RN3eff7BOJKgjEYq8wVlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788876444; c=relaxed/simple;
	bh=dKfYl94fbEia+jyhXl8q8OqiQjL4QirCvpwN9uB7QHc=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=tqUrx3YWte+CVYaDcECxtG/pIu3JRMiFILb4++RHDsNz4AY362Gbh8bz2sKfLMcc62STv/akpsQGz5fByF5NNg9hw3QzCr+kWX9O4lMGZQBd8dJSWOAFUvjm5sN8s8mWWl+1uNYLMbuP1nHDEj9MN3DNOfzQ+yxs+hvLppqUgwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=V2NbWabC; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="V2NbWabC"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4957eefd361so36835185e9.1
        for <drbd-announce@lists.linux.dev>; Tue, 08 Sep 2026 07:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1788876420; x=1789481220; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:user-agent
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=yGis+9V4caNPULrS/B+IPnY4dP41gYOZBRylJwVWn8A=;
        b=V2NbWabCr3hpwiIJpGhIL13uBF1rIjPalqRFVbmXUpQhA1oFQU53VNTaPZHZuSwRE1
         qkxTqAzs3MYLas8bs+HmygQU22KJmiI0gBMfSbL50PyDza6giik+h7sVc6RKWaGV1izX
         ykcUDwNiYci8SEopsuHtk67DZG2kAygZGzGP4MtpUFgNcga5RZGOM5/kTJJTvHgsEci9
         BLsES5el5RxSyvjM42M6FXQ0LwdfcOEHz+qO9MVAnYBjf0qr3/o2C07nG9/p2CTXf91I
         yLAhxsulTucj+209HKXJWKjY7CoyfeeaT6xMTKA4fR7dSepSWvZbFsZbnVfPR/q1sAwM
         lRyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788876420; x=1789481220;
        h=content-transfer-encoding:content-type:mime-version:user-agent
         :message-id:subject:to:from:date:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=yGis+9V4caNPULrS/B+IPnY4dP41gYOZBRylJwVWn8A=;
        b=c0K2twUOIHMsu/cOvD6LIaI8H633Dl5U6wVyyTsGsLFIFTksr/n9HBfzqhAhWb/X6M
         Wca36ylNi4Dj+HdvJjjqfxc7hn8IFlxBZ7sc++w4Kz5fXsjkPKh2aneQlobuCpNKpTKM
         3u+pSR3AuYXuTyaI0/YZS+f2L7ANywgUQcXOQipkbQdwmjpx23VHhrMqmf8gWHKWXK54
         fEaneXLlMB6wGSdBpi43Xi6BYm7VdIpn9lrfsMruPw9EGIoiur9ENNzXCgkorhjJg4px
         51t+/YtSWwJWMsQMuUWkucPvKTZ8hpw2lUNpjc6aOpZ0NGcFmq4tUJ2YRZ6yTTYgoOZk
         2kJw==
X-Gm-Message-State: AFuF++lEp6IGPgZK4oyyYtQbRuhlMawulN6SiDwW5cZLfSLNkK4ntNnr
	95p5r65q9Jjabl8pDEe0prnvt7d6U2m+kXsf3ZSYcN7NTHhpKQNT6JAZPf0ace2QLvL+hyOm9ts
	D+G2k
X-Gm-Gg: AYBFou0N1XSxHRAH8FUHJ9AI816pB2hnJeVM2eY7MQn4yBy+eoVJdVYsxOdsdqe8a9y
	QAS7I/69oX9RDYo7kLqutx4rFEDwWltOtnidrmFTvQVug/MboG7rivfl3lgUmW/bstGkBrmFuVr
	r7bTG1AZ73+N3aI1LV199yBnU0G5fEQXw0IdfPB7Xc7IqTwdH90MVxy/B3HzyGE6ch9lU/d9mag
	kywLuVbk7kwXBgGgebKnaTlBKgwuKkG9JuT1jJCgLYZD9+JSd4Tya1MzgFnTZJ0Ikt0IY2cgE8A
	/uqLUra7BGcvuY+Xri5wEnzFDYHmuabDQ2Tdbj5PtPMDUMIEuv+s6Gy+ydM2n0PS0gDKPKhuk0x
	Hzgcm8oWfnKd/bWYLeaC71WLBts7gLp0+UYo1m2t4ePGMlcw/U40ByhlYmMkmdWeBpR2bcQs8YI
	Pe09DTe0GIxP4io99B4MPrRSvem29RX0dgNaA+XNzZkzIg+evtvEBW3pWQQ3hFL2F8RsChllJpv
	9suWZo4xiGo3pw9QsxvAjkR2qxv7lUN
X-Received: by 2002:a05:600c:698c:b0:49c:fc6e:a3df with SMTP id 5b1f17b1804b1-49cfc6ea7camr276189375e9.30.1788876419785;
        Tue, 08 Sep 2026 07:06:59 -0700 (PDT)
Received: from localhost (h082218129081.host.wavenet.at. [82.218.129.81])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cee6024a8sm503065385e9.6.2026.09.08.07.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:06:59 -0700 (PDT)
Date: Tue, 08 Sep 2026 16:06:57 +0200
From: Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: LINSTOR GUI v2.6.0
Message-ID: <20260908140657._naCz%christoph.boehmwalder@linbit.com>
User-Agent: s-nail v14.9.25
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

a new version of LINSTOR GUI has just been released: v2.6.0

https://github.com/LINBIT/linstor-gui/releases/tag/v2.6.0

Here is the relevant excerpt from the changelog:

-----------------------------------
# 2.6.0 - unreleased

### Added

- Dark mode
- Design system with shared UI components
- Controller HA setup script in the cluster setup wizard
- Quick spawn from a resource group on the resource overview
- Windows (WinDRBD) OCF agents in the agent editor
- LINBIT SDS version in the About panel

### Changed

- Gateway lists use the same search, selection and actions as other lists
- Upgrade dependencies and resolve all npm audit vulnerabilities

### Fixed

- Spawn form validation
- Dark mode text and colors on charts, tags and modals
- Button font weight and Select hover animation
- Empty UI version in the About panel
-----------------------------------

Regards,
Christoph

--
Christoph B=C3=B6hmwalder
LINBIT | Keeping the Digital World Running
DRBD HA =E2=80=94  Disaster Recovery =E2=80=94 Software defined Storage
