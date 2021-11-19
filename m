Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 2EDDB420960
	for <drbd-announce@lists.linbit.com>;
	Fri, 19 Nov 2021 10:22:23 +0100 (CET)
Received: by mail-wm1-f54.google.com with SMTP id
	g191-20020a1c9dc8000000b0032fbf912885so6962706wme.4
	for <drbd-announce@lists.linbit.com>;
	Fri, 19 Nov 2021 01:22:23 -0800 (PST)
Date: Fri, 19 Nov 2021 10:22:22 +0100
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20211119092222.GI1745@rck.sh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Rgf3q3z9SdmXC6oT"
Content-Disposition: inline
Subject: [DRBD-announce] drbd-reactor v0.5.0 (including HA FS mount example)
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


--Rgf3q3z9SdmXC6oT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear DRBD(-reactor) users,

this is the final release of drbd-reactor version 0.5.0.

There have only been minor changes since RC1:
- 644 permissions instead of 640 for the service file so that systemd
  shuts up
- debug level logging now prints the config that will be used on
  start/reload/restart.

Rest of the original announcement:

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

Regards, rck

GIT: https://github.com/LINBIT/drbd-reactor/releases/tag/v0.5.0
TGZ: https://pkg.linbit.com//downloads/drbd/utils/drbd-reactor-0.5.0.tar.gz
PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/

--Rgf3q3z9SdmXC6oT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEdesqw/S/2vE9wNKDRgmezyI6myIFAmGXbM4ACgkQRgmezyI6
myIF9Af8D69EF+RYSq6MA5+oJ6CEN1OlQuLxOuuZdcGFTrvydAd+MhxeeH90g3xs
TKo+LWg4n+OhZPBDNOTXftTRqZF/jB9Ez2WtFd8/AYTmSwCjlYtNjhf5LzOOkT+9
cI7WMtsHQsKUZ5zGEO3esCeBO/Olofi4SWLGx2a38IOdU7kvpDHst5WxZ6lhFOe5
H4KDMBmuZfcKfEYGT/rXxoeRIME8tq1FivBO97I5f9oBRFmBSc+1HuJ+oBmtgfTR
wYK8+cbW5H91AQvI4hVN3jRa+zNdJpG9PSZnrp8jvPFcm08wm67ERz28OYvYb4ox
RNftcjcFnidG796uzdTY+AsZHi6R4A==
=NOOo
-----END PGP SIGNATURE-----

--Rgf3q3z9SdmXC6oT--
