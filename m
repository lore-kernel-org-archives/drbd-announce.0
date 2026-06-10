Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF6F3FBB69
	for <drbd-announce@lists.linux.dev>; Wed, 10 Jun 2026 12:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781094398; cv=none; b=GCnPHqg4nN6yLlO0mmq8vH7kQXF+aTSNJgr7m210pDLaCa8iSYWikacu8RLwLtmE2jBnzhMJbqLEB3FQtoD7qbCKRDetCvkzZtPJHvVlJeWIxfCZkVd2tfwl+lIQPWk3P32Y2S0lOSgfwws9JAyHyqsYVrrAGkU3+0BBn0S9UMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781094398; c=relaxed/simple;
	bh=sdWyRYHLbzwbLBNPKqGDbC9PmZVb7KrvIMH/lmMcqE4=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=sTWLlgZvExJL3QR9Qu837sR4VpL/PLBCp9tHHyfNSBbaFAlkaNeNWsOJZGKn32so4uBhQBgf2h66197b1ucLr28V+tOcAy0fw3xPfbq2zebYKEw4je25X5x2u/hNorxOC7igC/3UWT5MnOadl1ilXz5PgW4pQ7gFNvN60bmfyuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=Cl5s+nbj; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="Cl5s+nbj"
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-46019edc13dso3375913f8f.1
        for <drbd-announce@lists.linux.dev>; Wed, 10 Jun 2026 05:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1781094395; x=1781699195; darn=lists.linux.dev;
        h=content-transfer-encoding:subject:from:to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8iSw0liwnWlO4FUtVXOdymLTIhkk0IRkt+TPTBIXb+o=;
        b=Cl5s+nbjFOLAai1CBENG8GtLP8W8jU/e9Pnn05rmc2pTWCqiV+9On6V2w5J4wLeKay
         12OH4f4ZZMiFMlvYVfQQMLp+QOW9W0xfPtIlccppdxc6xTlVDIIimBuDK2ade8fzHaAX
         g2EsYr1qGw1Xm1lSakEBqdvm5Yta99tMfZIRQtInsK1Jw6UAhwtJ1+aVXRwDCTuiiqmr
         Vz9f6vVcVEbHjJ1pSbuQarSvzhFeASj9FhMXDmbWQ+S1lYt7t26Gg6XZzE3MGLSlDKNC
         zjTxcsFJRcpe0EDiAw49FCrGSQGiZKkLXx8onjhz1L4rGDDYOfd4haa5n50N6SxXXqyI
         +lqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781094395; x=1781699195;
        h=content-transfer-encoding:subject:from:to:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8iSw0liwnWlO4FUtVXOdymLTIhkk0IRkt+TPTBIXb+o=;
        b=l2VFZR1w8OiKHlJ6NYhRNkBgqXbZZ8g6tDDTtDJeZlZy7IKq1Lvh74+InNyLndlq2L
         t1+KLJgJwwLmWOIoha7hIhpe7Q5OkcTzevdSkNftH3wjlw6kvdJOjwPSPDj+YssUPXZg
         mDUgowVYgEsLMU+BZqLYkKLW+YL11/+BuoXyAAjgpp6zQiSGcdIV2DRa4RKV6+ypEQMN
         LYph1PNxg9iHgbnh7hC1E0oeZoJATyQQCUbpSoPkYnGnZZ0+ksZE96j1GshngSUhZ22y
         Rk53oiOzH8k+AmJeKlrQk1qI8aCFPwbp8rVd6wNeRiUc0aG0qkWZHbmhDayjM7fwoeBc
         10Bg==
X-Gm-Message-State: AOJu0YxWbh/vFuIk+iNKDdpx1sQ13nPXzlM3ai8wmcFweND7ob63Zpwj
	zxaAT0Kh8Cl797pOdiEXGV1KItYHNoelwXVunq0KQADbnXNJCGLmoyDweGZxjhbbmOyi6cuwqmg
	Gtf9q
X-Gm-Gg: Acq92OH88yEX+XUX2e649nou90QXodas37WeORLEBNfmIJL0btbWrx5EoNGiuZO1yPr
	zVBOeK8Hmp4aKaYyuiMcsp6cIdaJ6VyjDRx/YSX2deC6r3EnwJOWtvUh957K4Vjm2QQSFL+PvRK
	iLy9Bw/hCkSFuN5AgsrQveqNR8V9jnjXtCmOb9YpSjAqzL66qDf4bBb5fi72Urv/4rDFuzKNDHD
	e6UvNFkiBBb84noZFIWK/muny8Z/gh+f0rxwVCsg9MCwkD3u3T/3fijESPqU9dM2Jbk2ee83nhu
	MUKmBz/75vZnJYw4ZjrKuJ2llsI4RGRRZsGkbNXVsGLP6MYYo728sk7hMQXbtI5cCtQg1kzIG+w
	06Wc6Hq7vA0UT1MI4n2X0eC/X921NLQuvJ0pX2Wa5xpiaeoIyPReQKT/6gyj2UgI4C4DiG8H1Zi
	PfAXOgoSyViuC3toEJgn+LT6ntF9H5h7c362sLG4dtwMx1KOIpZMhSnxrTNlwZuOMRLnAwZfDtV
	+SUmgme/S8tdhjp2D8=
X-Received: by 2002:a5d:64e2:0:b0:460:3233:bee8 with SMTP id ffacd0b85a97d-4603233bfb8mr34742534f8f.40.1781094395006;
        Wed, 10 Jun 2026 05:26:35 -0700 (PDT)
Received: from [10.43.10.15] (62-99-137-214.static.upcbusiness.at. [62.99.137.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2ed944sm74102959f8f.13.2026.06.10.05.26.34
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2026 05:26:34 -0700 (PDT)
Message-ID: <248cbcd6-67e6-4860-bd1b-365c3060e62f@linbit.com>
Date: Wed, 10 Jun 2026 14:26:30 +0200
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: drbd-announce@lists.linux.dev
From: Johannes Khoshnazar-Thoma <johannes.thoma@linbit.com>
Subject: LINBIT SDS 1.0.2 and WinDRBD 1.2.10 released
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD on Windows community,

We just released LINBIT SDS 1.0.2. This installer also comes with the new WinDRBD 1.2.10
driver which is based on DRBD 9.2.18 / DRBD 9.3.2.

This release of LINBIT SDS brings DRBD reactor support for highly available Hyper-V
deployments. Amongst the features are:

   * Live migration on node eviction
   * Automatic VM restore in case a hypervisor node fails
   * Direct to disk interface (for Windows Server 2016/2019,
     support for newer versions is on the way).

I need to mention that these features only require a Windows Standard license
to work, so no extra cost for a DataCenter / Enterprise software needed.

I will present the new Hyper-V resource agent features tomorrow June 11
at 5 PM (CET) / 8 AM (PT) and will also be available for answering questions
regarding the new features. More information about the community meetings
can be found at https://linbit.com/community-meeting/

The LINBIT SDS installer can be downloaded from:

https://linbit.com/downloads/

Kind regards,

- Johannes
