Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: annoucements@drbd.org
Date: Fri, 6 Aug 2004 15:05:35 +0200
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Message-Id: <200408061505.35587.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.2.tar.gz
Sender: drbd-announce-admin@lists.linbit.com
Errors-To: drbd-announce-admin@lists.linbit.com
Reply-To: drbd-user@lists.linbit.com
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Subscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>
List-Id: Announcements of new releases and critical bugs found <drbd-announce.lists.linbit.com>
List-Unsubscribe: <http://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce/>

Hi,

Once again we hope that this release will be the latest and greatest for
more than one week. The fixes for DRBD on LVM/MD made this release
necessary.

0.7.2 (api:75/proto:74)
-----
  *) Propper handling of backing storage devices that occasionally fail 
     READA (=read ahead) requests. (E.g. LVM and MD)
  *) DRBD now fails READA requests itself, if a resynchronisation is running
     and it would need to fetch the block from its peer.
  *) "drbdadm adjust" had a race, which caused random errors. ( Missing
     waitpid() ). Fixed now.
  *) Popper substract SyncPause times from the syncer performance numbers.
  *) Fix to the syncer progress bar in /proc/drbd.
  *) Fix to debian build rules.

In case everything works for you with a 0.7.0 or 0.7.1 installation 
you might consider to stay with that release. Although that race condition
in drbdadm is a stong argument to upgrade even for those, who do not
use LVM or MD.


In case you are upgarding from an 0.7.0 to this release please read
http://svn.drbd.org/drbd/tags/drbd-0.7.1/upgrade_0.7.0_to_0.7.1.txt
for more details.

If you are upgrading from an 0.6.x release please have a look at
http://svn.drbd.org/drbd/tags/drbd-0.7.1/upgrade_0.6.x_to_0.7.0.txt

You can find the .tgz at LINBIT's area
http://www.linbit.com/29.html?&L=1

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
