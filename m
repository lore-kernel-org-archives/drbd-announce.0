Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC7A3B3C10
	for <drbd-announce@lists.linux.dev>; Fri, 29 May 2026 08:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780041758; cv=pass; b=ffER4bYBF5Os/adjao3QAEGCKnwpbXlwgVeBh2snngEh3nnYyMKHdFk1lRB+wJQj6ZUYFiD8IgOH/5qgNXnK4L6ZQQAiP1y37zlRKNcl3INpj8t/sX4bNY/WjEkLzi/tsMt04OWjygS1Q+jCVWqhmMgIrKjPOUN6f8mjJGJySIc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780041758; c=relaxed/simple;
	bh=L+oHWqjM7jXD9o5U/4/gp6du9iTXKz5BKy5saTMZ310=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=IupvGXzHHh6e25accv+zNXuqxRvU8Cbw5sYpiFKhbyjpI7+OwXv1mhiA8CjsAxu57+FxfSibkDRvih7k4JusGfkwCc0N+XmSiDaO8jgFpp6uPzfanDmAOc7pnmOmU3T77eJeg9iMUcLHTiF1/+/GCKBBXJ/5LrgrLVtrwvnsV7Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=LpYnAMBD; arc=pass smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="LpYnAMBD"
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-bcc9fdc959cso2322867266b.2
        for <drbd-announce@lists.linux.dev>; Fri, 29 May 2026 01:02:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780041754; cv=none;
        d=google.com; s=arc-20240605;
        b=SI34xn1uHT5qlLTtRoSGQVSwAlapJe1xJUe1zC/CAsVF18NyNV+NiZxkMMe8jA3FO6
         fWJlXu0Yvl91aj19LHrckmFTzWiSZWKoWOMTQz3Sp3DD65ngaGLvqfIF4xBJCtvGwT5d
         rdvhKLlEpgOF3//Zlllk8MEvrxwCKUwDGTsQjrhmWU5PTROVZPu3zS4xuRqE5nltXFYl
         38tQowb2Wqn88lEvPR8hlOKBzkK9gbttQ0frHPeIdVTGHCLwpJmbsZVsoW4b5fCwrT5r
         0FYmuRmOkHxrKP/ZPog3YEqnh5toWEbVbEiXVwR5QXzeAR6IEqvUCRIlQ1Z++7ZCTU+R
         195g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=XLlylCUNfUwz8XjivJoRQEZACwIkHS7BLcQ4AMItrao=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=WIsF2zG07noYpZ+a1TdVihL5cPVmDpmpMZfwJlno78a9C1nD+yQhc3OePsQF6Y+hh0
         01vQ3E4gHBhNK6mtCynRhwPE1BxUTor0tj4PPUhH7jFAXac8vrPFB/RIga9cMOrf9HYQ
         qqan0Sw8n5vyJ0CCb+ESoJIZXNazsJZ72GSE/t07rg5VtUqQfeogg5LuZr/8AYZq3v2Z
         uX7egST52vibMvhqqXUhr/csdKK9cUPzbNFbM+seer9TIVSHOgRHtYPIe1oTdHsCFhp0
         gGDLMjg9cSpEOMIGtU7MdWBA1hThAEP09pPmO7lAKtWzF/uKM7zVCoYpgh5biEHeByyd
         5LGA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1780041754; x=1780646554; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XLlylCUNfUwz8XjivJoRQEZACwIkHS7BLcQ4AMItrao=;
        b=LpYnAMBDpzN9V5FbI0vWjC5+S7r1lXomeMXZ3/JoQLZ4OAdLnUkNsUZx8XwWIUn7ay
         N3mUYuQG+AXkg6sLIYIb/ewEw6H92E7xtM02t07GilTe8dosKqd3pEQfRtdy7dF0XoKR
         VMefpW4Tq4AVeX70EyHtbErX3sJQwbjH+47k3iIxEP+x5QUoHYu3zIDJ53L7GnLMnn/E
         H1/Ohi3yrc0oXinn4tPGgrW2s/YoTVGdrwHlI+mJt9y9QHjbACXeqB9mzVhc4/kQBMNk
         NU/ze1XLH5xCKDWAKZJW+hIjFhbW9vJZ6m3XF2Do4JfCKOUXE5lEh7UQGhbqN4TqIObo
         H5xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780041754; x=1780646554;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XLlylCUNfUwz8XjivJoRQEZACwIkHS7BLcQ4AMItrao=;
        b=SfnrbsUk0v8Hp7NZZbnR6pRAw0p03Ag5L/7oHkMzw87bFjpr1vlcocAxvWB1aoX14K
         2geHmGFgnbKWi6usiZPzq8ko/RDoMYvT9SvpTpbT5gqhaEHcFnfPPtRR6x/MLpeUpqCa
         poFSpGovMu2XE97GWUntNflmghmgBUztAA6zSRGCd5ws/EgRq5sS1/u98PGeFt4/Oo84
         FWsF5JFelx4/mopskzQadIRUoOWlVMHVJRO/rCjto3nDsZMfjFXVMfgOmQXsJedyk9la
         feBu4IeWcOHFbMB+xbv7DIybr8YidFvK3eN7ux3SXRRRUoFY1uR44l49ubWa97NeVYnH
         4tkQ==
X-Gm-Message-State: AOJu0YwFAcskM589V3kt9gd/BscPmddzktpYVfaO0Y8T7EndSewWdxFJ
	Q3hstaO5dsh1EBB3kt4+mjeNOuCd/qWX1nJdJtNo3NWsI8RaLqapqCe95Of8GxS2ZtZevxTGu29
	iMYubhLMJ4kp+xXInJRRakBIe6ed/QQ602eufSiyq2BvVHMid/kG9evZGWw==
X-Gm-Gg: Acq92OGVHNHe8tEAM/GZJ6x7PsZErjGPA2kYmRfIgMQiRBtJXUsnfSz98BGIyvS/WBf
	3iWkxUnwomqflPNjm8wj4To76hLHUZWV7zYux4cDTC7YGeaDEuKlXL6cHGh+Jkc1YTR6DTryoNZ
	LKo5TuysOttvsmtYjcSynBBdoug+MfuMQuKw0o1LOsXUYwZjA9U+Lefry6NaXAw5D2ec0tQnfX/
	39z7yZ4dGsqeNDeorzavIL52Ga0dvcKdAv5zgL91G63h61eohZ7ivxNZ46d3oDq+oUCBkQEn8QU
	X22OSW2LLpsAGiwwhA==
X-Received: by 2002:a17:907:9612:b0:bd3:5e5d:7ea3 with SMTP id
 a640c23a62f3a-be9cd65ad7fmr93759566b.33.1780041753848; Fri, 29 May 2026
 01:02:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 29 May 2026 10:02:23 +0200
X-Gm-Features: AVHnY4LjFrrfDaJ2FdUhyx0xYGkXTKY2dcBk_-_4gHflLSaK1_kDLDzu2HhCR7M
Message-ID: <CAHmn2DP+B6zpJqrtKBNw1prA5_gbrwX9szWRE64eG1sjJt4BHA@mail.gmail.com>
Subject: python-linstor/linstor-client 1.28.0 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi!

New release of our Linstor client tools, this one comes with support
for API authentication tokens, has start time optimization (lazy
loading and unecessary import removed)  and all sorts of other fixes
and improvements. Finally also python2 support was removed.


# linstor-client
## [1.28.0] - 2026-05-28

### Added

- Added Satellite Platform to node list if the controller is reporting it
- Added "linstor controller export-db [EXPORT_NAME]"
- Added commands and support for linstor-controller token authentication
- Added ", Corrupt Crypt Key" Warning to "resource list" and "volume
list" if needed
- Added --truncate flag to shrink table columns proportionally and
truncate cells with an ellipsis when output exceeds terminal width;
can also be enabled via the [global] section of the client config
- Added --drbd-client (with aliases "--drbd-diskless-client", "-c",
"--client") to
  - resource create
  - resource toggle-disk
  - resource modify
- Added new column to "resource list": "Vote" that shows if a given
resource has a DRBD-quorum vote
- Added (hidden by default) new column to "resource list": "Flags"
that distinguishes Diskless/Tiebreaker/Client

### Changed

- Removed py2 support
- Updated build system to use python build module
- Reduced client startup overhead by lazily registering CLI subparsers
- Pipe output through a pager when the terminal is interactive
- By default "resource list" no longer shows "CreatedOn" column
- "State" column in "resource list" no longer shows "Tiebreaker" (only
"Diskless" instead)
- Columns for "resource list" can now be selected via "-o" option
- resource-group list now shows also properties
- snapshot list: surface non-successful backup shipments in the State column,
  read from snapDfn properties (one line per remote in flight or failed).
  Successful shipments still display as "Successful". Requires
linstor-server 1.33.0+
- r l --faulty and --all will now show all resources that include a faulty one

### Fixed

- Table: groupby/sorting raised type error if sorting column only had
numbers and natsort not installed
- Fixed node interface modify defaulting communication-type to plain
when not specified
- Fixed missing node connection status in node list and improve
handling of unknown connection status

https://pkg.linbit.com//downloads/linstor/linstor_client-1.28.0.tar.gz

# python-linstor
## [1.28.0] - 2026-05-28

### Added

- Added controller_exportdb
- Added platform property to responses.py
- Added support for linstor-controller token authentication and also
checking for token file in /var/lib/linstor.d
- Added LUKSVolumeData.corrupted_key property
- Added drbd_client to
  - class "ResourceData"
  - method "resource_create"
  - method "resource_modify"
  - method "resource_toggle_disk"
  - class "DrbdResource" (exposed via "flags")

### Changed

- Removed py2 support
- Updated build system to use python build module

### Fixed

- Fixed Combined+SSL nodes getting controller port (3371) instead of
satellite port (3367) in node_create()
- Fixed netinterface_modify() resetting encryption type when only port
is changed
- Fixed incorrect Volume.layer_data, .drbd_data, .luks_data and
.storage_data property methods

https://pkg.linbit.com//downloads/linstor/python_linstor-1.28.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene
