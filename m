Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: annoucements@drbd.org
Date: Fri, 30 Jul 2004 15:59:36 +0200
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Message-Id: <200407301559.36975.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7.1.tar.gz
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

Here is the first update in the 0.7 series. 
There where no really critical bugs found, although the missing handling
of the timeout and human counters in the meta-data makes the update
to this release highly recommended.

0.7.1 (api:75/proto:74)
-----
  *) Upgrade instructions for 0.6.x -> 0.7.0 and 0.7.0 -> 0.7.1
  *) Workaround for XFS' IO requests with page count of zero.
  *) Handle the human and the timeout count correctly in the new init script.
  *) The implementation of the incon-degr-cmd was missing, added.
  *) Longer timeouts in drbdadm for drbdsetup commands witch operate on 
     meta data.
  *) New major number 147 (officially registered at lanana.org).
  *) Added a missing w_resume_next_wg() in case we stop syncing because
     of connection loss.
  *) Fixed a Linux-2.2-ismus in recieve_data_tail(). Should considerably
     speed up protocols A and B.
  *) Some work on vendor kernel compatibility


I have to stress that we got an officially major number, and that
we changed DRBD to use that new major number by default. See
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
