Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 3B95842039E
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 Sep 2023 10:59:00 +0200 (CEST)
Received: by mail-wm1-f47.google.com with SMTP id
	5b1f17b1804b1-4053d53a1bfso71328115e9.1
	for <drbd-announce@lists.linbit.com>;
	Tue, 26 Sep 2023 01:59:00 -0700 (PDT)
Date: Tue, 26 Sep 2023 10:58:58 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZRKdUi8KUaMi7P7M@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m4fBbBd0G2A1d8+v"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.3.0-rc.1 (SNMP monitoring for DRBD)
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


--m4fBbBd0G2A1d8+v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this RC might be interesting not only for the current drbd-reactor
users, but also for the ones that were looking for DRBD device
monitoring via SNMP.

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

I guess there will be an unusually long RC phase (like 2 or 3 weeks?) to
collect input from users and our customers, especially on how we
represent the exposed data (see the MIB [2] and snmptranslate [3]).

Please test and provide feedback!

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

GIT: https://github.com/LINBIT/drbd-reactor/commit/430e2eedbb339212a6e7a18a1e0b231c1480c5d3
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.3.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

[1] https://docs.rs/agentx/latest/agentx/index.html
[2] https://github.com/LINBIT/drbd-reactor/blob/master/example/LINBIT-DRBD-MIB.mib
[3] https://github.com/LINBIT/drbd-reactor/blob/master/doc/agentx.md

--m4fBbBd0G2A1d8+v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmUSnUwACgkQRgmezyI6
myKB2Qf/WzO1hskLdOlXIkqIB85ncUnO0q2Hwzx5gN43/Fi5Ku771uHuaXroEZw3
uUfFglv/GUul6mQABiLoPKlefeNaP7J1GkYiXB78bw9Hq30VFgpnmzrqs5TyoU/z
M2UuRfDvCJLCLpmh6DaiePVei27YN/5dEyA6cSXop2yApiKG3ZNF39eGNi/RB88b
WWOsBICZk9EuV3/Y4bORngLYFOwPN5kk9HRdCyI4SIANFDAKwpfVMN8HM+cnt8U2
VShv4P7hAuZ5iSp5rrjai+Cir6S6XHlbFvL3iUroxoC/rRZ+WubQCSDDM3TiIxDg
AgfYtL2V9eEtzz+KRFwfSWEwTiAxYg==
=1cDy
-----END PGP SIGNATURE-----

--m4fBbBd0G2A1d8+v--
