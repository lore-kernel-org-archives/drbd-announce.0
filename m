Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id A6DEF4205DE
	for <drbd-announce@lists.linbit.com>;
	Fri, 12 Nov 2021 15:32:17 +0100 (CET)
Received: by mail-wr1-f44.google.com with SMTP id u1so15810534wru.13
	for <drbd-announce@lists.linbit.com>;
	Fri, 12 Nov 2021 06:32:17 -0800 (PST)
Date: Fri, 12 Nov 2021 15:32:15 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20211112143215.GE1745@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rS8CxjVDS/+yyDmU"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.5.0-rc.1 (including HA FS mount
	example)
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


--rS8CxjVDS/+yyDmU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD(-reactor) users,

this is the first release candidate of version 0.5.0

Besides minor fixes for Ubuntu Bionic, and some upgrades for containers,
the main feature is proper demote failure handling in the promoter
plugin.

There was the "on-stop-failure" action, which at one point worked, but
did not do anything since we switched to a more fancy systemd.target
logic. What we really care about when managing services (and a potential
fail-over because of a service failure) is if things are stopped in a
way that the DRBD device can be demoted to secondary. If not, we might
need to halt or reboot the node so that another node can take over the
DRBD resource and the services depending ot it.

This is done via the new setting "on-drbd-demote-failure".
"on-stop-failure" is deprecated and ignored. The new option can be set
to any action defined for "FailureAction" as defined in systemd.unit(5).
If the DRBD resource can not be demoted, that action is executed.

Let's see how that looks like in a HA cluster providing a file system
mount. I assume a working linstor cluster (while not strictly required).
A good way to help us testing is using the PPA. If you are using fresh
VMs, make sure that you restart multipathd after the first drbd-utils
install. So, let's assume a 3 node cluster, which also has this RC of
drbd-reactor installed:

Let's create a 3 node DRBD resource:
$ linstor rg c --place-count 3 promoter
$ linstor rg drbd-options promoter --auto-promote no
$ linstor rg drbd-options promoter --quorum majority
$ linstor rg drbd-options promoter --on-no-quorum io-error
$ linstor vg c promoter
$ linstor rg spawn promoter test 20M

And a file system:
$ drbdadm primary test
$ mkfs.ext4 /dev/drbd1000
$ drbdadm secondary test

And a mount unit for the storage:
on *all* nodes:
$ cat <<EOF > /etc/systemd/system/mnt-test.mount
[Unit]
Description=Mount /dev/drbd1000 to /mnt/test

[Mount]
What=/dev/drbd1000
Where=/mnt/test
Type=ext4
EOF

And a simple drbd-reactor::promoter config:
on *all* nodes:
$ cat <<EOF > /etc/drbd-reactor.d/mnt-test.toml
[[promoter]]
id = "mnt-test"
[promoter.resources.test]
start = ["mnt-test.mount"]
on-drbd-demote-failure = "reboot"
EOF

on *all* nodes:
systemctl start drbd-reactor

Then you can check which node is Primary and has the device mounted:
$ drbd-reactorctl status mnt-test

On the node that is Primary you can do a switch-over, just for testing:
$ drbd-reactorctl disable --now mnt-test
$ # another node should be primary now and have the FS mounted
$ drbd-reactorctl enable mnt-test # to re-enable the config again

Testing demote failure. Connect to the node that is Primary
$ touch /mnt/test/lock
$ sleep 3600 < /mnt/test/lock &
$ # ^^ this creates an opener and the mount unit will be unable to stop
$ # and the DRBD device will be unable to demote
$ systemctl restart drbd-services@test.target # trigger a stop/restart of
the target

This should trigger the reboot action and another node should take over
the mount.

Please help testing.

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/commit/3df014d63611b97470728838afdaf2d313f0d786
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.5.0-rc.1.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/


--rS8CxjVDS/+yyDmU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmGOeuoACgkQRgmezyI6
myLClwf/chKLEzFMUgKJ9j6ll0zkwUaGU+ZMJacIOnqDPYisftEfbgKVb/KnfLRv
aT99AeqsDtQjO2X9SgSkpOGTRUUAWS48MlYqIDuOGfRPZz4Npma3lDczz7ozbSYT
h2Pgf8yU/Ds3bsmI+Qls/nFBwocOQpgtDs4KjkXeapjWttc1iaBryg0DG4/ikkcM
6ACZ+U5O6t4TABD+MbGkr2qisb6cAO8J8v1I1pBC3eVzGw1NM43+D06W5V0h5idS
EJw7I8QzKJ+qZs3SV220gpF1lESt4kHeVzVfAAAWHy2FjJLMqH2vJ5o9TF9Mgz/8
yk0FEqJ73c3cHMMCyazmC1Pk8o+aFQ==
=RciW
-----END PGP SIGNATURE-----

--rS8CxjVDS/+yyDmU--
