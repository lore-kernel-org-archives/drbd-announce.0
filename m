Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id B9C7C14310
	for <drbd-announce@lists.linbit.com>;
	Mon, 17 Jan 2005 15:48:39 +0100 (CET)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 17 Jan 2005 15:51:12 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Message-Id: <200501171551.12280.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.8.tar.gz
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

Hi

0.7.8 (api:77/proto:74)
=2D----
 * Fixed a bug that caused the syncer to starve on devices=20
   bigger than 2 TB on 32bit systems (=3DCONFIG_LBD).
 * Made online resizing actually work. Now it makes a lot
   more sense to put DRBD on top of LVM.
 * Made the user dialog to work on RedHat based distributions.
 * A small optimization that improves the performance of the=20
   syncer when woking with IBM's ServRaid Controllers (ips).
   May have a positive effect with other Controllers as well.
 * Made epoch_size atomic. This removes a SMP race condition that
   could lead on some Xeon CPUs to an ASSERT printk, but did no other
   harm than printing messages to the syslog
 * Fixed write_gc.pl to work with the perl version delivered
   with RHAS3.
 * Made the initscript to abort if one of the setup commands fails.

It is always amazing that after drbd-0.7 has been the stable=20
release for such a long period of time, that there are still
new issues to discover and to resolve. Here are some SVN
log entries :=20

=2D---
Well one day after the 0.7.7 release and again an important
bug fix :(

 On 32Bit systems with CONFIG_LBD set, DRBD fails to calculate
 the right sectornumber from the bitnumber. Only affects devices
 bigger than 2 TB.

 Symptom: If you do a resync and suddenly the progress of the=20
          resync stops, (or it never moves at all), but you can=20
          see that DRBD gereates IO.
          After the expected resync time IO stops, but the
          progress indicator is still at its position.

DRBD simply resynced the wrong blocks, and since no bit
in the bitmap were cleared, no progress of the resync.
=2D---
I realized that on RHAS3 systems (and probabely all other RedHat
based and related distributions) drbdadm's user dialog
was not displayed in the boot process.
RedHat's rc script redirects all output of init scripts to
the Logfiles exclusively!!=20
If drbdadm detects this (by using isatty(stdin)) it prints
a warning and does the user dialog on /dev/console
=2D---
* On this brand new dual Xeon system the counting of
  epoch_size is broken. Probabely this revision of Xeons
  is doing memory access reordering more agressive than
  previous versions. Converting epoch size form=20
  int to atomic_t solved the issue.
* When reading from an IBM-ServRaid controller (ips),=20
  we need to call run_disk_queue() from time to time
  to get sane performance of it.
* On this RHAT3 box the write_gc.pl program failed
  to correctly write DRBD's magic number.=20
  (probabely a bug in the perl version included=20
   with RHAT3.)
=2D---

=2DPhilipp
=2D-=20
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Sch=F6nbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
