Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com
	[209.85.221.177])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 636E242035E
	for <drbd-announce@lists.linbit.com>;
	Wed,  6 Dec 2023 16:17:15 +0100 (CET)
Received: by mail-vk1-f177.google.com with SMTP id
	71dfb90a1353d-4b2f3539089so603450e0c.0
	for <drbd-announce@lists.linbit.com>;
	Wed, 06 Dec 2023 07:17:14 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Wed, 6 Dec 2023 16:17:02 +0100
Message-ID: <CAKnz9xJPVz7ZUS65cCNqxiv+4uiobZpju8=FSNQbR2cTUc1X_w@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] LINSTOR Operator v2.3.0 and v1.10.8
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

We've recently released updates for our Kubernetes Operator.

In version v2.3.0 of our next-generation Operator we've added a lot of
usability improvements. There are now shortcuts for editing most
operator-controlled containers. So instead of having to write a patch,
you can provide a "podTemplate" for the container.

There are also now toggles for specific components, such as the High
Availability Controller, so you can disable the deployment if you
really need to.

There is also now the option to use TLS with DRBD: if LINSTOR is
configured to user internal TLS, you can in addition set
.spec.internalTLS.tlsHandshakeDaemon=true in the Satellite
Configuration, which automatically deploys the needed user space
component. If you then set "DrbdOptions/Net/tls: yes" in LINSTOR, you
automatically get encrypted DRBD replication.

In order to ease deployment, we have removed the default NetworkPolicy
as it proved to be troublesome with some CNI plugins. We have also
made sure that all resources work on older Kubernetes versions, so
LINBIT SDS works out of the box with Kubernetes 1.20 and newer.

There is also now a new helm chart to deploy the LINSTOR Operator,
along with the workloads. They are packaged as two separate charts to
work around some Helm limitations regarding CRDs. To install LINSTOR
Operator v2 with helm, run:

  helm repo add linstor https://charts.linstor.io
  helm install linstor-operator linstor/linstor-operator \
    --set imageCredentials.username=$MY_LINBIT_USER \
    --set imageCredentials.password=$MY_LINBIT_PASSWORD \
    --wait
  helm install linbit-sds linstor/linbit-sds

Most configuration is handled by the linbit-sds chart, so check out
"helm show values linstor/linbit-sds" to see the available options.

For Operator v1, there are only the updated component images, which
are shared with Operator v2.

Also, watch out for the Upgrade Guide for Operator v1 deployment,
which will be announced separately soon.

To get specific instructions to apply the update, check our users guide: [1]

Source code is, as always, available upstream. [2]

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator

Operator v2.3.0 Changelog
-------------------------

### Added

- Add a new option `.spec.internalTLS.tlsHandshakeDaemon` to enable
deployment of `tlshd` alongside the LINSTOR Satellite.
- Shortcuts to configure specific components. Components can be
disabled by setting `enabled: false`, and the deployed workload can be
influenced using the `podTemplate` value. Available components:
  - `LinstorCluster.spec.controller`
  - `LinstorCluster.spec.csiController`
  - `LinstorCluster.spec.csiNode`
  - `LinstorCluster.spec.highAvailabilityController`
- Shortcut to modify the pod of a satellite by adding a
`LinstorSatelliteConfiguration.spec.podTemplate`, which is a shortcut
for creating a `.spec.patches` patch.

### Changed

- Fixed service resources relying on the default protocol version.
- Moved NetworkPolicy for DRBD out of default deployed resources.
- Updated images:
  * LINSTOR 1.25.1
  * LINSTOR CSI 1.3.0
  * DRBD Reactor 1.4.0
  * Latest CSI sidecars
- Add a default toleration for the HA Controller taints to the operator.

Operator v1.10.8 Changelog
--------------------------

### Changed

- Default images:
  * LINSTOR 1.25.1
  * LINSTOR CSI 1.3.0
  * DRBD 9.1.17
  * DRBD Reactor 1.4.0
  * Latest CSI sidecars
