Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2E2E94201BD
	for <drbd-announce@lists.linbit.com>;
	Thu, 19 May 2022 14:56:50 +0200 (CEST)
Received: by mail-wr1-f41.google.com with SMTP id k30so7055813wrd.5
	for <drbd-announce@lists.linbit.com>;
	Thu, 19 May 2022 05:56:50 -0700 (PDT)
Date: Thu, 19 May 2022 14:56:49 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YoY+kVoKo+0rg4IH@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="muP+tEeCIfuIBncm"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.7.0
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


--muP+tEeCIfuIBncm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is version 0.7.0 of drbd-reactor. There have not been any changes
since RC1, the rest is the RC1 announce mail:

It brings bug fixes, improves robustness and includes a new feature. I
recommend all users to upgrade to the final version.

Features are always more interesting than bug fixes, let's start with
that: For DRBD resources (and services depending on them) that are
manged by the promoter plugin it is now possible set a list of
"preferred-nodes", as in 'preferred-nodes = [ "nodeA", "nodeB" ]' in
let's say a 3 node cluster consisting of nodeA, nodeB, and nodeC. The
names have to match "uname -n".  With that in place nodes calculate a
sleep delay depending on their position in the list, and as soon as
resource can be promoted, they sleep for that delay until they actually
try to promote the resource. In the example above nodeA will not sleep
at all, nodeB will sleep 1s, all other nodes (in this case nodeC) 2s. In
this case nodeA will then win the race for DRBD promotion.  If a node
vanishes, like in case of a node failure, and then comes back later,
services will switch back to that node if it has a higher preference
than the node that currently hosts the services and has UpToDate data.

The usual note applies, here: use that feature with caution! IMO every
node has to have enough resources to run all of the services in all
cases. You are HA or you are not. "thinly provisioned HA" :).

The events2 parser became more robust and now ignores new/unknown
keywords, but progresses with what it could parse. This should avoid
releases like 0.6.1 in the future.

One bug that got fixed is that systemd targets that needed escaping,
like "foo-1" have not been stopped properly (e.g., on failover due to
quorum loss).

There are other small improvements that are out of scope for this
"short" announce mail, please read the git history if you are interested
in these.

Changelog:
 * promoter: escape target name on stop
 * build: fix deb building
 * promoter: implement preferred nodes
 * promoter: rm path dep for promote service
 * events2: make parser more robust

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/43ffc8c6b98e5ed44b81d1e5b7bc72139eb326b9
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.7.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--muP+tEeCIfuIBncm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmKGPosACgkQRgmezyI6
myIcPAgAn6kUiVwTkkuiZnlmxc4mpJe+v4x/2E8p69im664i03AbNGo9DGnckCJF
nNLZj/3Mc6dRJPQu4geaUlSI/+mHg7+by+ke2kVX6IOaIyh6LKWTxxJzmSiPZ16Q
bjRQWvDU/aLVOk2ILyUbs2+wTx3cYCK2v9rC+JKaZ3rXV3BkCqSqkTMIOf9s/NAs
7F1gIIQYgERffoKpqgPvMTfeS8qkw5SuWixgzS4keBO+XhufyvU+jMhFfzscMKVU
rPw9G7ybrD+aY/0QLXaorl29I+ZBKMwQqmTUbwEuXYfdg1Mz6tcuFv/v0GDZtL7o
XyLX7QLhWlor220AhkGMF1p7y8+SGQ==
=+4pU
-----END PGP SIGNATURE-----

--muP+tEeCIfuIBncm--
