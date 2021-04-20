Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id EFA7D4203BB
	for <drbd-announce@lists.linbit.com>;
	Tue, 20 Apr 2021 16:08:58 +0200 (CEST)
Received: by mail-wm1-f41.google.com with SMTP id
	n4-20020a05600c4f84b029013151278decso8853990wmq.4
	for <drbd-announce@lists.linbit.com>;
	Tue, 20 Apr 2021 07:08:58 -0700 (PDT)
Date: Tue, 20 Apr 2021 16:08:56 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210420140856.GF1935@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dTy3Mrz/UPE2dbVg"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor (was drbdd) v0.3.0-rc.1
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


--dTy3Mrz/UPE2dbVg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first RC for v0.3.0 of drbd-reactor. With this release we
renamed the project from drbdd to drbd-reactor. We assume there are not
too many existing installations, but if so, copy your /etc/drbdd.toml to
/etc/drbd-reactor.toml and you should be good to roll

This version *requires* drbd-utils >=9.17.0, the RC of drbd-utils
released today will work.

The most exciting feature certainly is prometheus.io monitoring for
DRBD. We basically expose everything that is part of the events2 stream,
plus some higher level metrics. With that it is almost trivial to
generate useful grafana dashboards. Here is one showing parts of our
infrastructure, so you can get a feeling what this is about:

https://transfer.sh/FhbMX/drbd-reactor-prometheus.png

Note that this is a quick draft, we are sure you can build even more
exciting ones. A list of metrics can be found here[1]. These are the
obvious ones, we will add others based on user feedback.

The second change I want to mention explicitly is that it is now
possible to put toml snippets into /etc/drbd-reactor.d/. In the future
this will make it easy to dynamically create/delete promoter
configurations and relead drbd-reactor picking up plugins/unloading
them.

Please test. If there are no unexpected bugs, I will release the final
version in about a week from now.

Regards, rck

* events2: fix device blocked type
* events2: add "path" information
* plugins: split into "change" and "event" plugins
* prometheus: implement exporter
* add drbdd.d snippets
* promoter: add stop-services-on-exit
* prometheus: cleanly shutdown TCP handler
* drbdd -> drbd-reactor
* core: add statistics polling
* debian: rm dh-systemd

DEB: https://transfer.sh/lDUkG/drbd-reactor_0.3.0-rc.1-1_amd64.deb
RPM: https://transfer.sh/bcV4a/drbd-reactor-0.3.0-rc.1-1.x86_64.rpm
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/
TGZ: https://linbit.com/downloads/drbd/utils/drbd-reactor-0.3.0-rc.1.tar.gz
GIT: https://github.com/LINBIT/drbd-reactor/commit/02e70e92557c86916667647f18ffaa9f7f457a7b
[1] https://github.com/LINBIT/drbd-reactor/blob/master/src/plugin/prometheus.md


--dTy3Mrz/UPE2dbVg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmB+4HMACgkQRgmezyI6
myJ8vQgAixig6NCzAdRbfZQbxWk/CbKHmrc7SRN957KAJ8oTejBtPzIoKe4uI80v
xfxiP3aRreaXhS6Ua+GHDVtj3HJ6Somi3LRBfzWOBDagTnla2LLmOb5Fhq5BmLgb
+mG9IaZ49GloGhMSBvA/HfBt4jzwQ3toGPahKLInFYtGoqlNItTdQAR0c7fWRpPi
dT+0vwachtF+jkGL5DLTwC/y1aNWWgi0isl72r7JYo06lPqAztjgiwNnUwg+dhuk
TmvAWZKbB1AwgKYfw0mddsRv72+TKmQLq6FMq559FuJEKsG3Z5+OFF7fzmPJLRNc
Ikz0I/djtesEvYqXN0zR3FjXonhsrA==
=xEkh
-----END PGP SIGNATURE-----

--dTy3Mrz/UPE2dbVg--
