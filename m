Return-Path: <moritz.wanzenboeck@linbit.com>
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id BCC494205D7
	for <drbd-announce@lists.linbit.com>;
	Wed,  2 Jun 2021 10:19:23 +0200 (CEST)
Received: by mail-wr1-f50.google.com with SMTP id q5so1350343wrs.4
	for <drbd-announce@lists.linbit.com>;
	Wed, 02 Jun 2021 01:19:23 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Moritz_Wanzenb=C3=B6ck?= <moritz.wanzenboeck@linbit.com>
Date: Wed, 2 Jun 2021 10:19:12 +0200
Message-ID: <CAKnz9xKchwzwm62W8p7q4Th7ufF4QKzF+kWj3RmY_QbhcY0WFQ@mail.gmail.com>
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset="UTF-8"
Subject: [DRBD-announce] OpenStack-Cinder Driver for Linstor v2.0.0
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

Dear Linstor on OpenStack users,

We are glad to announce a new version of our OpenStack integration for Linstor.

Version 2.0.0 of the Cinder driver makes use of many features added to
Linstor over the last 2 years. Among those features are: Resource
Groups, connecting to HA deployed Linstor controllers, volume backed
live migration and many more.

Among the many features added to Linstor since the last release of the
Cinder driver, resource groups are perhaps the most important.
Resource Groups allow specifying options for a group of related
Linstor Resources, which makes them the ideal match for Volume Types
in OpenStack. The Linstor driver will create a Resource Group for
every Volume Type.

With the added support for Volume Types, it is now also possible to
influence Linstor Resources via properties on the Volume Type. For
example, if a Volume Type has the "linstor:redundancy" property set to
5, every OpenStack Volume of that type will be spawned with 5
replicas. It also allows influencing resource placement, DRBD options
and more. For all the available options, please consult the User
Guide.

Another addition is the support for volume backed live migration for
the DRBD transport. This allows the live migration of a VM without
lengthy copying of the backing volume, reducing the down time during
migration to a few seconds.

The new driver also allows specifying multiple Linstor Controller
addresses for use with Linstor high availability, along with HTTPS
addresses with client authentication via TLS certificates.

The release also removed many options that were replaced by better
alternatives.

Many configuration options from cinder.conf got removed, as they are
better served via Volume Types/Resource Groups.

All options for Linstor cluster management got removed as well. The
option to automatically create nodes and storage pools was unreliable
at best.

An updated User Guide with examples, new options and install/upgrade
nodes is available here[1]. The driver itself is available from our
github[2].

We are in the process of upstreaming the code to the OpenStack
project. In the meantime, we backported and tested the driver for all
current stable releases of OpenStack (Codenames: Stein, Train, Ussuri,
Victoria, Wallaby), so you can start using it right away.

Best regards,
Moritz

[1]: https://linbit.com/drbd-user-guide/linstor-guide-1_0-en/#ch-openstack-linstor
[2]: https://github.com/LINBIT/openstack-cinder/

Linstor Cinder Driver 2.0.0
---
* Use python-linstor 1.7.0
* Support multiple controllers addresses
* Support HTTPS addresses
* Support TLS client authentication
* Bump minimum Linstor API version to 1.4.0
* Require cinder host to be part of the Linstor cluster
* Support vendor properties on Volume Type
* Create resource groups per volume type
* Always use autoplace for new volumes
* Support revert to snapshot when possible
* Add support for fast retype/migration when possible
* Automatically add temporary diskless resource if required
* Support multi-attach for iSCSI transport
* Support live-migration for DRBD transport
* Support encrypted volumes if udev rules exist
* Removed storage pool and node creation
* Removed autoplace configuration from cinder.conf
* Removed storage pool configuration from cinder.conf
