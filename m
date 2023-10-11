Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 67AB542016E
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Oct 2023 10:44:57 +0200 (CEST)
Received: by mail-wr1-f43.google.com with SMTP id
	ffacd0b85a97d-3248ac76acbso5780851f8f.1
	for <drbd-announce@lists.linbit.com>;
	Wed, 11 Oct 2023 01:44:57 -0700 (PDT)
Date: Wed, 11 Oct 2023 10:44:54 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZSZghpD3poTRfgyM@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OkvPBW5h/01VJhBz"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.3.0 (SNMP monitoring for DRBD)
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


--OkvPBW5h/01VJhBz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

version 1.3.0 of drbd-reactor might be interesting not only for the
current drbd-reactor users, but also for the ones that were looking for
DRBD device monitoring via SNMP.

Supporting SNMP with its different versions and capabilities (2c vs. 3)
is not that trivial as the Rust library support (for all versions in a
single crate) was not that great. But there is AgentX, a protocol that
is standardized and which can be used between the snmpd and a subagent
such as ours. While still being a horrible binary protocol from the
early 2000s, it is ways easier to write a subagent talking AgentX than
using SNMP directly.

This resulted in a AgentX library for Rust - there has not been one so
far - that supports all the PDU types and encodings the standard
defines, so if you ever need that for one of your projects on the daemon
or client side, this is the place to go [1].

With the new library we could write an AgentX/SNMP plugin for reactor
that exposes the usual DRBD metrics. These metrics are defined in a MIB
as usual [2], a user friendlier "snmptranslate" representation can be
found here [3].

Users should copy the MIB to a place where their tools can find them,
like ~/.snmp/mibs/ . Older LINBIT MIBs should be deleted. Then you need
to configure snmpd to allow AgentX connections and allow access to the
LINBIT tree. This is actually the most complicated part. It is always
snmpd configuration/permissions, almost never drbd-reactor if things
look correct but the tree is not accessible... A config snippet for
net-snmpd as shipped in RHEL is given in [3]. Don't forget to systemctl
reload/restart the snmp daemon.

Adding/enabling the plugin on the host is trivial, just do a:
$ drbd-reactorctl edit -t agentx agentx
and save the config, there are not too many options.

After that you should be able to display the tree with the usual tools:
$ snmptable -m ALL -v 2c -c public $host enterprises.linbit.1.2 | less -S

For further information see the MIB [2] and snmptranslate [3].

Thanks to Lars for all the snmp talk and Moritz for input/review on the
agentx library and the plugin.

Regards, rck

Changelog:
[ Roland Kammerer ]
* core,events2: fix str_to_bool
* core,daemon: don't start if tty
* agentx: implement plugin

[ Joel Colledge ]
* ci: upgrade virter and vmshed versions

GIT: https://github.com/LINBIT/drbd-reactor/commit/88a2350c101e8c2c75ebd7811d87ec154b7189ee
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.3.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1] https://docs.rs/agentx/latest/agentx/index.html
[2] https://github.com/LINBIT/drbd-reactor/blob/master/example/LINBIT-DRBD-MIB.mib
[3] https://github.com/LINBIT/drbd-reactor/blob/master/doc/agentx.md

--OkvPBW5h/01VJhBz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmUmYH4ACgkQRgmezyI6
myKa0wgAr+dS8ZkJ7rk9H84YxG5SNm9TAycvpGVY53F27JbnP7aeKL/O8QylxgrK
a1hAwsdrUfSW7Ii5dRbqHZIKZhKdWXQc0GJsHuiqW9aVrkDsofGiULeKAvQPcj/u
qrrqjQb645FovmEO7xtpFIyOW2MEEn2LQuLdbo7dNKA5VK/DNiEpL0v3hhQoPyeS
rh2Ed2FvjO0ryT7MNMB1zWhcHcnzBMG4VqN+kdfXc8AypM5KcjIK2SwzgUphcQa7
PeE58e3AqAEZ4nXdBDS+NnwhUMWQsIAy480FTmYRI8R74tW90YaAHIBouQsR2fCy
N9zXfqyQw6rMepZ1n5AFb2h/8E9nKA==
=AQPq
-----END PGP SIGNATURE-----

--OkvPBW5h/01VJhBz--
