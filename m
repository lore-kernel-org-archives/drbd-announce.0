Return-Path: <rene.peinthor@linbit.com>
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
	[209.85.216.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 1219C4202C1
	for <drbd-announce@lists.linbit.com>;
	Wed, 25 Oct 2023 08:58:01 +0200 (CEST)
Received: by mail-pj1-f54.google.com with SMTP id
	98e67ed59e1d1-27fe16e8e02so51107a91.0
	for <drbd-announce@lists.linbit.com>;
	Tue, 24 Oct 2023 23:58:01 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Wed, 25 Oct 2023 08:57:49 +0200
Message-ID: <CAHmn2DOeJ+fg+UKTokzQ_e=cCKQ=8G4Aad51dzxBb=9ReYQUtg@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user <drbd-user@lists.linbit.com>
Content-Type: multipart/alternative; boundary="000000000000d3ea8f060884f952"
Subject: [DRBD-announce] linstor-server 1.25.0 release
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <https://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <https://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

--000000000000d3ea8f060884f952
Content-Type: text/plain; charset="UTF-8"

Hi!

And here is the final release of 1.25.0 and just copied the feature
description over from rc.1,
but wanted to note an additional important change/bugfix with error-report
listing.
We now a limit parameter for error-reports list queries and can now report
the total count
of error-reports without having to fetch their header data. This should
vastly improve
the prometheus /metrics queries and also get rid of 10s timeout errors in
the logs.

The biggest feature in this release is that Linstor got aware of disk
failures detected by DRBD.
If a disk fails now and DRBD switches the resource to a diskless, Linstor
will mark those
resource with a skip-disk flag and will add the --skip-disk argument to
drbd commands.
Without this feature Linstor would mostly fail on most commands because it
couldn't adjust
drbd resources and even unrelated resources might have become problematic.

We also added IP_TOS socket options to improve Linstor network
communication on congested networks.

## [1.25.0] - 2023-10-25
### Changed

- Added ErrorReport when sending a ping request fails
- Sos-report's tar command no longer use --verbose
- ErrorReports list now works with paging and a default limit.
  Fixing node timeouts on large error-reports
- Resource-group adjust warns now for placement count needs to be reduced
(instead of error)

### Fixed

- Fixed setting 'on-no-quorum' to 'suspend-io' at the resource-group level
does not propagate down to existing resources
- Fixed logic in setLogLevel to prevent error log if no error happened
- Fixed possible 'Access to deleted Resource' in the AutoDiskfulTask
- Fixed possible left over during AutoDiskfulTask's cleanup of excess
resources

## From rc1
### Added

- Added automated addition of --skip-disk to drbdadm adjust when a disk
failure is detected
- Added first version of "effective_props" (currently only used for
"DrbdOptions/SkipDisk", other props will follow)
- Added attempt in setting IP_TOS to LOW_DELAY (works in java11 or with
forced IPv4)
- Added creation time to ApiCallRc

### Changed

- Improved checks for "OtherController" response
- Do not send fetchFreeSpaces to diskless-only nodes
- Improved responses during tiebreaker takeover

### Fixed

- Fixed possible FileWatch leak
- Fixed toggle-disk now properly setting StorPoolName
- Delete node-connection when last property gets deleted
- Properly delete DRBD_DELETE flag during undelete ('r c' on a DELETING
resource)
- Fixed regex-pattern for parsing "dmsetup ls [--target TARGET]" command
- Fixed typo in /v1/action[s]/snapshot/multi
- Fixed incorrectly documented return type of "snapshot create-multi"
- Fixed NPE in schedules etcd driver

https://pkg.linbit.com//downloads/linstor/linstor-server-1.25.0.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Cheers,
Rene

--000000000000d3ea8f060884f952
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>And here is the final release of 1.=
25.0 and just copied the feature description over from rc.1,</div><div>but =
wanted to note an additional important change/bugfix with error-report list=
ing.</div><div>We now a limit parameter for error-reports list queries and =
can now report the total count</div><div>of error-reports without having to=
 fetch their header data. This should vastly improve</div><div>the promethe=
us /metrics queries and also get rid of 10s timeout errors in the logs.</di=
v><div><br></div><div>The biggest feature in this release is that Linstor g=
ot aware of disk failures detected by DRBD.</div><div>If a disk fails=C2=A0=
now and DRBD switches the resource to a diskless, Linstor will mark those</=
div><div>resource with a skip-disk flag and will add the --skip-disk argume=
nt to drbd commands.</div><div>Without this feature Linstor would mostly fa=
il on most commands because it couldn&#39;t adjust</div><div>drbd resources=
 and even unrelated resources might have become problematic.</div><div><br>=
</div><div>We also added IP_TOS socket options to improve Linstor network c=
ommunication on congested networks.</div><div><br></div><div>## [1.25.0] - =
2023-10-25<br>### Changed<br><br>- Added ErrorReport when sending a ping re=
quest fails<br>- Sos-report&#39;s tar command no longer use --verbose<br>- =
ErrorReports list now works with paging and a default limit.<br>=C2=A0 Fixi=
ng node timeouts on large error-reports<br>- Resource-group adjust warns no=
w for placement count needs to be reduced (instead of error)<br><br>### Fix=
ed<br><br>- Fixed setting &#39;on-no-quorum&#39; to &#39;suspend-io&#39; at=
 the resource-group level does not propagate down to existing resources<br>=
- Fixed logic in setLogLevel to prevent error log if no error happened<br>-=
 Fixed possible &#39;Access to deleted Resource&#39; in the AutoDiskfulTask=
<br>- Fixed possible left over during AutoDiskfulTask&#39;s cleanup of exce=
ss resources<br></div><div><br></div><div>## From rc1<br>### Added<br><br>-=
 Added automated addition of --skip-disk to drbdadm adjust when a disk fail=
ure is detected<br>- Added first version of &quot;effective_props&quot; (cu=
rrently only used for &quot;DrbdOptions/SkipDisk&quot;, other props will fo=
llow)<br>- Added attempt in setting IP_TOS to LOW_DELAY (works in java11 or=
 with forced IPv4)<br>- Added creation time to ApiCallRc<br><br>### Changed=
<br><br>- Improved checks for &quot;OtherController&quot; response<br>- Do =
not send fetchFreeSpaces to diskless-only nodes<br>- Improved responses dur=
ing tiebreaker takeover<br><br>### Fixed<br><br>- Fixed possible FileWatch =
leak<br>- Fixed toggle-disk now properly setting StorPoolName<br>- Delete n=
ode-connection when last property gets deleted<br>- Properly delete DRBD_DE=
LETE flag during undelete (&#39;r c&#39; on a DELETING resource)<br>- Fixed=
 regex-pattern for parsing &quot;dmsetup ls [--target TARGET]&quot; command=
<br>- Fixed typo in /v1/action[s]/snapshot/multi<br>- Fixed incorrectly doc=
umented return type of &quot;snapshot create-multi&quot;<br>- Fixed NPE in =
schedules etcd driver<br></div><div><br></div><div><div><a href=3D"https://=
pkg.linbit.com//downloads/linstor/linstor-server-1.25.0.tar.gz">https://pkg=
.linbit.com//downloads/linstor/linstor-server-1.25.0.tar.gz</a><br></div><d=
iv><br></div><div><br></div><div><div><div><div>Linstor PPA:<br><a href=3D"=
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"no=
referrer" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/l=
inbit-drbd9-stack</a></div></div><div><br></div><div>Cheers,<br></div><div>=
Rene</div></div></div></div></div>

--000000000000d3ea8f060884f952--
