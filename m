Return-Path: <roland.kammerer@linbit.com>
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id CF3F74203BF
	for <drbd-announce@lists.linbit.com>;
	Mon, 26 Apr 2021 15:56:19 +0200 (CEST)
Received: by mail-wr1-f52.google.com with SMTP id e5so27338243wrg.7
	for <drbd-announce@lists.linbit.com>;
	Mon, 26 Apr 2021 06:56:19 -0700 (PDT)
Date: Mon, 26 Apr 2021 15:56:18 +0200
From: Roland Kammerer <roland.kammerer@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Message-ID: <20210426135618.GK1935@rck.sh>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [DRBD-announce] drbd-reactor (was drbdd) v0.3.0
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

Dear DRBD users,

this is the final release of drbd-reactor v0.3.0. With this release we
renamed the project from drbdd to drbd-reactor. We assume there are not
too many existing installations, but if so, copy your /etc/drbdd.toml to
/etc/drbd-reactor.toml and you should be good to roll.

Changes since RC1:
- This version *requires* drbd-utils >=9.17.0. Please use the final
  version. The promoter plugin will not work if you use the RC of
  drbd-utils if you also have diskless resources.
- The promoter plugin now waits until the backing devices of the to be
  monitored DRBD resource exists before it calls the initial "drbdadm
  adjust". This helps if LVM/udev have not had the chance to create the
  device link for example.
- drbdreactor_up metric as "identity metric" that always exists.

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

What I forgot to mention at RC1:
- promoter stop-services-on-exit: This configuration entry can be set in
  the promoter sections to stop the defined services on drbd-reactor
  stop.

Regards, rck

[ Christoph Böhmwalder ]
* prometheus: add "drbdreactor_up" metric

[ Roland Kammerer ]
* build: add drbd-utils dependency
* promoter: wait till backing device shows up
* containers: don't setup toolchain in lbbuild
* containers: fix users and updates
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

PPA: https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack/
TGZ: https://linbit.com/downloads/drbd/utils/drbd-reactor-0.3.0.tar.gz
GIT: https://github.com/LINBIT/drbd-reactor/commit/f709f109c1a6966eb898b986addeff1492e328fc
[1] https://github.com/LINBIT/drbd-reactor/blob/master/src/plugin/prometheus.md
