Received: from mail-lf2-f12.google.com (mail-lf2-f12.google.com [74.125.229.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D6B3368957
	for <drbd-announce@lists.linux.dev>; Tue, 22 Sep 2026 10:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.229.204
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790074003; cv=none; b=HKsM4+CZAgOMnxXZkHSHU89XoZ2RbiPC4W1/FDvExqcEa7lcJuU+mcnsmLsKpwc2MxzjqvHNTS9rgriOYByall0rugY8TvIDAMuMaiQmLGk+gmyDc3RA764O86tUf3x1bk+KjTtnr26+I1ctUVpdZp/InCHFr2XVa0jAE13/6L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790074003; c=relaxed/simple;
	bh=0taOGW4p8gTRHHZ6rn5xQTdRdihVfUBIlFUdRVYVzYU=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=RFnQx6l4FBjucJPLIFtvqehRmsLgl2lNpQuOeXIOVs/Jbt07omR6SzoJonAJc+yX5ievbhGKK8v5DBx3KpiUm+ci9wSpLY0Q3Ts/NjwmnxmYDUfwqw6BwPvL07GKcng+iaQbeq1oKRNnhTnMwDpYnpGv53XUnc35YT8I1dudb64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=eiX2/0bo; arc=none smtp.client-ip=74.125.229.204
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="eiX2/0bo"
Received: by mail-lf2-f12.google.com with SMTP id 2adb3069b0e04-5b5e4f1651bso3411821e87.3
        for <drbd-announce@lists.linux.dev>; Tue, 22 Sep 2026 03:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1790073999; x=1790678799; darn=lists.linux.dev;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qHf9mltob9YFyONFnaGQ/Fr7qYpGXuHn0B+/D/f/WZk=;
        b=eiX2/0boKuRf0W8CG769rr3x1OMyMBLb3s2ZDRRobJpQvufwL6xTrnfe4YY4dvQJwu
         5duIFaf4TckUgwbgI7K5ie/awanieMiN86ngbKtD7VTC8wT4E7hGNNal/Ca9S69TUzZT
         P/H4BGQUCPsh15QDl/p3ZIFYvt62oyg20kN8wuDqgQ/af8mSte8cPi0dL5q1Y+d92Urk
         3yYWpaNR9ru1aW6Ee7LsRZzDAtxay0dmT1I/dHENfENwKowGc4g1GeGV++d3AcW4cWaU
         1TdxONs6sOhgFrtESNp+FhLyXKLVGjU1BBIVO4Srknsu0mSY59NYv9OOtVZPUTHVDU0t
         icXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790073999; x=1790678799;
        h=user-agent:content-disposition:content-type:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qHf9mltob9YFyONFnaGQ/Fr7qYpGXuHn0B+/D/f/WZk=;
        b=oOqVTP4BAvmVs0UwUGnpoXUCqBOnNuiAU17/un4nVuVpWv8UU43nKQ/MHpSKlR5IYc
         g5DcKvzhNx5Zc8SJtRfcUtS5IxBHcx8BwYst/rb/VZK8Wvnyt59RkKqQoZAZZ3ZYxVdq
         zdFFnSGiV/M7kXyOLebsJ/t3K5Zx1Ud4PNZsuRD0D2wVLOZ0nBeQ+mXYSh/FpK657kSh
         FkxSo9lncEatIa4cJ4QClbQrUJ31lakM4QiPrFJiSEdq30DvbYw6vWkBPCd+opddd0+C
         mcMzYw2JN/BCnO6I62RE+McMr2io+JRtqehrfRosZpE7MFEOFIIVMm7MjQ8s/zxhlJTM
         oYEQ==
X-Gm-Message-State: AFuF++kooNaGW3eDvIuZp32jBM4EuRi0vK2NJH1kwGEkeF2Gl0chALN9
	jZSxjBm1duYd7oQuFEok+FIusLdwWlTGqYbaa0CLQeRUGz/iJ6yBlNo+E+U+pX2knR/4VHWm3wX
	YzNp/fUSq6w==
X-Gm-Gg: AYBFou2uhNdTdmHSz1AI9/L+FInxEVfUSmcgMZDNGHJOkhJOH5TeYJOhFi5TnnFtjuB
	Zd5SA/MXUYZTePrSj676YwzMXqSKuVyNIHTrFfPtG8Vi/KGRdxffrreS4p0PJswpPUEJOD5ff5/
	niZHQgLN8LF2qKj92yqxFWCV4htudf8RXksSIg0o6hA+cJJqU7MEPA1lvbKwCSzpjwa49WPg8gv
	VhQj9fdhzVUmZVDL/PEb61jpYXoMMPzVFGCcQT/hb+0PDRMi1vohpXi2OEAWkExa+6Dn1jyT7Kn
	Q0hUkhxV/kgNLHYu4ulgQIbe9gqeT8PggQQ0VRAl6qf33vI5V4ZYE9/c7UP383g+IsMgDTC6d2w
	cepSc7HDxT3IT9RTpe3mDbOw5vrl//y4/1hMNwPvo2Kxbsx3lgbZkufC/rMfmwSCvSexGvt31tc
	pyUraUH6jVxeIuS+ODrFSR/Xhfd4XEo0GheQHNiadjsCTZHXuhCtFrNzPdFeQ4GLEvCng1YuqW6
	H3IzTqOPYzsvFuo8IafZ+MWD8eLqTxM6EZtBA2QvOp/7xlyinA=
X-Received: by 2002:a05:6512:3196:b0:5b6:1883:d601 with SMTP id 2adb3069b0e04-5b8c1959b72mr4100218e87.64.1790073999393;
        Tue, 22 Sep 2026 03:46:39 -0700 (PDT)
Received: from localhost (static.57.82.181.135.clients.your-server.de. [135.181.82.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8d46d21dcsm381132e87.16.2026.09.22.03.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 03:46:38 -0700 (PDT)
Date: Tue, 22 Sep 2026 12:46:36 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-utils v9.35.0-rc.1
Message-ID: <arJcjKDJRIWg80V3@arm64>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zYseC+5HnBvDf7PM"
Content-Disposition: inline
User-Agent: Mutt/2.3.3 (2026-06-12)


--zYseC+5HnBvDf7PM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is the first RC of the upcoming version 9.35.0. It contains
improvements and fixes all over the place. Highlights include a major
DRBDmon update, various drbdmeta metadata conversion improvements, and
SELinux improvements. This release contains a lot more code than any of the
previous I remember the last ~10 years, so please test.

I had to force push github master today, sorry for the inconvenience. master
points at https://github.com/LINBIT/drbd-utils/commit/e06af0ef747cf8e1745c27c1ef29bdcf3b9debef
This mail including the hashes (as well as the release commit and tags are
gpg signed, so nothing to be too worried about).

IMPORTANT - read before upgrading on Debian-based systems:
==========================================================
This release splits drbd-graceful-shutdown.service into separate
disconnect and down services. Unfortunately, when upgrading from any
previous version that ships drbd-graceful-shutdown.service (9.26.0 up
to and including 9.34.0), the *old* package's prerm stops that service
during the upgrade. Its ExecStop runs "drbdsetup down all", which takes
down all DRBD resources on the live system in the middle of the package
upgrade. RPM-based systems are not affected.

Before upgrading drbd-utils on a Debian-based system, neutralize the
ExecStop with a runtime drop-in:

  mkdir -p /run/systemd/system/drbd-graceful-shutdown.service.d
  printf '[Service]\nExecStop=\n' >/run/systemd/system/drbd-graceful-shutdown.service.d/50-upgrade.conf
  systemctl daemon-reload
  # then upgrade drbd-utils

The drop-in lives in /run and is self-cleaning; it is gone after the
next reboot. The service got split into 2 separate services
(drbd-graceful-{down,disconnect}.service), so you can keep the override for
the old one till you reboot, you don't need to remove the file or reboot
immediately.

If you upgraded without this step and your resources went down,
"drbdadm up all" (or restarting linstor-satellite) brings them back up.

Please test, if we don't find any issues the final release will be about
a week from now.

Regards, rck

GIT: https://github.com/LINBIT/drbd-utils/commit/d41faabfbb369f2fb1c5164920d6ab2e035aa01a
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-utils-9.35.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
9.35.0-rc.1
-----------
 * drbdadm,adjust: fix ordering to run del-peer after connect;
   avoids quorum-deadlocked resources when swapping a tiebreaker
 * drbdadm: fix segfaults and buffer overflows (config parser,
   adjust with proxy without path, "_unknown" options)
 * drbdadm,adjust: support dedicated proxy nodes; name proxy
   connections after DRBD node names
 * drbdadm: add dump-superblock command
 * drbdadm: skip diskless volumes when iterating "all"
 * drbdmeta: metadata conversion improvements: add convert-dump,
   re-create the bitmap on v09 to v08 conversion, refuse v07,
   restore-md handles changed bitmap slots/granularity and
   activity log geometry
 * drbdmeta: create-md: add UUID control options (v09);
   report by how much a file system is in the way
 * drbdmeta: resize: fix bitmap copy offset, fsync new metadata
   and zero the old region
 * drbdmeta: mark all out of sync when the AL was disabled at
   a crash; initialize the AL on restore-md
 * drbdmeta: add --quiet and --var-lib-drbd options
 * drbdmeta: various fixes: out-of-bounds read in apply-al,
   memory leaks, 64 bit shift, reject foreign bitmap granularity
 * drbdsetup: fix events2 --now blocking forever
 * drbdsetup: fix "sequence mismatch in netlink reply" race in
   wait-* commands
 * drbdsetup: handle ERR_PATH_COLLISION; hint at
   DRBD_GENL_RCVBUF_SZ on rcvbuf errors
 * drbdsetup: show resync suspension by parallel-resync limit
 * userspace: switch from genl_magic macros to YNL-generated
   netlink headers
 * libgenl: fix setsockopt sizes and unchecked realloc; no
   SO_RCVBUF warning without CAP_NET_ADMIN
 * SELinux: allow usermode helper transition to drbd_t, module
   loading on Oracle UEK, setpgid for Pacemaker; auto-label
   /var/lib/linstor.d/
 * drbdmon: major update: selection filters, bulk actions,
   export/import
 * scripts: add drbd-fence-peer.sh fence-peer handler and
   find-resources-with-unrotated-uuids.sh
 * drbd-verify.py: report which files are affected by
   out-of-sync blocks; new JSON schema and --report modes
 * systemd: split drbd-graceful-shutdown into disconnect and
   down services
 * debian,spec: do not stop or restart units on upgrade; handle
   drbd-configured.target; debian compat 9 to 12
 * doc: new mailing list address; fix disk shipping procedure

--zYseC+5HnBvDf7PM
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmqyXIUACgkQRgmezyI6
myICQAgAtV2tmIiWfR249N6k4di397feEDwIXEtR273i7CLsM0me+QjElEpcPfJ4
hPCxg30WJfSX2f7KJe8yZ311Mc9WKG0JI34VLbjqWV8BZBcKMeYnKd2QSTk+SAYA
SxQO8eQ2IQlINuCosGCHoSPE2SAoad/Pq4q12dmmiUgZMT63Ev+bzRRFumf3bQTe
MePUYR55lgJoJlRRHPEcYnGpxuPeaybQuBWlQZTgY0YB34M4ojQ+Po80Up5TS1o9
QQejQpdM2JryTB0Gkqgda4928JbJoB9OyjgwSmUUd+7ZC+vax9pKTON2b277FOUJ
gM+oPLrhXGMQyBgGmt2kOZ7doMM8ng==
=JGXw
-----END PGP SIGNATURE-----

--zYseC+5HnBvDf7PM--
