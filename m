Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED343282F34
	for <drbd-announce@lists.linux.dev>; Thu, 27 Aug 2026 15:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787846290; cv=pass; b=mFqBJjdJAlvO5uOfMdED46anTxrZ39FvhRvD9m6qdit48OA1KT5t1HpTMvM3bJQlUz+rCTF+fztlfWfSgkylN8I1brgtDt6DjeNo0qjdXcNevf+lCTK3Or/FWn81H3BNZaaWgxT3ol3yi5tRjpfHloEMANDkXJCwdyj931lKkrM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787846290; c=relaxed/simple;
	bh=ZGlBGt44IHwoUO9wlmOukjKFu079gVYq1coJdBz/uwg=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=V0+DCLVGbtsfbPGWCduZUThyH1mDgDBmS8sxBBPwdVswRFwPLQKDFVKQDC+axxWC9xo4Qx0yUJfqvEweeJ9/oxdvDleMesq/doMNhV0CaQxnRlBjAfihafvEIB/f7cPH2FVkq89itDbwThm897/eQW4PBxDLeXtSUtVC3zz4JGA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=C7s3xcS9; arc=pass smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="C7s3xcS9"
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-49b0d8bc2aaso14616065e9.0
        for <drbd-announce@lists.linux.dev>; Thu, 27 Aug 2026 08:58:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787846286; cv=none;
        d=google.com; s=arc-20260327;
        b=B5zemfD4poMrdfI7fvicEj4MpQurfNgaKXSbYG5rifQOS3FAjUbhOwPdY43hhabVMc
         2JL/kCLQLiOLh6Z1MHObo7t+iEBmOqmXTIB0+kbzQ/VbZvSlVfCDAEygM8x1Y0OEAVqQ
         kBgFSTVhFeC0Wt6Wwe8ziZ+qThR0LTHrhcOUU+9RmEYJ8iDhwIylPpeojrLrLKL2NokN
         j2vFkIksahvDJeAC91zXRuq1wgYW7+ztg8ctK/u92SYmiu3EEF5fjasxRu8NAFd0ABHm
         fBHPnnmWSNFfU9vsKiFrpQZ2WZg658vTN9tVyXQqqiUptTj/6RxRoyXTxjFx2USWW0je
         9o6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ZGlBGt44IHwoUO9wlmOukjKFu079gVYq1coJdBz/uwg=;
        fh=dd/d96l2eyAS5M83j8rEodEIA/JGxDx7Hy24xgjER3E=;
        b=j8SQi3WjEGvHKv42jV7sEGNoZbVu1sL/i1GaMGozxaC3OCwDD0Pfjdv4uXnDco45Fn
         NxKQEM7XtTLsKBIegi9clZ5vcZgE5tM8V3J64KUDnZLMET5pawMhTxp0wc2Y6B9Ay8/3
         Ou40/ULoBpn6b+bPBaQxu7yaF+hoeovc7EY12jeGkcMgATzC0RRq9ATOLQnCM+jLSTRa
         SgXn/1yNBmfIClPCKlszyKvc264BF+GMl7jdsRaTwDjHxCPACq8nW4wK1DnkKJSSKF1m
         AKeZ4M4Ytxtxd4jQrSaYr1GA3UEl0nvnMcUOSt8uATA3QU6cmHF7x1L3E1qovsGojn1g
         lsuA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1787846286; x=1788451086; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=ZGlBGt44IHwoUO9wlmOukjKFu079gVYq1coJdBz/uwg=;
        b=C7s3xcS9DsZzfWOieuXoGhObbMXnn7KXOGaRBNlLvzjeAcAxzqzJ1u2w8v+GOf6sMg
         Bmw6d+BGQuo+u2vi8TOFU1IfPpIScgU2bVBYQi9XpHvCY8WuCGuh/EJunLmblErGxJAV
         A2MHFH08fI3N/PgRnDhkushQiU/FKQgLcigswNgQhubYKg4bfuPfCd7iD2HPAcPEqFKB
         6LH1F4Wo2iIv52/DgUskY7RT6EUQ349Av+1OUvM8AiJrSMsieThrDglBSRDHGOI0eUWs
         kysC8WdDEa3YFI2dT6pbrMhRy63kZuyrrAYeXYgYtp34XXCIPhAO7qpMX3XBQAir4fRT
         CDgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787846286; x=1788451086;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZGlBGt44IHwoUO9wlmOukjKFu079gVYq1coJdBz/uwg=;
        b=Okp3I4gDGQsz1QhCwfRsO7dgzZMTJBxu4cIU6jxE596cwQXaYy7GEH+vPr6PFIxgzU
         iCoL3QJ4ab4PmtsY89VzkZUmeBSwnXntKFXSMkFox3i7OWZrxJIHETZ6E19tOgG0RLhX
         qekVv6jh/b7j76W+MJ1HEhWaKLC+A+9TxkK07qTA6XGiy7c6q3BNw4+JTP2LtrGXTVZh
         QpUL+90OcE5rA/lBSuFwYkQcPD8P3p5kZ3xR8u+0+qOfkxPfFi9f7YS8TcCdR1/rdHf/
         plkK/DLa9/QTjeId9r/faKLLFoKjq2cRl93gMP+IVGyFnb5JKM/5k/HTIvzc22OvQkSS
         sZAw==
X-Gm-Message-State: AFuF++mutdzZmd2s84z8BQ0UmuEM6ecVrfHaLfRNmdL9N5UEzcL4c1DI
	iNnYr9FOGOK6AZG7y8kSfD/+qhemc6aFjiFF1oOzpgybOkgxkArPTNYmMVxVuprJyCxFQOEEuX+
	nlkz2ZBpFozZVxS/LLimPks48rrsr505zLAuGahUv8CVvsUr3/Onv9AY=
X-Gm-Gg: AR+sD11cc4S6ont+0fp2XlGVA6x57JZ8h44Zc0/OvSI0JLnJQbcq9oPZzbFzhUy+gg1
	7DTEtecM+vZqa4hlOwoOFBKbfGsw3y3IdPPDOAa+qiavYX5jr94J0hAi8TWflLtSoQTxxjwR45N
	UNewgAp4XO8dxYPEz6LTWQsjaXXPTpGbOuwOiUGDklZ156lFL2bejQB93gLUoHvfTd1t7mwLgYi
	Hrp5kq33Lcxstq9le66H6wpmAYXtCZddXAcwtVmQGx3KTl1IQERqbGY1CAkGUr7NdrzGXvgxHpS
	CHtHZTC7oT4pPlSy28HwsA0MXuYUkEyD2DqEwZ20mt+yuFsnj34BzkmD
X-Received: by 2002:a05:600c:c172:b0:49b:72e4:6223 with SMTP id
 5b1f17b1804b1-49b72e463bdmr98845205e9.7.1787846285814; Thu, 27 Aug 2026
 08:58:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 27 Aug 2026 17:57:55 +0200
X-Gm-Features: AcwNN1U3KJ7xNHticdeGB6aGPgGVfLI-1SjLaxRexNL8Af6Z9lm59JGfc1T17eI
Message-ID: <CAHmn2DO_PSw45jAfcjE4a4PXuOo=28bnYnWGtO0PSBL1xeJuow@mail.gmail.com>
Subject: linstor-server 1.35.0 release
To: drbd-announce@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi!

Here is the final release of linstor-server 1.35.0.

Since the release candidate we mostly fixed bugs and rounded off the
shared storage pool work: shared storage pools with external locking
(e.g. lvmlockd) are now treated like other shared storage pools, so
only one copy is active at a time, and snapshots, cloning and
toggle-disk recognize the shared backing data. Live migrations via
make-available `auto_manage_dual_primary` also work with such pools,
the backing LVs stay locked exclusively and are downgraded to shared
locks only during the dual-active window. Besides that,
`DrbdOptions/Resource/*` (e.g. `cpu-mask`) and `DrbdOptions/Handlers/*`
properties can now be set on node level, and the resource-definition
clone API gained an optional `volume_sizes` parameter to grow the
cloned volumes as part of the clone.

For those who skipped the release candidate, here is a recap of the
highlights of 1.35.0:

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

## [1.35.0] - 2026-08-27

### Added

- ErrorReports now include LINSTOR's cluster-id ("linstor c lp | grep
Cluster/LocalID").
- Resource-definition clone: optional `volume_sizes` grows the cloned
volumes as part of the clone (before a `Clone/BalanceAfterClone`
placement)

### Changed

- `DrbdOptions/Resource/*` (e.g. `cpu-mask`) and
`DrbdOptions/Handlers/*` properties can now be set on node level
- Deploying an external file with a non-whitelisted path now fails
with `FAIL_ACC_DENIED_EXT_FILE` instead of `FAIL_UNKNOWN_ERROR`
- Shared storage pools with external locking (e.g. lvmlockd) are now
treated like other shared storage pools: only one copy is active at a
time, and snapshots, cloning and toggle-disk recognize the shared
backing data
- make-available with `auto_manage_dual_primary` on such pools now
keeps the active copy active for the live migration: the backing LVs
are locked exclusively, downgraded to shared locks during the dual-
active window
- Opening the dual-active window is refused while snapshots (including
leftover snapshot data on the shared pool) exist or the resource is
being cloned; snapshot creation and cloning are refused while dual-
active
- Nodes no longer holding the active copy of a shared storage pool now
deactivate snapshot LVs and renamed (`_deleted_*`) origin LVs,
releasing their LV locks and stale device-mapper state

### Fixed

- Fixed the daily log archiving aborting when the log directory
contains unexpected entries (e.g. a directory named like an error-
report); such entries are now skipped, and archived reports are only
deleted after tar succeeded
- Fixed race while unsetting "DrbdOptions/ExactSize" which could cause
"Resize not allowed during resync" ErrorReports.
- Fixed rare race-condition finding the devicePath in NvmeUtils while
deleting a volume-definition.

## [1.35.0-rc.1] - 2026-08-13

### Added

- New `linstor-controller-ha-setup` script that makes the controller
highly available via the drbd-reactor promoter, optionally with a
virtual IP
- Snapshot support for thick LVM (`LVM`) storage pools: create,
delete, restore into a new resource and rollback. Each snapshot
reserves its origin's size as CoW area in the volume group, so it can
never become invalid. Restore and rollback copy the full data with
`dd`. Deleting a resource that still has snapshots renames the backing
LV (`_deleted_*`); it is removed together with its last snapshot.
Volumes with thick LVM snapshots cannot be resized (LVM limitation)
and backup shipping remains unsupported
- Added a "truncate" operation for resource-definitions that
atomically deletes all of a resource-definition's resources without
touching the resource-definition or its snapshots (`DELETE
/v1/resource-definitions/{resource}/resources`); an optional flag
additionally deletes the resource-definition when it has neither
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
distinguish a live-migration attach from a plain attach can always set
the option
- New API `unmake-available` reverting a make-available on the
migration source after a live migration: removes the resource from the
node if that is possible without losing data (diskless resources and
redundant shared-storage-pool copies; tiebreaker and diskful resources
are kept) and reverts the DRBD net options set by make-available.
Calling it for a resource that is not deployed on the node is a
successful no-op

### Changed

- Snapshots of resources in shared storage pools are now registered on
every node holding a copy of the resource, matching the shared data:
the snapshot exists once on the shared pool, so every copy effectively
holds it. Only the node with the active copy performs the snapshot
storage operations (create, delete, restore); new or (re)activated
copies automatically receive the snapshot objects. The active copy can
therefore be moved freely (make-available, activate) while snapshots
exist; if no copy is active at all, one is activated before taking a
snapshot or rolling back
- Resizing a volume backed by a shared storage pool is now refused
while its resource is active on more than one node (the dual-active
window of a live migration), since the shared data cannot be safely
resized while multiple nodes are accessing it; conversely, make-
available with `auto_manage_dual_primary` refuses to open the dual-
active window while a volume of the resource is still being resized
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
either by the package upgrade or on the next start of the linstor-
controller service; the migration can also be run manually via the new
`linstor-database migrate-h2` command. The original database file is
kept as `<database>.mv.db.h2v1.bak`. Old-format `error-report.mv.db`
files are moved aside and recreated empty

### Fixed

- Fixed the controller refusing to open an H2 database whose
connection URL contains `AUTO_SERVER=TRUE`: H2 2.x rejects that
setting combined with the internally added `DB_CLOSE_ON_EXIT=FALSE`,
which is now skipped instead
- Fixed a DRBD resource deletion that was interrupted after the
"prepare deletion" step (e.g. by a satellite disconnect or a
controller restart) being stuck forever: the resource stayed in the
intermediate DRBD_DELETE state, leaving an orphaned backing volume on
the node and its DRBD peers endlessly trying to connect. The deletion
is now automatically resumed once all nodes of the resource-definition
are connected again
- Fixed snapshot rollback of a resource in a shared storage pool
failing when another node holds an inactive copy: non-participating
inactive copies are no longer recreated after the rollback (they can
simply be made available again); if no copy is active at all, one is
activated before the rollback
- Fixed satellites corrupting the metadata of a shared LVM volume
group when starting simultaneously: probing an empty thick LVM storage
pool for its block-device properties no longer creates a temporary LV
(an unserialized VG metadata write); the properties are read from the
pool's physical volume instead
- Fixed snapshot creation of an IO-suspended volume (e.g. LUKS on a
shared storage pool) failing with a `vgscan` timeout: the shared-VG
rescan no longer opens devices whose IO is suspended
- Fixed make-available for a resource in a shared storage pool failing
with "No active resource found" when no resource of that shared
storage pool was active anywhere (e.g. after cleanly stopping the
consumer): the resource is now created on the requested node reusing
the shared data, ending with a usable (active) resource
- Fixed creating an additional resource that reuses the existing data
of a shared storage pool (e.g. via make-available) failing the free-
space check on a (nearly) full pool: the shared volume already exists
and the pool's free space already accounts for it, so attaching
another resource to it consumes no additional space
- Fixed deleting a thick LVM snapshot re-activating the snapshot (and
implicitly its origin LV) before the removal, leaving the origin LV of
an INACTIVE resource active after the deletion - dangerous for shared
storage pools
- Fixed deleting a snapshot in a shared storage pool hanging forever:
a device-manager run that only processes snapshots (no resources)
never requested the shared storage pool locks, so the run aborted with
an internal error and the deletion was never executed
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
instead of success (the already deleted connection object was accessed
when notifying the satellites)
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
"Logical Volume ... already exists" when another node had just created
the LV; the cached `lvs`/`vgs` view is now invalidated after the
shared-VG `vgscan`

https://pkg.linbit.com//downloads/linstor/linstor-server-1.35.0.tar.gz

Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene
