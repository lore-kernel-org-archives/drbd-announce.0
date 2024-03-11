Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com
	[209.85.161.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id EAC9B4202BF
	for <drbd-announce@lists.linbit.com>;
	Mon, 11 Mar 2024 08:00:46 +0100 (CET)
Received: by mail-oo1-f52.google.com with SMTP id
	006d021491bc7-5a1cd796813so864467eaf.0
	for <drbd-announce@lists.linbit.com>;
	Mon, 11 Mar 2024 00:00:46 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Mon, 11 Mar 2024 08:00:00 +0100
Message-ID: <CAKnz9x+EmHUh+GSbo7-9kKw=02_kv9CNx9tjb7b+qvahZAaFew@mail.gmail.com>
Subject: LINSTOR Operator v2.4.1 and v1.10.9
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
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

We've recently released versions 2.4.1 and 1.10.9 for our Kubernetes Operator.

These contain updated LINSTOR and DRBD versions, as well as a few
improvements for the v2 release regarding SELinux support.

There is currently a known issue affecting LINSTOR Controllers using
the default "k8s" database. The issue causes the space tracking
service to shutdown when trying to prune old entries, which then
causes the Controller to restart. Affected are LINSTOR Controllers
which have been in use for more than 15 months. As a work around, you
can manually delete the "space history" entries that are older than a
year. To list these resources, you can use the following command:

  kubectl get spacehistory.internal.linstor.linbit.com
--sort-by='{.metadata.creationTimestamp}'

A fix is scheduled to be released with the next LINSTOR version.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.4.1.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait

To get specific instructions to apply the update, check our users guide[1].

If you need to upgrade from Operator v1, check out our upgrade guide[2].

Source code is, as always, available upstream[3].

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://charts.linstor.io/migration/
[3]: https://github.com/piraeusdatastore/piraeus-operator

Operator v2.4.1 Changelog
-------------------------
### Added

- New DRBD loader detection for:
  * Rocky Linux 8 & 9
- Report `seLinuxMount` capability for the CSI Driver, speeding up
volume mounts with SELinux relabelling enabled.
- Alerts for offline LINSTOR Controller and Satellites.

### Changed

- Use node label instead of pod name for Prometheus alerting descriptions.
- Updated images:
  * LINSTOR 1.26.2
  * DRBD 9.2.8

Operator v1.10.9 Changelog
--------------------------
### Changed
- Default images:
  * LINSTOR 1.26.2
  * LINSTOR CSI 1.4.0
  * DRBD 9.1.19
  * Latest CSI sidecars
