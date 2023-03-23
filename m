Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id C4ECB420965
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Mar 2023 10:41:16 +0100 (CET)
Received: by mail-wm1-f47.google.com with SMTP id
	t17-20020a05600c451100b003edc906aeeaso1562576wmo.1
	for <drbd-announce@lists.linbit.com>;
	Thu, 23 Mar 2023 02:41:16 -0700 (PDT)
Date: Thu, 23 Mar 2023 10:41:14 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <ZBweusxOyyapD9qd@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GActzoZkiOuxNliG"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v1.1.0
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


--GActzoZkiOuxNliG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD users,

this is drbd-reactor version 1.1.0. There have not been any reported
issues for RC1.

Noteworthy things in this release:
- the prometheus plugin now exposes a metric for DRBD versions (loaded
  kernel module and drbd-utils). Currently this is evaluated once at
  plugin start.
- a fix for the promoter plugin when used with OCF agents (see version
  1.0.1)
- I guess this is the first release where I'm not the contributor with
  the most commits. Thanks to Joel and Matt for putting a lot of effort
  into CI tests. Also to Moritz who is "invisible" in the Changelog but
  irons out most of my bugs during review
- drbd-reactorctl is now cluster/context aware

I want to elaborate on the last point a bit, taking most of the
information from drbd-reactorctl(1):

There are now global arguments, '--context' and '--nodes' that allow to
specify a cluster context and to filter nodes in that context.

Users can define cluster contexts via toml files which consist of nodes
entries that themselves have fields for hostname and user. Usually one
does not need to set the specific fields as they have sane defaults: The
name of the node entry is used as hostname if not otherwise specified,
and root is the default user. If a cluster context is given or
default.toml exists commands are executed on all nodes defined for that
context. Execution is carried out in parallel via ssh.

A simple configuration can look like this:

 cat ~/.config/drbd-reactorctl/production.toml
 [nodes."alpha.mynet"]
 [nodes."beta.mynet"]
 [nodes."gamma.mynet"]

Node names should follow the output of uname -n and also please make
sure to quote node names containing dots.

It is also possible to define a command that is executed to generate the
nodes list via nodes-script. These commands, usually simple shell
scripts, are expected to be stored in the same directory as the toml
files. The scripts are expected to generate a valid nodes list as
documented above on stdout. Such a configuration would then look like
this:

 cat ~/.config/drbd-reactorctl/linstor.toml
 nodes-script="linstor.sh"

To disable a promoter plugin (linstor_db in our example) and stop its
systemd target cluster wide, one could now execute:

 drbd-reactorctl disable --context production --now linstor_db

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/d07771d37bfec71880e40257d43d285d6f4209ec
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-1.1.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Changelog:
[ Joel Colledge ]
* e2e: add initial end-to-end test infrastructure
* e2e: provide a clear error when an empty test name is given
* e2e,virter: add provisioning file for tests
* e2e,docker: add initial container configuration for test suite
* e2e,virter: add initial Virter provisioning file for running tests
* e2e,virter: add configuration and a wrapper script for running vmshed
* e2e,virter: add getting started guide
* ci: add explicit stage to existing jobs
* ci: add job to build for e2e tests
* ci: add job to build docker image for e2e tests
* ci: add job to run end-to-end tests
* ci: add e2e tests lint job
* e2e: shorten names ReactorPromoter -> Promoter etc.
* e2e: add initial test for the User Mode Helper Plug-in
* ci: add job to check e2e test typing
* ci: allow pipeline to be started from the API
* e2e: factor polling for a condition out into a function
* e2e,promoter_preferred_node: make test more reliable
* Revert "e2e: disable promoter_preferred_node"

[ Roland Kammerer ]
* ci: disable for ordinary remote branches
* e2e: disable promoter_preferred_node
* prometheus: expose drbd_version
* promoter,ocf: fix env for old systemd
* ctl: add context

[ Matt Kereczman ]
* e2e: add preferred node to promoter tests
* e2e: add prometheus test

--GActzoZkiOuxNliG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmQcHrcACgkQRgmezyI6
myJQQAf/T2XTfj5yVq6R4RI1XLvQYYYdB3clN+9Y5tbOqQVrflFCCGPgSJUa87x9
UxnzHM4Rkkrz0hp+VYTPXGJXabpgFxWy3KznGSba22IR1ruS1C6T55yXx0OGi4Uq
iI+WaFknM9pCHxQiQC2H8WRYGaSSTc4v7Ai/O/Pl+2XBJKLn+85bOcQcVVCI3L6B
S3iEtIQ5jfbMNp07ak3NNINJpSuE+LM4J/ej87EfNVwfmufXduC9GMrOaE8uLZSf
QS4SkGQllwerNWAn//r4yfefcMjDJbtNuK8snSY+D6FgwkeVWaE8xMx+EKpHnjSM
IXlY9Ytt/ZBtxDQ59+t6VoIjIqntQA==
=Xp5t
-----END PGP SIGNATURE-----

--GActzoZkiOuxNliG--
