Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE683B27E9
	for <drbd-announce@lists.linux.dev>; Fri, 29 May 2026 08:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780043797; cv=pass; b=Ci7cMcKwA48IJ+mZPh65S+MLuZLm/olJ03UXD8hDGTeymmaRBHSxDqNZnUHLuz4mihikGy7NONg0HJoP+rDivaRE/+nDXeodr8SoWTKFDKPZb+jMdsnKRH76xRM6VUKKbfBCRCtHOexFlEs+mAH1SOS1UHoQXB+wxeHtE7tbwEY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780043797; c=relaxed/simple;
	bh=V64KifFayDXGYNYnuBo621EN9oEPhljYvQPZ+pxY6KQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=EJXOxk2gAIAlf6GZIJvFtiZpFC9fo118BFKuHIDwQlGtQGrIU4rW/6W77YnBsUv6xZDiZ9gVdyH4iT/E/rGYb2lGkPKt9nZhSe2VyzJvc/ok1GntjqnXi67AjS0SEsi/8D/QmoyOHhRLhTs0j9TiMDGPJ36ufdCYuDFE5Oj3mIU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=0ROAwOZT; arc=pass smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="0ROAwOZT"
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48e8132c6d0so86681325e9.1
        for <drbd-announce@lists.linux.dev>; Fri, 29 May 2026 01:36:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780043794; cv=none;
        d=google.com; s=arc-20240605;
        b=LD/+KLriW9Vkh/SLhO9c5Omeu/uY3d/W+ezu23lZ5otSaf9geiTxiEkTf5cr1w//wL
         02jcNnRF2+qqDfGr9HBUG4ZdRl4eIsvZ/Sq28NOB0sKRkih0tgqbfD1awVMeUfA80W4p
         AcW/j1RLoHfLTpOM0zMv/Bs5B4TTKsxEetj6qbJQacEvFQqgTPBhbtbnPIo6suj3mLF7
         Gz69HmaRwcyXXagsjZ65S7OMr8FBmJFjTKM3O4V8FTlF5kiWERR1eqjdufZeOZqr3PDK
         bJ8uRn7z6IeKnWyPFrsduS0QNfN6uyc+N1h7F9W2XX0rGFOe08aX7AzElL6E1czsFdPe
         VmLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=V64KifFayDXGYNYnuBo621EN9oEPhljYvQPZ+pxY6KQ=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=HLquFUpzzMACPll2zPedaMEz+UHg5kaW147w5r1K0IWh8PPq1YCuvu4eNklkaZRRYx
         LMphKeqxAthUmOfs3vhS1OIU33j4hp6a0WC2RqVZcOdwIiN/7bJQ3gHbjHlUlNc1qp1D
         tjVu8QUnBGb41AgpKwBiAMq4iQW4YFFiaHAfOxeov97rSPk2vviPWlwdjVb03nL/X46C
         /e1ZdS4Ls0qancMrMkOTzMak1SgbYkcIgDN/0xWCBftBXYH0BZZJVUiPIw0J0Ss9BlbI
         niHYFY7+CCeKsQko/YPL/VdgMz1m9cCMpvg51+JFcoIqqT1fiBHS7Op4qRpBu2o2/Qm/
         35pg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1780043794; x=1780648594; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V64KifFayDXGYNYnuBo621EN9oEPhljYvQPZ+pxY6KQ=;
        b=0ROAwOZTKcKhA6eRSo0+27DJm9WvKoUAjx8JMgUN3taOrnvRlQaLxQxerNos7pBl0B
         eX9nCbI8kwLGY+LF4vIJIWcsFnSdypwQRwkdXFPXgrqRTis+V1Y1Axr9dHw0DWXU2CQE
         Kus4LutL30VuNcMQU/XFKOSS2cpTBnvsBkzaeW/rQqBy+PMo25G/oDSIPVEslgI1N/Fs
         DNwG4zZOeed830spRezHd4Uc8U+50mp52CwhOWzHTxTOYw6O7z49o8ckZM5u707TuFfu
         OZhxGcaMiov2dhdGFTcnVHVQHgjlzl7BfF3/fw3He+R2mfk8o05FZ9aMJKytaXEeR5xV
         2aQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780043794; x=1780648594;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V64KifFayDXGYNYnuBo621EN9oEPhljYvQPZ+pxY6KQ=;
        b=oC0MpythB3NwPM6pJTdsAKoM8f5/Rtx1FTCiamo5fDDjXbwnc9k9UYf6HifRDSpwWR
         gs9vyK3ZHZi/1KDMh+9WJtGGFx8S1FiUdTz4r+JViCTKaVuUJnMa0Zn6UCJIoy0gvUx6
         jFFp19wj14AauGMbFbi8FNg4+jPVB+2CSu3fXTIYA1VQb1obzZ/K04qxlPYliQY6kwF/
         JPHEtKHFTXuuPptPFy98XWzZdgTkbpAT7mzPYe+mmprAgqfoek2t2XMw8u2JuyYwD7ZC
         0qocmKJnq0GqG4UW2QTj6gut8Fvv8Z8EvAUN69nO7eQwTs3ZMUJ8Tz1nvAVkDv6PdzuT
         DvUQ==
X-Gm-Message-State: AOJu0Yz3/Bn5iO+QeNgg/vQlDQ5A0vSDijfkpyfVNzrmoH5tuGTzABo1
	687uHEoJDhOF8vtHHPVkv7fs/5DrSVqYQeMTb7mPZ4AIM2sKAlF0JbIt5DsAXIfx74JDw+vRm7z
	ydLH0Ur71k2sOx1+ohDXWA+7sNDKQL2ts76LkwCOie9X1yhPBwgF9+Yo=
X-Gm-Gg: Acq92OHKn/EP2DXCVUbetuSsH7nHbYHBbzFW/g8PSLSkexOhQEi8zt8yS1mZK3VKdh9
	gFb7yNnRQdCxo1jYSCtedVNrTSlu7MvkEdyr3oo4dbIZt7ygojDN3u4J5T4h6sQQKTFvdlEekho
	65FWje7+rDr2aEusJ8q///nkUBD5sFzgq2mttvcL0xFgSkOrv6DKaeb6SzSuh1wJaqXPpSFC8Ba
	x4E/14GPwyIZsatuPmnOKHcczk4Q3ro04YILojIPFQnJshBeoS4zl3I+PngL3lgtQST7AiwGL1Q
	cPR97cFCo2bNKwJXZ4JazWSx801y
X-Received: by 2002:a05:600c:12d1:b0:48a:5970:1fe1 with SMTP id
 5b1f17b1804b1-4909c091fd2mr19827345e9.4.1780043793806; Fri, 29 May 2026
 01:36:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Fri, 29 May 2026 10:36:23 +0200
X-Gm-Features: AVHnY4Juje-9nvffWkR-Ow1NHSwYqWhYXbnpT6KTLVXbx0d67t7Hs9XFcVaBXYs
Message-ID: <CAHmn2DP38Uhu0eWrqmr0C6BAvYKu22YoutymqRJYZn7+K2qbnw@mail.gmail.com>
Subject: linstor-server 1.34.0-rc.1 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is finally the first release candidate for the next feature
packed release of Linstor.
Biggest new feature of this release is API token authentication, if
enabled, it would restart the controller with a self-signed HTTPS
certificate and any further requests need to provide a HTTP Bearer
token in the headers. If setup through the client most of this will
automatically done in the background, to have all plugins (opennebula,
cloudstack, proxmox...) prepared to work with auth tokens, we will
have a longer rc phase and plan the final release for end of June.

Another "feature" is that we finally improved our timeout checks for
external commands.
As long as the external commands report some I/O usage, they will not
strictly time out after 45s.

Then we added a new Clone/BalanceAfterClone property, that allows the
controller to place an additional resource during cloning. This will
help distribute space in situation where you have a template that is
often cloned from so it doesn't always end up on the same nodes, in
the beginning it will take an additional resource, but as soon as the
BalanceResourceTask runs it will remove the excessive resource from
the most used node.

And finally Linstor now will detect blocked ports and add those ports
to a blocked range list property, it is now also possible to define
multiple TCP port ranges.

Also the linstor-controller is no longer started as root user, instead
we leverage the DynamicUser functionallity from systemd.

To mention it again, this build requires now java-21 AND we finally
removed ETCD support from this version on.

## [1.34.0-rc.1] - 2026-05-28

### Added

- Toggle-disk can now be retried or aborted.
- Added export-db API
- Satellites report platform and OS variant and Controller exposes
that on the REST API.
- Added property "ExtCmd/WaitTimeout"
- Added property "ExtCmd/TermTimeout"
- Added property "ExtCmd/KillTimeout"
- Added property "ExtCmd/IoStallTimeout"
- Added property "ExtCmd/IoPollInterval"
- Added "Linstor/Drbd/OutsideAddress" property for DRBD's
outside-address for setups using a NAT
- Added optional alternative suffixes for external files
- Added status check (current path + content as expected) for external files
- Added property "Rest/AutoHTTPs", if enabled will automatically
create a SSL certificate and re-start SSL server
- Added token authentication API and implementation, if enabled only
allows Authentication Bearer token access
- Added property "Clone/DdBlocksize" to configure the DD clone blocksize used
- Added "BalanceResourcesSkipDiskLimit" property to skip balancing
resources with more than X skipDisk resources (default 1)
- Added property "Autoplacer/MinThinFreeSpace" that disqualifies
storPools with less free space than specified
- Added linstor-config disable-token-auth command
- Property Clone/BalanceAfterClone to autoplace an extra diskful
resource after a clone operation
- Property Snapshot/BalanceAfterRestore to autoplace an extra diskful
resource after a snapshot restore
- Added property "Luks/AllowDiscards" to enable discard/TRIM
pass-through on LUKS volumes; when LUKS sits below DRBD,
rs-discard-granularity is also set automatically
- Added "Client" as DRBD state (non-voting diskless peer)
- Added property "TcpPortsBlocked" on node level

### Changed

- SOS report now uses export-db instead of non-JSON database dump
- Minimum java version is now java-21, please upgrade if you want to
continue building/running LINSTOR.
- DRBD: create-md now only times out if there was no IO for 45s
- mkfs: mkfs.ext4 and mkfs.xfs now only time out if there was no IO for 45s
- Moved old property "ExtCmdWaitTimeout" -> "ExtCmd/WaitTimeout"
- SOS report: 'tar' command now only times out if there was no IO for 45s
- Don't call shred on ZFS devices as those are guaranteed to always read 0
- Upated debian package compat version to 11
- linstor-controller.service: switch to DynamicUser (i.e., execute as
non-root user).
- Systemd-notify: Use SDNotify library instead of calling "systemd-notify"
- Thick LVM: New volumes are now placed on the least-used PVs by
default. This behavior can be customized via the new
"StorDriver/LvcreatePvSelection" property.
- Check for valid storage pool names on resource-group select filter
- Controller now ignores case when checking if a NetCom is enabled or not
- Default evict timeout was increased from 1h to 12h
- Property "TcpPortAutoRange" can now also be set on node level

### Removed

- ETCD database support is now removed, please convert to SQL or CRD
DB, before upgrade
- Removed K8s migrations older than 2023 / LINSTOR v1.21.0-rc1
- Removed SQL migrations older than 2023 / LINSTOR v1.21.0-rc1

### Fixed

- Fixed incorrect default LUKS2 header size calculation
- Parse errors during ctrl -> stlt authentication now result in
"AUTHENTICATION_ERROR" instead of "OFFLINE" (regression introduced in
1.32.0-rc.1)
- Fixed free space reporting of thin storage spaces (Windows) pool
- Fixed race condition where after a reconnect storage pools might not
show correct capacities and freespaces.
- Fixed PREPARE_SHIPPING backups didn't count as active shippings
- If a satellite cannot decrypt a LUKS key it no longer goes into
FULLSYNC_FAILED, but just marks the resource to have corrupted crypt
key
- Fixed auto-rs-discard-granularity staying set on devices that don't
support discards (e.g. LUKS without AllowDiscards)
- Throw a CriticalError(restart) if a JDK spawn helper exception was
caught (usually a JDK version mismatch)
- Fixed bug where taking a snapshot on a not-only-DRBD resource could
hang indefinitely
- Attempt to fix rare bug causing "shipping in progress" that can only
be cleared by restarting the controller
- Fixed rare race condition when changing the LUKS passphrase
- Fixed bug where trying to start a backup shipment of a rsc that
isn't UpToDate lead to an AccessToDeletedDataException

https://pkg.linbit.com//downloads/linstor/linstor-server-1.34.0-rc.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene
