Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B068240D577
	for <drbd-announce@lists.linux.dev>; Tue, 30 Jun 2026 08:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782808326; cv=pass; b=icPCrK9mujfhQh2BGTahU3OO9AmwLT88frEpuzTXcrm1Z4Geaj9F9CDV/tFn6hjlauNEDC3s4iHTIdLLRwz9Cgyb/5hormgn5/JOFoRqw6lsKJqu12F0oGafwwVYR5zgKwU7ltvxRI6bYt1PNV/ist+nVJKxHSZevP6YAZkDpP0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782808326; c=relaxed/simple;
	bh=ImCfxX4cXA6h4xqcWMFmZZ4MHDwZm0agB6lXKiVn8Og=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=IKUrRo0zVDo/UuWCCxMc5aw/ELdbGKhnnoyOIAjgvjZEOU9TNkftz/3HDCgIu4d/vMEBwdyC2wY6lr/LrfKkYUyE/e+drTabm1UIyXeHQtxzVf+RN7AO9h0TsNrUznnXO+xbmrCO3YG3kzDEgrIJs3nOKscwaQqQPVpG1vsxn2g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=KvJiBe4/; arc=pass smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="KvJiBe4/"
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-4629051c946so259105f8f.1
        for <drbd-announce@lists.linux.dev>; Tue, 30 Jun 2026 01:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782808323; cv=none;
        d=google.com; s=arc-20260327;
        b=B9dATTF7bZR4gdvMIOJz36LftmPBlTEc2MJrh/6B00pF/ExVs1w4A/r59n0VQ6Lc3N
         jUBJU4tYwFtV6J3JXNW9ok55aXY45Z9Vsrh0m+NY0y7GyPHXbzafCiKM9V7gaCxNnC2g
         W2bZOdO7O1gMcjN6hEIOcdEQVLB0NzzPZ3mxoOJlCmYCcm6Vzy8qtZC4KJCqchNWr+/I
         7RYWIQB6UxWbnfc0CfmtE5Bo8GL/g2Gk+y9JQ/h//BpuxT85I1+Dbpap5IE7/evHabg1
         JdZ7k2zgzlTu6Z2/4poA6nEP0I6kbcuCijFOh4WGIFrNHvrbypwzjREK3T/yR3sPm8/F
         9Reg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=ImCfxX4cXA6h4xqcWMFmZZ4MHDwZm0agB6lXKiVn8Og=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=GvSBK8/HV+fXpAWuMsUtEfyrftp890YY69FOP/EH+7QyFSPQCcWRLOUubtSOYP29Jr
         Fb4JLlzjC87I1nH1073Go6jiOkI5iAsYLvKvFMEba4IgBN1+x6viARi0uufZrGNpj6QS
         1qDOykG9iNqJ+SWWpnDEG5RAi49aPpSwVRTPU1qKbMKWU43MAwMcNiqnRIWvemmnyuz5
         tNzF/vf/VsIhGcyApvj3rPPt2usgZ9BOI86FduIAqZsVacRRvqULHUJ+bN7hqqYVs4P2
         LbqMHhz89IRQnojHti4oKey2uaXR4lymarDj0BuO4pVAuN7nz75TC0CdGXjRlcZ9AKvm
         64nQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1782808323; x=1783413123; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ImCfxX4cXA6h4xqcWMFmZZ4MHDwZm0agB6lXKiVn8Og=;
        b=KvJiBe4/2fQzQD/vem/ExAUYLcBrM9nOBnVMUBYKjVCR98Af1IwIe/qU16ZItwKSOG
         8LW2Dq5L5q2UnkRCF/C8ykLu769P16Twlzqwm0st70zFi4ls4x/XFokZvACCNvaY6sG0
         PJ2TisRu7q2XOMkUwHox2LaEExiWGgRwvppLG2eBdfbQ93nTdSMzkjYT0026UgDfPo3E
         5j/Tl0JZ3XyeycJ0kCOCWWrHsnnYAfiZ8Cci7fHGN7SNvZSwN1bKPCELjMMeIJAsqO8C
         Pysf/fPMGOywRg7eODto6zEO62nqvUk40QMoYzhOjeDnbVbJ5pY/xprQBlsnzQXfawGx
         mcpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782808323; x=1783413123;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ImCfxX4cXA6h4xqcWMFmZZ4MHDwZm0agB6lXKiVn8Og=;
        b=GUljvXjw4U+ro8HUUVdYTE+ZeDBcpO5AhPJxow0S2p4/96mqoMwnvZUIbZQZgSYHBd
         fk7+F3DsBQTvV0GYCKnrlePp9DJIlPJ/wJ7HvunRVMYk+ilLezk5eMCqw9WyJKaq7L99
         aj3LuMsCR4Io0QYr0AAWzMc4+ZzARoVVqnYyTF652k736AIBCuqBhLz3ukJl9hTLH4sg
         PYy7sgotcMcs53z6JGY29cbl8Ms2morS1VovbaOq1IZnkWVRQolzzxYtFHvfKL3dHZV6
         KwBus/TO2jQ96Bcqr5H9b6sDyRcHHio9LFtaoS1UPjpE+MfwEdoZV0WthrX9UpCOghb2
         ayig==
X-Gm-Message-State: AOJu0Yyzf9cZOGXtzMeNmbBe8V3LlIKx66jEiOuuf8w7ptqwxyfXANpH
	R9anQ+APKzd0JxajH1ZlIXPM73vcus0t1ZQTUST2S2YEsoP8e95KyfqE+Lc+QNFC3HJnKAwxhs8
	RrplKtzbmfFFFvPXlXtvqm4+ajKMew1cOqlaw/HyKks2j1Fe9PvFnczxRxw==
X-Gm-Gg: AfdE7clzkk196/amViJ3Xr358NCfocCru22AQSk004E0HvvEBmEg8R+10yR12arqG/R
	84pu5ei3nxF1EOj96AhTaswK3d2n0rx4QBoPAcBYkD+a22aNisAWo6GY6y3+ZUK2EKhXXjZ5F9I
	iYIJ8I952vSjvR29Rta1QF4tkM+/JHCQaCn+4YzF7UJy3u9TDBXAO2e+sFkwP35mNAIdcWOwMQc
	B88DRSKo871ggFa6e0aW6/H0ESYYq9OjXVsdAUqZXNfLkP8nCl+nkPWzQ2Y8RefowxdGX9W
X-Received: by 2002:a5d:5e01:0:b0:471:dfb3:772 with SMTP id
 ffacd0b85a97d-475dfa89694mr1341586f8f.15.1782808322773; Tue, 30 Jun 2026
 01:32:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Tue, 30 Jun 2026 10:31:52 +0200
X-Gm-Features: AVVi8CdTg11ON9ROakRT0UvEfTv2QxAli8WiT1TbFyJ8BEjneE4nuqyXcK8K1vo
Message-ID: <CAHmn2DME9P3i5oEX7VnXmE-YqUs27+HScdb8sY7ezBg_Nbb9pg@mail.gmail.com>
Subject: linstor-server 1.34.0 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

Here is the final release of Linstor 1.34.0, we have fixed a few more bugs
and sneaked in a nice regex filtering feature for all list commands.

Biggest new feature of this release is API token authentication, if
enabled, it would restart the controller with a self-signed HTTPS
certificate and any further requests need to provide a HTTP Bearer
token in the headers. If setup through the client most of this will
automatically done in the background, plugins are already released
or will be released soon with support for this new feature.

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

We also added support for DRBD's variable bitmap block size,
exposed through a new BitmapBlockSizeNewResource property.
Instead of the fixed 4 KiB granularity, each bitmap bit can now cover
up to 1 MiB,
which noticeably shrinks the DRBD metadata on very large volumes
at the cost of a coarser resync granularity =E2=80=94 it needs drbd-utils 9=
.33+ and
only takes effect for newly created resources.

Linstor can now create diskless resources as DRBD clients,
i.e. a diskless that intentionally holds no quorum vote. This keeps
quorum balanced
in stretched/multi-datacenter clusters: a diskless client running
where the diskful peers already live no longer makes Linstor drop
the dedicated tiebreaker in the third site =E2=80=94 resources created via
make-available
now become clients automatically, and you can switch a resource
between plain diskless
and client through toggle-disk or the resource modify API.

And finally Linstor now will detect blocked ports and add those ports
to a blocked range list property, it is now also possible to define
multiple TCP port ranges.

Also the linstor-controller is no longer started as root user, instead
we leverage the DynamicUser functionallity from systemd.

To mention it again, this build requires now java-21 AND we finally
removed ETCD support from this version on.


## [1.34.0] - 2026-06-29

### Added

- REST list endpoints now support regular-expression matching in their
name filters (`nodes`, `resources`, `resource_definitions`,
`resource_groups`, `storage_pools`, `snapshots`) and in `props`
filters (on both the property key and value); the `props` filter is
now also available on the per-node storage-pool and per-resource
volume list endpoints

### Fixed

- Fixed ZFS clone deletion not cleaning up the clone's source snapshot
that was marked for deletion, leaving orphaned `CF_*` snapshots behind
after the cloned resource was deleted
- Fixed DRBD auto verify algorithm being recomputed over an incomplete
node set while satellites reconnect, which could change the algorithm
and force an already connected resource into StandAlone without
automatic reconnect
- Fixed implementation error ("attempt to replace an active transMgr")
during L2L backup shipping when a new shipment created its snapshot or
temporary satellite-remote concurrently with the cleanup of a finished
shipment deleting its temporary satellite-remote
- Fixed implementation error ("attempt to replace an active transMgr")
when creating or modifying a resource group concurrently with a backup
restore/shipment that moves a resource definition into its target
resource group
- Fixed BalanceResources counting an unhealthy diskful and possibly
deleting therefore a healthy diskful
- Fixed implementation error during DRBD .res file regeneration when
the existing on-disk file was empty or truncated, which aborted the
regeneration instead of rewriting the file
- Fixed regular snapshot restore not setting DRBD_INITIALIZED on the
restored volume definition, which could cause spurious metadata
re-creation and split-brain
- Another attempt to fix rare bug causing "shipping in progress" that
can only be cleared by restarting the controller
- Release the target-side restore-lock when a backup receive is
aborted (both while still preparing and while actively shipping), so a
stuck "backup is currently being restored" no longer blocks further
shipments to a resource until the controller is restarted
- Fixed shipmentFailed always being false in
AbsBackupShippingService.waitForSnapCreateFinished
- Fixed NullPointerException on the satellite when concurrently
deleting multiple volumes with a `FileSystem/Type` property, which
marked the resource as failed and returned the delete as an internal
error

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
- Added status check (current path + content as expected) for external file=
s
- Added property "Rest/AutoHTTPs", if enabled will automatically
create a SSL certificate and re-start SSL server
- Added token authentication API and implementation, if enabled only
allows Authentication Bearer token access
- Added property "Clone/DdBlocksize" to configure the DD clone blocksize us=
ed
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

https://pkg.linbit.com//downloads/linstor/linstor-server-1.34.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene
