Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 06FF54201EA
	for <drbd-announce@lists.linbit.com>;
	Thu, 12 May 2022 10:28:13 +0200 (CEST)
Received: by mail-wm1-f49.google.com with SMTP id
	bd25-20020a05600c1f1900b0039485220e16so3796049wmb.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 12 May 2022 01:28:13 -0700 (PDT)
Date: Thu, 12 May 2022 10:27:12 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <YnzE4CVn72woLzdy@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q+umq8A77iQG7EDR"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.7.0-rc.1
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


--q+umq8A77iQG7EDR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear DRBD users,

this is RC1 of the upcoming 0.7.0 release of drbd-reactor.

It brings bug fixes, improves robustness and includes a new feature. I
recommend all users to upgrade to the final version.

Features are always more interesting than bug fixes, let's start with
that: For DRBD resources (and services depending on them) that are
manged by the promoter plugin it is now possible set a list of
"preferred-nodes", as in 'preferred-nodes =3D [ "nodeA", "nodeB" ]' in
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

Please test. If there are no new bugs, I will release the final version
in about a week from now.

Changelog:
 * promoter: escape target name on stop
 * build: fix deb building
 * promoter: implement preferred nodes
 * promoter: rm path dep for promote service
 * events2: make parser more robust

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/29ceb37507b4f63af71cdc29=
4a28cfa07da95c70=20
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.7.0-rc.1.t=
ar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

--q+umq8A77iQG7EDR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmJ8xNkACgkQRgmezyI6
myJ0iwf9GXzKLEU1DjNmQIldIiMrFNl9kdWidKkDk+385cjHtxWoJqKJF4mPfaug
EYl98e5MUta2scE6DyaYkOAXMw5k+hEtUOf3CLpntwJHZ0U2Lqhy5Zu54gTrjiNF
E9fQ+GV65gNB1qXseIWOrny2akC5lWim+nS2P/0u4Q2RwdwglmzUPrgcH7N2X1+2
U/1CmKbbShJBZnekcn+D9HDp7b67OJsSNE4nUnlV7aLUhg5NHnVg26XZzItKYZ8O
RvmFB9aq56p6DX0B8dNqPJck3BjGpYA6isMNpSroiXURKf+GJgtXDvIc6hJDKkmv
e1eI1uV2nbpdzKBVPeZVD6hiTVInVg==
=Jmks
-----END PGP SIGNATURE-----

--q+umq8A77iQG7EDR--
