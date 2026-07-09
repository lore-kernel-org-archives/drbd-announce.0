Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A843019BA
	for <drbd-announce@lists.linux.dev>; Thu,  9 Jul 2026 15:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783610547; cv=none; b=C1j/BzV4G8O708LCio2YyrurRBG4lYbGkEHNmEG+Z2sSV7Q6v6pOZ1jMojL629FR/Tk9YBr8sgg+NWtm3a7mnSie9nuto55B2AONGcJGCA89HqIo1WlhtFeOxGS8AJJF936LjvhnXm6TXw613H8Un4BzdhJp6JXTwNgagE1ecQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783610547; c=relaxed/simple;
	bh=4k+Gddsul28HOzAx8jv2JOu7fpkuZG+B/2viwIkrn6g=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=pGzaBQsSIXGncFq7g0cOi+waYyiLZfHESGELC+hPfgssZJPSLT0/L5z4wpKUvVhV236yO2y0W/+lFlmoQuFDxjNzxUocH5/yaSvBKw806Ka1S0V9z/2ofJVD9HIqZn9S5yM2mdSv4XVqAEkWbX0dOVoDRfe/p5U/J1AQSTctRgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=DGjrI+i4; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="DGjrI+i4"
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-493d1e8aa46so15682225e9.0
        for <drbd-announce@lists.linux.dev>; Thu, 09 Jul 2026 08:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1783610544; x=1784215344; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:subject:from:to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=4k+Gddsul28HOzAx8jv2JOu7fpkuZG+B/2viwIkrn6g=;
        b=DGjrI+i4PE9dSJZqB5kssxmayArsUUscc8u/quCgxk4vkv+VHtxYtq7uxfrJdXO+Rs
         WkG033HSINIJW6wpC+4JvGc2fUcNwFK8bliIAjY51BnezCziNpNMp1fydc1O1OHCVB6c
         ZnDZe2eE8yl6n8FtG0hrZ4TPtLfvZfegmNJer1CRkXetCUOAFBFCwhn1Lv7R7pdduchU
         FbAh+p6kesrgSoqifoTpL7mgebYu7PaTqqfTtaNsNJn3/FBwSuNUxsALYuc7tvJerSoM
         3rZLh15ex6vWAbOEWpUWo7BC+GcP1RiD7hdEL5Djx6GC1qrvI771ar3bhjouRRtlW7pt
         Lwng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783610544; x=1784215344;
        h=content-transfer-encoding:content-type:subject:from:to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=4k+Gddsul28HOzAx8jv2JOu7fpkuZG+B/2viwIkrn6g=;
        b=gnx+VErlKc52nlQQvYxfip663pqD8tZb15uqhzVBljr3MMDpMaZEjmHkdoRcAdUkB2
         LUAxwqI4xPxqqp7KMunqedHKIobXja23DLinBnZJ8KvoBmt9Lce4fs4H4k1i6SU/Jn3i
         cRxkeSoHzWF96wd88qvB3mHTe1GvHTPdSxq/fRkij48hdLDzI0Gy91nK00NZyFS4FyHQ
         uzKQVNI8gLM6yEzkneL7V3zuKE+FKSOYs2572JsUSGo9g1HYud2SHXMusT9LGSk301ip
         bCGZ5SdbFCFXLlkcUfu1KeN/rxeQkSCX/aTwjvVZc/3grG2z0mTiEQFNzYGAtpxV3txr
         UW+Q==
X-Gm-Message-State: AOJu0YxKngirj0UvpDGYmi8/WyWDqFePE+los5QNZiGwKbvDsOMFTkWm
	ACV4pTy2TbKO21dV5mQtE3QUMcffe9GUNWuOxtimMiDeOFC4CQOZLuTVVH9UoYd8ZeUF07HcY93
	LCP8j
X-Gm-Gg: AfdE7ckKWVExKsY+nRpUQbfOfYpPCmg4lATq42EeNqXRuJwaV1TigncHp/64EGG0MeE
	wDm5QMqdPy1+bJ0WEdoEIq3qL76vjTli7uNJQKv4mREYj2SX+b6Iu4gQz5/K9xptBJQfEyfWwYD
	LFwPdz+hwXMO2svLjF8eo8szyrp+jbUozdnfQOp8JUImlTNLw+aGI6H+yMfVFrAiIXOo6RU//l/
	N5DFruHjxnVAihy3DJBAXI6BXzMQaL8WCzCrU6eV9aMJ8RgVUQmQagBHKFCg/zqL+lqRy0fpSF9
	59Bu6zsYhVBSuwu0YkD2y8pdFoFukfetF0+BvJ+plZaP3wUCzTXb4uCbpQTEAFgf+L2icSNU5YG
	hE4CWlqTho9r0XpKMVX6qp0V3bh1xV/bIeKgxXAuw65Bu2d8wuZ3FwGpaomRb87jJNN7aSoGcxY
	SihQ/nbi12GaXvFepdg2N/4lLzra4g4wlL6BYSlOfqBHY/eWUWeba64iBxpp4YYrEXPVdrtrgdx
	Ly2OSVM
X-Received: by 2002:a05:600c:638d:b0:493:b962:4abe with SMTP id 5b1f17b1804b1-493e68f4c80mr71709615e9.36.1783610543732;
        Thu, 09 Jul 2026 08:22:23 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at. [62.99.137.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb742d0esm67688295e9.13.2026.07.09.08.22.22
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2026 08:22:23 -0700 (PDT)
Message-ID: <2d30d10b-ad82-49e8-877c-72ca7af62669@linbit.com>
Date: Thu, 9 Jul 2026 17:22:22 +0200
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: drbd-announce@lists.linux.dev
From: Johannes Khoshnazar-Thoma <johannes.thoma@linbit.com>
Subject: LINBIT SDS For Windows 1.0.3 released
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD on Windows community,

We just released LINBIT SDS For Windows version 1.0.3.

It comes with WinDRBD 1.2.12 which (amongst other fixes) allows users to
directly attach a WinDRBD disk to Hyper-V VMs also on Server 2022 and 2025
hypervisors.

Furthermore it is packaged with LINSTOR Server 1.34.0, LINSTOR GUI 2.5.0
and LINSTOR client 1.28.1.

An evaluation copy can be downloaded from:

https://linbit.com/downloads/

If you have a LINBIT subscription, you can download a copy with a signed
WinDRBD driver from the WinDRBD customer repository:

https://packages.linbit.com/<your-API-key-here>/exe/windows/drbd-9/

Best regards,

- Johannes
