Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: annoucements@drbd.org
Date: Tue, 6 Jul 2004 13:28:15 +0200
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Message-Id: <200407061328.15791.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7_pre9.tar.gz
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

Hi!

This time we have nealy no fixes to the generic code. The first item
is a optimization (which was one of the goals of drbd-0.7), but most
of the fixes are either for Linux-2.4.x or for other architectures.
It feels like we will have a final release really soon. 

* Reenabled zero copy IO for protocols B and C. (Zero copy IO is not
  used with protocol A)
* Implemented the unpopular user dialog in the boot process.
* Some fixes for Linux-2.4.x compatibility.
* drbd.conf man page updated
* Bugfixes for 64bit architectures
* Ensured protocol compatibility between hosts of different word sizes
  (Tested with i386 and alpha)
* Support for meta-data on block devices with hardsect size != 512 Byte
  (e.g. dasd on s390x)
* New debian subdir

You can download it from LINBIT's download area as .tar.gz or
fetch it from CVS as tag "rel-0_7-pre9".

Please test it in your pre- production environments, in all your
test clusters you have... 

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
