Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.221.42
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792586899;
	b=py9FjT1lhWYU0J+/2JkgHZEhB/GNXq4BlWCAuMQze5Ynmn4YARkbX00/vebvuvb+7OGL
	 BLr/mupSElJRJFzrkC/9JFUI1sljhfOq6fC/dySc0DFjyw9TGw7O7RtchutS67qvcl8df
	 3jEhCbT3lFHPNxe3BD8KqTO/F6llx9QvB14Zkgdo/ftva8X1sZfZknTecwpzbvIeeKy9T
	 l+jIBCOUta3kxozxWMKKc0fypodr/zGu9/ulzmo5bz27jjIVd9ryFFmNw/NcGntYf4v1s
	 mQOj2hyfRCCRkWUktEbRouco2VNaprW5x5x0UyhqH9Jx7ZTuIjJqbFVCoPTsEqBCbdg==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792586899;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:From:Date:
	 X-Gm-Features:Message-ID:Subject:To:Content-Type;
	bh=bCBqjwPRgXfyjkTgMXY1Pkps2yjiLllHiimg95ZAnic=;
	b=wTn8rb11sj0fYX2KSUOG4vTdSvWVGBguUgNo8UsFFkff7rdqyQbnMQubH0vA5JmZ3IBJ
	 +4xnR+ZzgwZSfRTXxwFV+CtcLibQmnAhlBX9SPwJDEsQTRQVIcKA6pd41Dpnv+2MHsJqc
	 hzH+EiExCOGdAfY9VXV2YqzGTM+wf20SQS/jryl8XQRKX34F7riQUyvPSfs3shQiNzLGz
	 og8iyCVWYfRUHdf9/daYx/vNe/TUzRWPq5JvzVoTAa2NVf3PhkHDDMTziDPRjVapGhldG
	 hAh4Be9jc/eZzTnupGC13I5TbIvGi5n7G/O7+p1Bjugk9KGoljHGV9mChPgXQp9C5kw==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linbit.com;
	spf=pass smtp.mailfrom=linbit.com;
	dkim=pass header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=lrwj+9Sm;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.221.42
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A14D606A31A
	for <drbd-announce@lists.linux.dev>; Wed, 21 Oct 2026 12:48:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5A14D606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linbit.com header.i=@linbit.com header.a=rsa-sha256 header.s=google header.b=lrwj+9Sm
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-48df4f540ebso406932f8f.3
        for <drbd-announce@lists.linux.dev>; Wed, 21 Oct 2026 05:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792586897; cv=none;
        d=google.com; s=arc-20260327;
        b=p7Kw+vFB7iZLQihWCzfsgu/IXD/wA7udqNQUcyrYFEkM2Fe+wk4HYyyxJXvD/LPXTu
         Hn0zexw3JzocuBwLHIsiRx4aLGqjmzQiviGN0L1sp2vRF+9+bH2rW4PTNQD5HQZvg/h3
         l8sCFvHHZP46dksEFx64aBvg5081as8eGSYNGcQ/e86MEWJCm5NC3oRzyXGQtMOXS3DN
         ZwUD6qd2VFgfoWer7YX3mCto8VHLH+QU3P8oI0tFubbha/6xmnvP19kRDqm3v7G1rSsw
         6cEWy7ZCc9IOD0Yy0TMwmQZ/dGp2BVZ9lQ+d4npx97d6LKXK73I/rhVqeLaIRwqo8VBA
         WlJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=bCBqjwPRgXfyjkTgMXY1Pkps2yjiLllHiimg95ZAnic=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=NaVVg8zOt1Mgbwf1KvFcCa+xv3owjgd0XKv90o6X2iHqXj3RiBF5VOCLvbFJ6lPrap
         6WBO/qjrv9Nc4Wj5QiOlSOStAzwFj4zcE4Cp48MofnAbKF1OV4ISN3Ja7Gk1yjLlvoeF
         nL2BlicYnUWxah5bCEEIHW84nItskoF0STnIRt9dEBIfezCB7dECfbO/x3TZjAtY1wBL
         XLMvWLHy82qc+MGuftSVq6abOte12beaRm3pOOJoO/8hDmrE3R8nzKgcQPNICZiKnL0M
         lW4fPIV+ycFHPyqiCV+Yw7IcuH9h1kcUBb/rxV5lvXbk9NIKorOTV3x90h6S/3KNWknu
         oHBA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit.com; s=google; t=1792586897; x=1793191697; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=bCBqjwPRgXfyjkTgMXY1Pkps2yjiLllHiimg95ZAnic=;
        b=lrwj+9SmNmHt5T366yz0KmwEsvZnI4GcXlDsyKv28FsEGZHeijskz5/iaxiGxy63aJ
         Ji5ZOdDClBi3rmUgtVKNyNz/AkHL2YEZ+Ocn+PyN5c79pZERrcEbpnkKAgw/kgxkNxWA
         wbz9nBPLMWlGBI7tP6GOlLHg9lD8+db8RvYalvIyWJX09L/LbfkjC3oQXm/+895Gb6i4
         5ioBCJIvM49Hp0uqnsfDM2xOVWZN2mBgiZB2i2AMyN0zP7VnarkcpIpfEiafBptZe6ph
         KywuOtyNj0U5JsPhcn6UyIu2LW0nMQnw0TIzfcXl43D/adchyF+uuCdqDhjc5Y8v8vYQ
         JAHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792586897; x=1793191697;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bCBqjwPRgXfyjkTgMXY1Pkps2yjiLllHiimg95ZAnic=;
        b=Y7sxdsZCNpt/8wsd72SChqtfCt3G+vCHC52BPJFHE3XezmVEumu1vusgyfuRC9sVLo
         zl8sq6OYu6ZXHQZr+Hr08ywMFFyzQM9zln629bUwWuxFpV6XK+r/GnEQ2hwwXFb1zG5G
         lQ4uAiHZhqxo20rrQjxVQmgeB2oAN7jwdRqRz+bJQBhkR3J0eIQaJNLyjhT/b5qFIvtu
         xFJqqfEiy5nA8ehzcGjckBkHKe4APmnVvGh220iuUhJdf58PQzju/FqQ/L+goDYToQz8
         IDpJ5HlAOofTZEhotR+Nn8FGIKeVaJVhs5vOFxJmyz4rhsBxBpEIGC121HO8a0N+VBbK
         zsGg==
X-Gm-Message-State: AFq9FYI6vFgJOA7l+aVnhDGHIM9INHw5XJqmz5ujt/5zgUiBXY7bqugR
	YoJXH7a1hBnDkz0auE6DFbZX0hSOGq3EOrcwRb3B1V/1KhDTbwYYzPkPBjj6z3416gYSmdh1QeE
	kAXCV0B5k6apaK5DG+n0Hwo/paF/a59DjmkaQVOdCdnT084D8d0ARLWgcDw==
X-Gm-Gg: AYBFou1QCWBm/z8/Q1iI+LUVciYsrR5qBuyYHvviB9GT84Xk8Nzny8072TzcVJRjshw
	Fbfn4oYZ4Vg3S8buIucTIzZ9RL2Nahtqgi0hLdpQqNKaoot/mZN0tibHcIYxEKC4vrFy/8NMHfL
	hu4osLbSvOm24oEtAl5H3SIpiSuyAdXtKy8QPWG2LazhgKUK8NvGG8k2mL4kO+AjAWNWL1IGeL6
	0qNbmYiZriIF6Y0bEgrQg/ITaCAATirNW+Y4P0tcUbamBMnbBSj2bVGSobAM9GecmZuITQ1zj/C
	KM5iYhO4sAG9dEXtcJGa2lat351JePK8CIf7YdlEVAUuwXpnpTM8nFKLz+HejlrSqCAk9GOB4CF
	lecXnySxsV7yUzrL/fOUURVImaw+5Dsdkg53L
X-Received: by 2002:a05:6000:160f:b0:48e:412:3827 with SMTP id
 ffacd0b85a97d-48e264a306fmr3336412f8f.9.1792586896469; Wed, 21 Oct 2026
 05:48:16 -0700 (PDT)
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Post: <mailto:drbd-announce@lists.linux.dev>
List-Help: <mailto:drbd-announce+help@lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
List-Owner: <mailto:drbd-announce+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 21 Oct 2026 14:48:04 +0200
X-Gm-Features: AclHuK9KsjYETt_oMI2YFdoKsVF-C4nruEI0HCGXpm2GBfLH0jlQnABLdHPYI6Y
Message-ID: <CAHmn2DOHuBQy77iidgBSGqNNV-LsJ3DrD3oShgu5DqU-dUgd-A@mail.gmail.com>
Subject: linstor-server 1.35.3 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi!

This is a bigger bug fix release for the 1.35 branch, with a few
important fixes.

Since 1.34.0 snapshots and clones also suspended I/O on a LUKS layer
below DRBD. With DRBD 9.3 or later this could stall snapshots and
clones until DRBD's ko-count was reached, if the Primary replicates to
a diskful LUKS replica on another node. Now only the topmost layer
(and WRITECACHE/CACHE layers below it) is suspended again.

Kubernetes (CRD) setups upgrading from 1.33.x or older could end up
with a crash-looping controller, because the SpaceTracking service
died on stale "SpaceHistory" entries. A migration now removes them.

Storage pools with LVM PVs on partitions no longer end up in a
never-ending update loop causing high CPU load and constant
DeviceManager cycles.

We also fixed a couple of race conditions: resource deletion vs. a
concurrent restore or un-delete (satellites shut down with a UUID
mismatch), the BalanceResourcesTask recreating a resource the user
just deleted, and "Access to deleted Node" after a node deletion.

Prometheus users get two new metrics, linstor_node_flag and
linstor_resource_flag. linstor_resource_state now carries a "resource"
label to join it with the linstor_volume_* metrics, and volumes
without DRBD are now reported as Created instead of DUnknown.

DrbdOptions/auto-diskful can now also be set on nodes and resources,
and a value of -1 disables it.

## [1.35.3] - 2026-10-21

### Added

- Prometheus: New metric `linstor_node_flag` exports the node flags
`DELETE`, `EVICTED` and `EVACUATE` as 0/1 per node
- Prometheus: New metric `linstor_resource_flag` exports the resource
flags `INACTIVE` and `EVICTED` as 0/1
- Controller: A controller-only node now reports the platform and OS
variant of the host the controller runs on

### Changed

- `DrbdOptions/auto-diskful` can also be set on nodes and resources,
and `-1` disables it
- Satellite: drbd-reactor is reloaded after one of its snippets is
written, changed or deleted as an external file, so the
drbd-reactor-reload.path unit is no longer needed for that
- Satellite: The ErrorReport of a `drbdadm adjust` that fails after a
.res file was regenerated now includes the regenerated content, which
is otherwise lost when the previous file is restored from its backup
- SOS report now includes the LVM devices file
`/etc/lvm/devices/system.devices`
- Prometheus: `linstor_resource_state` also carries the resource name
as `resource` label, allowing joins with the `linstor_volume_*`
metrics
- `linstor-database export-db` refuses to export a database with
pending migrations unless `--migrate-before-export` is given, instead
of producing a mislabeled or failing export

### Fixed

- Externally locked shared storage pools: after moving a resource, its
LV is locked exclusively again instead of shared, as inactive copies
no longer count as users of the LV
- Web UI: Requests no longer hang for about 30 seconds after the
controller served a large web UI file again
- Prometheus: `linstor_volume_state` reports volumes without DRBD as
`Created` (2) instead of `DUnknown` (-1) (GitHub #420)
- RPM: Start scripts now use the distribution's JVM directory, fixing
startup on SLES/openSUSE 16
- Satellite: Fixed a never-ending storage pool update loop (high CPU,
constant DeviceManager cycles) when LVM PVs are partitions; block size
and discard granularity of partition PVs are now read from their disk
- Resource group create/modify and resource definition modify now
reject invalid layer stacks instead of failing later when a resource
definition is spawned or a resource is created
- Fixed a race between a resource deletion and a concurrent restore or
un-delete of the same resource, which made the affected satellites
shut down (and restart) with a UUID mismatch
- Satellite: Fixed .res file's 'disk' (drbd-peer-options) section not
including controller properties when a resource-connection exists. Now
node-connection and controller properties are also included.
- Fixed rare race condition where after deleting a node the same node
could cause "Access to deleted Node"
- Fixed ConcurrentModificationException when serializing
SatelliteVolumeState for /metrics and listing resources or volumes
- Fixed "Storage pool '...' on node '...' not found" error when
satellite tries to update props right after a storage pool was
deleted. Instead of an ErrorReport only a warning is logged now
- Token authentication: A token's IP filter now matches IPv6 clients
in any notation; before, satellite tokens were always rejected on IPv6
clusters
- Satellite: Node-connection paths are no longer lost on reconnect if
the satellite shares no resource with the other node, which made new
resources fall back to the default interfaces
- REST: Resource groups now also list their diskless storage pools and
node list (`storage_pool_diskless_list`, `node_name_list`), which
could be set but were never returned
- Fixed rare race condition between BalanceResourcesTask and a user
deleting a resource. The result was that a resource deleted by the
user might have been recreated by the BalanceResourcesTask.
- Controller (K8s CRD): Fixed the SpaceTracking service dying with
"Resource SpaceHistory/... not found" and the controller crash-looping
after an upgrade from 1.33.x or older; a migration removes the stale
entries
- Controller: Snapshots and clones only flag the topmost layer and
WRITECACHE/CACHE layers below it for suspend-IO. Since 1.34.0 a LUKS
layer below DRBD was suspended too, which with DRBD 9.3 or later
stalled snapshots and clones until DRBD's ko-count when the Primary
replicates to a diskful LUKS replica on another node

https://pkg.linbit.com//downloads/linstor/linstor-server-1.35.3.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene
