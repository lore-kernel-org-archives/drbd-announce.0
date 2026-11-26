Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.167.50
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1795686599;
	b=ItzzKAwegaAImnhb7rJVp2jH3FnKV4cP/8UweaxfrrYyeS1Z9ZoZdgM7LvyU1xQ+d33N
	 7nr+Fst5bPxiHTaNl7UyeoukOAvjhvAasi2iRTb+BXsLituHwjcupmXwIG+axtb1at48G
	 YjmRGmQadBlVjMBUMVh4ELkhGhSALUbxsMAZrk1/9Y9S1ySGl92h7wjJvhDuStCvRatBx
	 iYNnbP52ju+Vrbpx6VgrdqKgM0GNJ0w/xjvf7J9h3ZZ7VwIEoClRLdazs6I2+MowxIjlE
	 1paChCLKH0VR7NHi8AvSrC7c1D4Fx58h2AzijSiKTsT3o7ku89Z8IQAZuruDLgTD6rw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1795686599;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Subject:
	 Message-ID:MIME-Version:Content-Type:Content-Disposition:User-Agent;
	bh=v0VxzAUfGGeaPgWPfoweC8s8jbKw90jwnbSosOiA9CU=;
	b=O+8ZLFv1p4JRYD0vhzNxsv0MxFgvry+WSKrrpVhCGre8nsKFZK3+JzJ6Tl2T3O1dx3Ld
	 4fj5KH5D3y9PHjIDPpwZWgf5fg8BpPDRe+KgvTo98K/mHEetWQx+VFtTD7zDpYyFFt/xH
	 FzoRveHh5UDJkjzn03d2FkwFmFUdNBYShGleZonh6BSHAg+TY2ugkrHoRJDwGSCJc/FbS
	 GpD4jb+iaXApvggyIK5oD/5nD9hjmACklvZkUDCCydSPbCOs7o56imFdcBDzJDSqbxd5K
	 WioXhjXltojDk7w1SiV0190O+PfsI1b3t+nsADmBU+qlnGvoAXRt4eck16EjipJpAnA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b="k+Em/U3H";
	arc=none smtp.remote-ip=209.85.167.50
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F858606A32D
	for <drbd-announce@lists.linux.dev>; Thu, 26 Nov 2026 09:49:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 8F858606A32D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=k+Em/U3H
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5c1b8120565so4274997e87.3
        for <drbd-announce@lists.linux.dev>; Thu, 26 Nov 2026 01:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1795686596; x=1796291396; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v0VxzAUfGGeaPgWPfoweC8s8jbKw90jwnbSosOiA9CU=;
        b=k+Em/U3HDjqRzfKjAUjppbEZfk0nQaB2OBJmQnzaGtmNwKhS2dEXlb0Czm71u9dbCv
         ECxfEDc99FWHn5c8aof+ZAD3c855F5udmVcBVKpz9PTqxxOLfesR869MKlsS3TilOm8y
         lYuOTceEOyiF5qySes/eScL6uanJaGu6abo8NpNgCULSQ4L3fdQ8xqQLohEYzyFfTBDV
         6spZWDb1QO5fWxM+TiIR+GzY+pphsjsq2owAz9M1rXR9F2CyWV/sdvu/62NnIOCYXRZG
         Voe1nr5H/BMrz7jImkRxJ9WCG5CrEaZoQ6CeylorR2kdQSzqXLWAV92YqVVvYmnByXK6
         LyEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795686596; x=1796291396;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=v0VxzAUfGGeaPgWPfoweC8s8jbKw90jwnbSosOiA9CU=;
        b=wZXAtdGmZC0/axm2q/6GPCW3UaJy+Y3OmJenRzR/lNkdKndaOoDmA+sloPpZAiiMaX
         ihTnoNXPhI+iGhmMjTjtUseiUMay2txT7bb5015Xfxih88e00bhvwRzVHeHLLrXG3YpB
         CA9s2mvl4KrRz6yAEo3o5Z5SzPReg8Nw4aCGMheCpkJ++dORZAR1FgHDjY0AoegWf0SF
         hzlxMI9o6UpxG70+hi92l/fyDQl8erJ3PSlbyIQJugRvX1Uxi2qE4N6Xl8T04QPKlY7Q
         bbstEHq+pjZULQJTHB4GxeErgjJgLjWmfkhAzdMgOQC8TPfHzg+UQOEDfV5KrNNPOxQM
         sxfA==
X-Gm-Message-State: APuU4Z+a3xw2N/6TRdMszfy/BcZfC7uDvwn0b/5ssFXSJgNB11FF5fUv
	5Ee2miY5Yz8sTvv8wNP9KU5/O5sP/5CEs2K4mwEZOgOrv6IJz6HVhnnrDreimjh08NawNbGdGYk
	UcR9f1w1iIQ==
X-Gm-Gg: AZFdTZdyItlg3pjDjwWzzcQD13Y4y5BSk3hmNlx2TFIdZaT7DubgfxZvJS44g+TfQo0
	BzfjmRYPBiq7cWD3OBGuJSbrRk/fQHUSLbUwyFt67zHK2b4QOcukhGbKpabm+IJPCpI+/8QP98E
	gkv7UECpKxBnYSUI36eoI9aTSxooroeHPFEEk6Ps958+tmIeQtCu0rrggsvW+SgJ+0z81ExG++O
	GSffHFQoOJhuSAxp/0I7Svw6pNOrhUmhePu5WPeUThwZ9dAm/ZBV2ebvLBP9pp/NsTf+6v2zvWF
	moIR1sTzbNwXb5zjeFAjAh5TGvW4zWwHHNsKRAGTZpkw6DYRGmGiLXmAPUIcHsHMGaM3bXvTmvk
	xA9ExbU7Krc4XFBU6pNu6qe7X5WJ6VAnUhL/Xs6FQClPqdeWX2IH3LfGkc/PhuSmoIy/XOBe56b
	KprOyi9A/ReSP4Md3cKfbUQ1R/OQmz1UjcOpwFm9ZFWHlwVYjdCukmUpPPKz49acxBC/mCF6+sA
	TFFcNoa58ThMU199nKGLprZLWUPFu2CHZvNb+vdudwaMfHKj2t0/QIXCBFZ5Z987QPLsjQ+mYH2
	xbtzvE7fBn0SLEdTLLjzhlSXMqLOwVvZDekRE7Jtm4IGKkDWKYm8EL8/3KaXkxxlzaq3XTqKKPY
	xC0URkg==
X-Received: by 2002:a05:6512:3a86:b0:5be:590e:ea76 with SMTP id 2adb3069b0e04-5c1bc680e86mr6673450e87.6.1795686596259;
        Thu, 26 Nov 2026 01:49:56 -0800 (PST)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c1bd081f29sm5124462e87.84.2026.11.26.01.49.55
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 01:49:55 -0800 (PST)
Date: Thu, 26 Nov 2026 10:49:55 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-utils v9.36.1
Message-ID: <awgAw456XgItTowP@arm64>
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Post: <mailto:drbd-announce@lists.linux.dev>
List-Help: <mailto:drbd-announce+help@lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
List-Owner: <mailto:drbd-announce+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GQYi3ohV85h3Zc65"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--GQYi3ohV85h3Zc65
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is a bug fix release on top of 9.36.0 with a single change:
drbdmeta now opens the device read-only for commands that only read
the meta data (cbt-dump, dump-md, dstate, ...). So far every command
opened it read-write, which failed on devices that cannot be opened
for writing:

  open(/dev/zvol/pool/vol@snap) failed: Read-only file system

That is the case for a ZFS snapshot made visible with
snapdev=visible, which is where "drbdmeta cbt-dump" has to read the
tracking bitmap of a snapshot from. As a side effect, the read-only
commands no longer ask "Exclusive open failed. Do it anyways?" when
DRBD already has the device attached. Commands that modify the meta
data are not affected.

If you do not use the cbt commands on read-only snapshots, there is no
need to hurry with this update.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/1089386bd64e03d7ea16b4040b5cf8b08d7680f3
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.36.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.36.1
-----------
 * drbdmeta: commands that only read the meta data (cbt-dump, dump-md,
   ...) now work on read-only devices

--GQYi3ohV85h3Zc65
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmsIAMAACgkQRgmezyI6
myKXeAf+KVsSf60ITGcJnjsDXoqyBUg68axIAjNezlKaBGXl6CQqBbBIUj9o5uzw
r9rsXo8jseI7m7eq3UVNCD6w61/J5AODYU5nX8hUbmXvqv8AGk/aMn3pSb8rPwbz
VBaoJPxb+eht7CVIbEkD88EmGiqlkPjpDHBtjj2ps0u243KhUTV2uDelhXL1c14g
aA4hOJGeRn2HTTj+qYf6cuZXq6SQS1KjNXx5E4GTcrYtzIjNhtJzvZFssvOTJ9B+
WMnkMshU7y2i4b6xP3RLYFZFRBVRa5ybnYFo0SCBEKRA4V6dh09ub4bgyLZ14BHf
2to1QFo8swE/2p53VbNfWe0qrSrP0A==
=jOvo
-----END PGP SIGNATURE-----

--GQYi3ohV85h3Zc65--
