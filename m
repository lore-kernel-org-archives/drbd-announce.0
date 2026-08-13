Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD9E483823
	for <drbd-announce@lists.linux.dev>; Thu, 13 Aug 2026 15:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786635903; cv=pass; b=bHX7DtuEdo8h/U5b8v35hwxNUh5RKKz/2ZBoJJ/MAq1qIpHYg5RfVMMRKs2eX1RibrB71u3E5ch4TMcjLiMoUnhpVtNFeG3cI/uBZY3xFYK+TXYCXJkO7hyxd7p1qNGDmEImTOgISQ73DjXcS3/f+xfhitUnxCmpy56sREo68TA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786635903; c=relaxed/simple;
	bh=U+pjhBpKZn6JNPr7/BQJfuZs2eBkmZpbP490tFHWQSQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=sTNDVywRywnTMFHUILi2MiNLNge3Qwfe0N1iaqh2TF4W/xQUmUBxmtsFq2EYU9ZkYwftcUWaaDDH4AHD4pOi//JpG/Hw6KhrLWvdxh6OY1hM97gEltf348OsAS2bcYTnBxc46MdvazGVwT8bKUZZUZVvN8ZweiM15OvSpc10Z7g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=zPR42SWq; arc=pass smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="zPR42SWq"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4980dc26022so763105e9.1
        for <drbd-announce@lists.linux.dev>; Thu, 13 Aug 2026 08:45:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786635899; cv=none;
        d=google.com; s=arc-20260327;
        b=DU+3PjKAaSMEwIxQ8j0jzTpPCj3Dze/GIxial60T2ie3qQIDd3zsf87zxAjVwRfVFx
         R9+Ajr/cZqoTlpNE3dusjb4OCGJ5ss0zBfr5eY3xSK8qt4qh88PMRtpYXvc/v3VzCaRi
         nwm5sKZlDk8VsuiZouOcaJGdQeMH39+qVnckCfF+g2SDUO/RLq0AIQdBpvgX6LSqXEWD
         HD1sLs6xcyNA3ysYW7R3Fy8k40j0P57jtcPO6eETpRKBgC5pmGCbyQGXVHHC/c+cI3cU
         +hYNE5qlL1NMvHiFeN4RGKa+PH/UYTs5Ir8R4dg3opojbEfXquhMpmlWeBq6zhGI2u3H
         n6Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=U+pjhBpKZn6JNPr7/BQJfuZs2eBkmZpbP490tFHWQSQ=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=tCgpFQlO9QE62OQRVU72PZJExmUUXDdLr5RzjZjtaAd3JYnub42YXwRpNWa4lxBLjW
         aV6pXNQqiH+O5E/EBXQXs5K4uvl1mZocKaL3pZTgnMHtMq3fPMRNY6rbDyUyjnT20kl4
         SHORtdHsQvmuTCIrPuu1K1nCfOWufFlCfxyGmdk57bk8dfWFDLfuXL/db6WeWjQR29Cq
         fIKwKjQxITwDbMdW0VdIdUoTpxQ09XUCslVpCvvlhRCEM+MDBFz70aVMdXMWkwC8NAG0
         wHy+J5EqNH66WNt5prkrmUhtOWjLOvgE2O3/NSRgDOQ/FoPXTgoaldgmMWbIAoFq3651
         e2Jw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1786635899; x=1787240699; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=U+pjhBpKZn6JNPr7/BQJfuZs2eBkmZpbP490tFHWQSQ=;
        b=zPR42SWqd8avHKldYSeCjGyEZMJZZ+6ZfTkDQIUkTszZ0+ZlNNHDgfzyT9V5jg2XNr
         X9oi+qf+oQnifrH8RXEGrcnw2S85pB+Gfm3BQN7kU3fiw/jpG/4Wk2Mc8/BN8nAnJ5mg
         Y21x/MZRgwXX/2uZfoL5uKQEz19uF7QUi/SmESlA+cAGzPEjrsMowxygQ0sDxjwmr5Pl
         WrOUnL9B4ozTvKp/mM8NogsGZUf4R2KNHkdKHtDgY8BN7nMU9vWrXAOshyGJtCnHZ7Za
         NsqyzaNvM84q8i06z1nYfgqc6icGWGh2hnZClaybmzD2x5Yfdl3lN8zPGR1lFmL0okbY
         ZG7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786635899; x=1787240699;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=U+pjhBpKZn6JNPr7/BQJfuZs2eBkmZpbP490tFHWQSQ=;
        b=awJv3zbCBDMWXHyYSwzS9uXUNCYBE13fmCbtT/hfHk1DtqvDPm3xWdLJB45yIlas3b
         LUCHI8lnc4hKKwr2q32rGRx31lPnajx+QIEYFspLdtVYlzDBXGEJcVLkeQX68wYISN+m
         lcS5rP+d4bY7AiBP/uGBmIaUuDdHzJadkdJ+K2euoTYNRgygtM5Rmcc1UxCYL0bWUPSn
         sLdYfsHL/3bMJLP81vhU5QKP7bRLi5JECYauZls/ARDve4UPXT+tf4r4xIZHcE3BF90/
         rHitKgvdsGleVLSyasDXMzmpW72Vb/ROY9dbYkMdLsr7S4wUW8al7AghsD6OVVgPNwfc
         UEnA==
X-Gm-Message-State: AOJu0YwuG0H5mdj4G9Yqbempjs8vcMycU36lkWJ+k6dbygEu/9ncOzBx
	7JljBT+c2YEPPAQszvobyCVld7K7KT62eECZKx8WLrBZ74E9x7rh2edtusv5ND8QjRWHEbfSZqq
	s3HVkSd2zABDbiH8gEnHcvGvdFb7T3ppHpXxWlOPYx61l0vdyju/22WI=
X-Gm-Gg: AR+sD131lrGz99brI1wiCwmchUAwGZulE0nkWUuCI5/g2SMPvTpvst6DVAUGyO5g4hA
	BilT2mrHaHZzXxuDU9P3xrE0JjzBjtvGq4fQk//ojp6Y1P5vl029yshIPZGMUah3Tcjg2Q7PdVd
	NKyn6q1NRYUd1+XnEoBi9nGqIP5BEufsPL9W/GSeY6CbH/o0ZuopK0Fwhx6gdUlzI7JkIrZV5y2
	TA5xpxs27IOyK63MlM30QIGKnGaMIRfaPJquTL2nTlLck5y2eIHn6Gi7cGoIsOThu5JFzXXHeDc
	YYX5USrmotvEkZmgtl9ZpzpwRWtFrpwzvAZj0R3CAwfypg==
X-Received: by 2002:a05:600c:4e4c:b0:499:726c:50e with SMTP id
 5b1f17b1804b1-499821f9223mr100981925e9.14.1786635898435; Thu, 13 Aug 2026
 08:44:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 13 Aug 2026 17:44:47 +0200
X-Gm-Features: AUfX_my0Sevd4NrpgwOSmDFXreAtPGUiC4tBUJOhhmN6NAyvpoH_PX9po-QtQYI
Message-ID: <CAHmn2DOFe7N1tdWOZuBCU3ZEuMGzAp+rr1vApcqZ1i_V0ZtuRA@mail.gmail.com>
Subject: linstor-server 1.35.0-rc.1 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the first release candidate of linstor-server 1.35.0.

Probably the most notable change is that we upgraded the bundled H2
database from the ancient 1.4.197 to 2.4.240. Existing H2 databases
are migrated to the new file format automatically, either during the
package upgrade or on the next start of the linstor-controller
service; you can also run the migration manually with the new
`linstor-database migrate-h2` command. The original database file is
kept as `<database>.mv.db.h2v1.bak`, so you can always go back to a
pre-1.35 version.

The main focus of this release was improving shared storage pool
support, snapshots of resources in shared storage pools are now
registered on every node holding a copy of the resource, matching
the shared data: the snapshot exists once on the shared pool, so
every copy effectively holds it. The active copy can now be moved
freely while snapshots exist. Besides that a whole series of shared
storage pool bugs was fixed: satellites corrupting the shared VG
metadata when starting simultaneously, snapshot rollback failing when
another node held an inactive copy, snapshot deletion hanging
forever, make-available failing when no copy was active anywhere or
when the pool was nearly full, and more - see the changelog below.

New in this release is snapshot support for thick LVM (`LVM`)
storage pools: create, delete, restore into a new resource and
rollback. Note that each snapshot reserves its origin's full size as
CoW area in the volume group and restore/rollback copy all data with
`dd`, so thick LVM snapshots should only be used for immediate
backup operations (take a snapshot, back it up, delete it) and not
be kept around for longer.

To better support live migrations (e.g. VMs), make-available gained a
new `auto_manage_dual_primary` option that prepares a resource for a
live migration to the given node, and the new `unmake-available` API
reverts it on the migration source afterwards.

We also removed the (never used) access-control security subsystem,
it had always been running at `NO_SECURITY` level. The `SEC_*`
database tables are dropped on upgrade, which makes a downgrade to
older versions impossible. LDAP authentication for the REST API,
satellite connection authentication, auth tokens and HTTPS client
certificates are unaffected.

And finally there is a new `linstor-controller-ha-setup` script that
makes the controller highly available via the drbd-reactor promoter,
optionally with a virtual IP.

As this is a release candidate, we would appreciate any testing,
especially of the H2 migration and shared storage pool setups.

## [1.35.0-rc.1] - 2026-08-13

### Added

- New `linstor-controller-ha-setup` script that makes the controller
highly available via the drbd-reactor promoter, optionally with a
virtual IP
- Snapshot support for thick LVM (`LVM`) storage pools: create,
delete, restore into a new resource and rollback. Each snapshot
reserves its origin's size as CoW area in the volume group, so it can
never become invalid. Restore and rollback copy the full data with
`dd`. Deleting a resource that still has snapshots renames the
backing LV (`_deleted_*`); it is removed together with its last
snapshot. Volumes with thick LVM snapshots cannot be resized (LVM
limitation) and backup shipping remains unsupported
- Added a "truncate" operation for resource-definitions that
atomically deletes all of a resource-definition's resources without
touching the resource-definition or its snapshots
(`DELETE /v1/resource-definitions/{resource}/resources`); an optional
flag additionally deletes the resource-definition when it has neither
resources nor snapshots left afterwards.
- Added an option to snapshot deletion that atomically deletes the
resource-definition as well when, after deleting the snapshot, the
resource-definition has neither resources nor snapshots left.
- make-available: new option `auto_manage_dual_primary` (REST 1.29.0)
preparing a resource for a live migration to the given node: for DRBD
resources `allow-two-primaries` (and `protocol C` if needed) is set
between the migration source (the node the resource is in use on) and
the target node; for resources in a shared storage pool the resource
is activated on both nodes at once. If the resource is not in use on
any node it is simply made available, so clients that cannot
distinguish a live-migration attach from a plain attach can always
set the option
- New API `unmake-available` reverting a make-available on the
migration source after a live migration: removes the resource from
the node if that is possible without losing data (diskless resources
and redundant shared-storage-pool copies; tiebreaker and diskful
resources are kept) and reverts the DRBD net options set by
make-available. Calling it for a resource that is not deployed on the
node is a successful no-op

### Changed

- Snapshots of resources in shared storage pools are now registered
on every node holding a copy of the resource, matching the shared
data: the snapshot exists once on the shared pool, so every copy
effectively holds it. Only the node with the active copy performs the
snapshot storage operations (create, delete, restore); new or
(re)activated copies automatically receive the snapshot objects. The
active copy can therefore be moved freely (make-available, activate)
while snapshots exist; if no copy is active at all, one is activated
before taking a snapshot or rolling back
- Resizing a volume backed by a shared storage pool is now refused
while its resource is active on more than one node (the dual-active
window of a live migration), since the shared data cannot be safely
resized while multiple nodes are accessing it; conversely,
make-available with `auto_manage_dual_primary` refuses to open the
dual-active window while a volume of the resource is still being
resized
- Removed the access-control security subsystem (object protection,
ACLs, security identities/roles/types and the protobuf sign-in API);
it had always been running at `NO_SECURITY` level. The `SEC_*`
database tables are dropped on upgrade, which makes a downgrade to
older versions impossible. LDAP authentication for the REST API,
satellite connection authentication, auth tokens and HTTPS client
certificates are unaffected. Error reports no longer contain an
access-context section and log lines are no longer prefixed with the
security identity
- The controller now refuses to start with a clear error message when
the SQL database was already migrated by a newer LINSTOR version,
instead of failing while partially loading the unknown schema
- Added StltImplErrPeer so that node.getPeer is always non-null
- Upgraded the bundled H2 database from 1.4.197 to 2.4.240. Existing
H2 databases are migrated to the new H2 file format automatically,
either by the package upgrade or on the next start of the
linstor-controller service; the migration can also be run manually
via the new `linstor-database migrate-h2` command. The original
database file is kept as `<database>.mv.db.h2v1.bak`. Old-format
`error-report.mv.db` files are moved aside and recreated empty

### Fixed

- Fixed a DRBD resource deletion that was interrupted after the
"prepare deletion" step (e.g. by a satellite disconnect or a
controller restart) being stuck forever: the resource stayed in the
intermediate DRBD_DELETE state, leaving an orphaned backing volume on
the node and its DRBD peers endlessly trying to connect. The deletion
is now automatically resumed once all nodes of the
resource-definition are connected again
- Fixed snapshot rollback of a resource in a shared storage pool
failing when another node holds an inactive copy: non-participating
inactive copies are no longer recreated after the rollback (they can
simply be made available again); if no copy is active at all, one is
activated before the rollback
- Fixed satellites corrupting the metadata of a shared LVM volume
group when starting simultaneously: probing an empty thick LVM
storage pool for its block-device properties no longer creates a
temporary LV (an unserialized VG metadata write); the properties are
read from the pool's physical volume instead
- Fixed snapshot creation of an IO-suspended volume (e.g. LUKS on a
shared storage pool) failing with a `vgscan` timeout: the shared-VG
rescan no longer opens devices whose IO is suspended
- Fixed make-available for a resource in a shared storage pool
failing with "No active resource found" when no resource of that
shared storage pool was active anywhere (e.g. after cleanly stopping
the consumer): the resource is now created on the requested node
reusing the shared data, ending with a usable (active) resource
- Fixed creating an additional resource that reuses the existing data
of a shared storage pool (e.g. via make-available) failing the
free-space check on a (nearly) full pool: the shared volume already
exists and the pool's free space already accounts for it, so
attaching another resource to it consumes no additional space
- Fixed deleting a thick LVM snapshot re-activating the snapshot (and
implicitly its origin LV) before the removal, leaving the origin LV
of an INACTIVE resource active after the deletion - dangerous for
shared storage pools
- Fixed deleting a snapshot in a shared storage pool hanging forever:
a device-manager run that only processes snapshots (no resources)
never requested the shared storage pool locks, so the run aborted
with an internal error and the deletion was never executed
- Fixed LDAP sign-in using the configured `search_filter` as the LDAP
search base; the configured `search_base` was never used, so
restricting sign-in via a search filter did not work as documented
- Erase LUKS headers with 2 shred passes instead of 4 and only time
the shred out when it stops making I/O progress, avoiding timeouts on
slow storage (e.g. thick-LVM origins with active snapshots); also
fixed misleading error messages on erase failures
- Fixed deleting a controller property namespace always failing the
property whitelist check (the namespace was prepended twice to the
property keys), rejecting and rolling back the whole modification
- Fixed deleting a resource connection reporting an internal error
instead of success (the already deleted connection object was
accessed when notifying the satellites)
- Fixed modifying a net interface of a node without an active
satellite connection failing with an unhandled NullPointerException
- Fixed the query-size-info response cache never answering requests
whose resource group name was not given in the canonical upper-case
form, causing needless recomputation
- Fixed several connection API calls reporting an unhandled
NullPointerException instead of a proper not-found error: creating a
resource connection for an unknown resource, modifying a node
connection of an unknown node, and creating/modifying a volume
connection for an unknown volume number or a nonexistent connection
- Another attempt to fix issues with double reconnect
- Fixed possible ConcurrentModificationException during multiple
concurrent reconnect attempts
- Fixed incorrect parsing of "" for DISC_GRAN in LsBlkEntry. "" will
be parsed as 0
- Fixed AutoHelper now properly concat an updateSatellite at the end
of the eagerly subscribed (aka Flux.merge'd) additionalFluxList.
- Fixed shared LVM storage pools failing `make-available` with
"Logical Volume ... already exists" when another node had just
created the LV; the cached `lvs`/`vgs` view is now invalidated after
the shared-VG `vgscan`

https://pkg.linbit.com//downloads/linstor/linstor-server-1.35.0~rc.1.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene
