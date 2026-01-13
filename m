Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 138AA160884
	for <drbd-announce@lists.linbit.com>;
	Tue, 13 Jan 2026 13:08:12 +0100 (CET)
Received: by mail-wm1-f42.google.com with SMTP id
	5b1f17b1804b1-47ee0291921so1152085e9.3
	for <drbd-announce@lists.linbit.com>;
	Tue, 13 Jan 2026 04:08:12 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Tue, 13 Jan 2026 13:08:01 +0100
Message-ID: <CAKnz9xLQf86cDpKbmKB741Ef8kXZdpL6jsEPdOsQKRp53FgC7w@mail.gmail.com>
Subject: LINSTOR Operator 2.10.4
To: drbd-announce@lists.linbit.com
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

We've just released another small bug fix for our Kubernetes Operator.

This updates the LINSTOR CSI image to 1.10.5 to be compatible with
LINSTOR 1.33. We have intentionally not updated the LINSTOR version
itself to the latest 1.33.1, as that is left for the next feature
release of our Operator.

We have also fixed the CSI Node container liveness probes not working
as intended because of a name collision on the container ports.

When evacuating Satellites, we now no longer wait for other Satellites
that are also evacuating, leading to a deadlock with Satellites
waiting for each other to be evacuated without making progress.

We recommend all users of release 2.10.x to update to this latest release.

To upgrade, either point your kustomization.yaml at the new manifest:

  https://charts.linstor.io/static/v2.10.4.yaml

Or, if using helm, upgrade the linstor-operator chart:

  helm repo update
  helm upgrade linstor-operator linstor/linstor-operator --wait

To get specific instructions to apply the update, check our users guide[1].

Source code is, as always, available upstream[2].

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-upgrade
[2]: https://github.com/piraeusdatastore/piraeus-operator

----
### Fixed

- Name collision for CSI Node container ports
- Do not block evacuation on other satellites being evacuated.

### Changed

- Updated images:
    * LINSTOR CSI 1.10.5
