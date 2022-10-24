Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com
	[209.85.221.182])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 642C6420321
	for <drbd-announce@lists.linbit.com>;
	Mon, 24 Oct 2022 11:29:18 +0200 (CEST)
Received: by mail-vk1-f182.google.com with SMTP id e16so1934102vkm.9
	for <drbd-announce@lists.linbit.com>;
	Mon, 24 Oct 2022 02:29:17 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Mon, 24 Oct 2022 11:29:06 +0200
Message-ID: <CAKnz9xLfcq08RS60homzMqWRr3LhHDerYVeJDA-Wx5_9XzSHBw@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator v1.10.0
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

Dear LINBIT SDS on Kubernetes users,

We've recently released version 1.10.0 of our Operator.

This release contains small improvements to the Operator, a new option
to share the DRBD configuration directory between containers and
hosts, and the usual updates to the container images.

The updated LINSTOR 1.20.0 release contains some improvements to the
k8s database backend. These improvements drastically improve
performance when the cluster contains a moderate to high number of
resources.

In related news, if you have been following the DRBD 9.2.0 release,
you will have noticed mention of DRBD now supporting running in the
container network. This requires some deeper changes to the way we
deploy LINBIT SDS on Kubernetes. To get a preview of how these changes
will look like, you can check out the work-in-progress "v2" Piraeus
Operator. [1]

This new Operator version will be developed in parallel with the
existing "v1.X" versions, until feature parity is reached and we have
an acceptable migration story. Until then, feel free to leave feedback
or feature requests on github. [2]

The new chart is available from https://charts.linstor.io. New images
are available from drbd.io. The usual upgrade procedure applies:

$ helm repo update
$ helm upgrade linstor-op linstor/linstor -f orig.yaml

An updated User's Guide with detailed instructions is available. For
more information, please take a look at the upgrade guide. [3]

Source code is, as always, available upstream. [4]

Best regards,
Moritz

[1]: https://github.com/piraeusdatastore/piraeus-operator/tree/v2
[2]: https://github.com/piraeusdatastore/piraeus-operator/issues/334
[3]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[4]: https://github.com/piraeusdatastore/piraeus-operator

Full Changes
------------
### Added

- Can set the variable `mountDrbdResourceDirectoriesFromHost` in the
Helm chart to create hostPath Volumes for DRBD and LINSTOR
configuration directories for the satellite set.

### Changed

- Change default bind address for satellite monitoring to use IPv6
anylocal `[::]`. This will still work on IPv4 only systems with IPv6
disabled via sysctl.
- Default images:
  * LINSTOR 1.20.0
  * DRBD 9.1.11
  * DRBD Reactor 0.9.0
  * external CSI images upgraded to latest versions

### Fixed

- Comparing IP addresses for registered components uses golang
built-in net.IP type.
- Restoring satellites after eviction only happens if the node is ready.
