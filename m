Return-Path: <philipp.reisner@linbit.com>
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id AFF96101AC7B
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Sep 2018 13:20:42 +0200 (CEST)
Received: by mail-wm0-f54.google.com with SMTP id f21-v6so549948wmc.5
	for <drbd-announce@lists.linbit.com>;
	Tue, 11 Sep 2018 04:20:42 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Tue, 11 Sep 2018 13:20:39 +0200
Message-ID: <4276001.g7XYgiJODp@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] OpenNebula driver for LINSTOR
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

Today we publish the "addon-linstor" driver for OpenNebula that allows
OpenNebula to consume storage that is managed by LINSTOR. OpenNebula
is a Open Source cloud management system for IaaS clouds excels by its
ease of use.

  It allows you to create multiple Datastores with different properties,
  e.g. one with 2-way redundancy placed on SSDs or one with 3-way redundancy
  placed on HDDs, etc...

  The datastore is of type "Image" that means it is to be used to store disk
  images of virtual machines managed by an OpenNebula instance.

Please find more details here:
https://github.com/LINBIT/addon-linstor

Meet us in Frankfurt (Germany) on September 26 at a OpenNebula
tech day to learn more about OpenNebula, LINSTOR and how these great
Open Source components can be combined. Check it out here:
https://opennebula.org/community/techdays/techday-frankfurt-2018/
(Do not forget to register if you intend to visit)

best regards,
  Phil

=2D-=20
LINBIT | Keeping The Digital World Running

DRBD=AE and LINBIT=AE are registered trademarks of LINBIT, Austria.



