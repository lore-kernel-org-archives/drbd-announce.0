Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: annoucements@drbd.org
Date: Fri, 1 Oct 2004 11:56:01 +0200
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline
Message-Id: <200410011156.01761.philipp.reisner@linbit.com>
Cc: 
Subject: [DRBD-announce] drbd-0.7.5.tar.gz
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

Hi,

Although the entry in the changelog is quite long, I think
we stabilise nicely.

-> RedHat users should consider to update, becuase with 
   previous releasese /etc/init.d/drbd is not called.

-> You might want to upgrade to be 100% sure to never
   run into issue 1 on the list of changes, although with
   sane cluster management you probabely prefer to never
   run your service on the SyncTarget node anyway...

-> You might want to upgrade to get higher syncer
   performance than 30 MB/sec

otherwise there is no immediate reason to upgrade.

Users of ancient 2.4.x (RH 2.4.9!) kernels will now
be able to use drbd-0.7.x

0.7.5 (api:76/proto:74)
-----
 * Fix a bug that could case read requests to return wrong data
   on a node in Primary/SyncTaget state. (A very unlikely race,
   it is not known that this ever triggered; It was found by an 
   ASSERTION in the code)
 * Removed the 30MB/sec speeding limit for the syncer. (this was 
   intended as a debugging aid, but it was not removed in time)
 * A fix to drbdsetup, to make drbdadm adjust work if a resource
   is diskless.
 * Got rid of the compiler warning when build on a kernel with
   CONFIG_LBD not set.
 * Now the device nodes are created with sane permissions.
 * The debian package is now named "drbd0.7"
 * set_fs() is now also done for sendpage()
 * Better compatibility with early 2.4.x kernels (BH_Launder, min()/max())
 * Touch /var/lock/subsys/drbd, needed for RedHat based distros.
 * Improvements to the INSALL document
 * Removed HOWTO, ja, pt_BR ... all hopelessly outdated.
   disabled benchmark/run.sh

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
