Return-Path: <rasto.levrinc@gmail.com>
Received: from mail-yw0-f54.google.com (mail-yw0-f54.google.com
	[209.85.213.54]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTPS id 271DB10556B9
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Sep 2011 10:47:59 +0200 (CEST)
Received: by ywp17 with SMTP id 17so9608344ywp.27
	for <drbd-announce@lists.linbit.com>;
	Wed, 28 Sep 2011 01:47:58 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 28 Sep 2011 10:42:04 +0200
Message-ID: <CAFiXF+4LZgaEg8gy01Rk38-UE2iZU6A0oeRnEETwK+zsoiCeDw@mail.gmail.com>
From: Rasto Levrinc <rasto.levrinc@gmail.com>
To: drbd-mc@lists.linbit.com, pacemaker@oss.clusterlabs.org,
	linux-ha@lists.linux-ha.org, drbd-announce@lists.linbit.com
Content-Type: text/plain; charset=ISO-8859-1
Subject: [DRBD-announce] DMC 0.9.9 - Pacemaker/Storage GUI
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi,

This is the next DMC release 0.9.9. DMC is Pacemaker, Cluster Virtual Manager
and Storage/DRBD/LVM GUI.

Focus of this release was on bug fixes and some visual issues. You will now
find a skip-initial-full-sync checkbox in the DRBD wizard, that, well, skips
the initial full sync.

You can get DRBD:MC here:

http://oss.linbit.com/drbd-mc/

the latest source is here:

https://github.com/rasto/drbd-mc


1. You don't need Java on the cluster servers only on your desktop.
2. Download the DMC-0.9.9.jar file.
3. Start it: java -jar DMC-0.9.9.jar, or click on the file.
4. It connects to the cluster via SSH.
5. If you use it without DRBD, you have to click "Skip" button on couple of
   places.
6. It is recommended to use it with SUN Java.

DRBD:MC is compatible with Heartbeat 2.1.3 to the Pacemaker 1.1.6 with
Corosync or Heartbeat and DRBD 8.

The most important changes:
* don't crash if there's explicit order or col in a group
* drbd graph icon improvements
* say "enslaving..." instead of "stopping...",
  when target role is set to slave
* make drbd.d style config only since DRBD 8.3.7
* more info in "/proc/drbd" button in drbd view
* change action-menu appearance
* implement skip initial sync option in DRBD wizard
* rename menu items to show what technology is behind them
* more consistent colors
* make the menu translucent in on-mouse-over tests instead of transparent
* fix applying of colocation and order attributes
* new location for new version check
* improve progress indicator
* fix adding new dependent clone not creating the constraints
* move operating mode panel to the right
* make left click in the graph show pulldown menu
* Rearrange "all clusters" tab
* fix some VMs not showing, if defined only on one host
* add "none" as file system type option for Filesystem RA
* workaround for Windows closing service popups

Rasto Levrinc
