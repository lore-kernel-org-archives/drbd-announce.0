Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 11A4E420005
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Apr 2020 15:30:49 +0200 (CEST)
Received: by mail-wm1-f45.google.com with SMTP id h2so4577116wmb.4
	for <drbd-announce@lists.linbit.com>;
	Thu, 16 Apr 2020 06:30:49 -0700 (PDT)
Date: Thu, 16 Apr 2020 15:30:47 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-user@lists.linbit.com, drbd-announce@lists.linbit.com
Message-ID: <20200416133047.GO27053@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline
Subject: [DRBD-announce] linstor-csi-0.8.0
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


--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear LINSTOR on k8s users,

Today we released version 0.8.0 of the LINSTOR CSI driver. The most
noteworthy feature/change is support for LINSTOR resource groups (RG).
All the parameters that can be set on a k8s storage class (SC) that make
sense in the context of a LINSTOR RG are stored in the per SC defined
RG.

This cleans up the code nicely, as properties set on a resource group are
inherited to all resources of the resource group, and it allows to set
DRBD options in the SC. This is documented with an example here[1].

Users really should move to SCs that have a "resourceGroup" parameter
set. In the documentation it is already mentioned as mandatory. I tried
hard to not break existing deployments, so *for* *now* SCs without a
"resourceGroup" are fine at the cost of an auto-generated resource group
per PVC (which if it gets deleted also deletes the auto-generated RG).
The SC is the supposed and only way to define properties of a RG. The
driver might delete/overwrite manually set ones.

Upstream code can be found here[2].

If you need container images that are RHEL/OpenShift certified, get in
contact with sales@linbit.com, we run a container registry with such
images for our customers.

Regards, rck

Changelog:
- Changed
  - moved upstream to piraeus
  - License changed to Apache2 (from GPLv2)

- Deprecated
  - SCs without a resourceGroup parameter. For now we create a random
    LINSTOR RG for every PVC of a SC that does not specify
    resourceGroup.  You should get rid of these SCs soon.

- Added
  - TLS mutual auth support for LINSTOR API endpoint
  - support for LINSTOR resource groups. Every storage class maps now
    to a LINSTOR resource group.  DRBD options can now be specified in
    the SC as "parameter".  See the example in class.yaml. Keys as
    specified in the LINSTOR REST API.

[1] https://www.linbit.com/drbd-user-guide/linstor-guide-1_0-en/#s-kubernetes-basic-configuration-and-deployment
[2] https://github.com/piraeusdatastore/linstor-csi/


--PNTmBPCT7hxwcZjr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAl6YXfwACgkQRgmezyI6
myItlAf/Wyg/U0MWB7ybiuU+3c4QDvX6Nbe/OrrWnQBJ193Crfx7CM0pjPSBqsXA
9HHgjllw7AEXEpSosnIndUeBvnUin9k+jsSI9Xt6I+0UB0ZDliMMGsVeiy7+Jim2
ZeNdrIEHzSW7k5T2xXqeEVBQWkAZwReLCQSDy7rLhWbGMgooZ+X0VgQyvoL5ZQTB
+mozRHoEHRjA53g/o1Bo7QZ3XHnNDNfhyyZGZRVMFTVaPBkO1MGWTnUlxm3C3r5C
ilSchM+GWPJsz2uQgf2cOrlFoWQJGutRsTH7yk375s1AofXwP+8vLY8C+fmlwzwf
nQjJhn3zG9wJJf5SxPr7qW82MYaI5g==
=niZz
-----END PGP SIGNATURE-----

--PNTmBPCT7hxwcZjr--
