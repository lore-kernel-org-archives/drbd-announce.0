Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Wed, 9 Jan 2008 16:16:18 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200801091616.18480.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-8.2.3.tar.gz and gitweb online
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

And finally here is a new drbd-8.2 release: 8.2.3

8.2.3 (api:86/proto:86-88)
--------
 * Released the online-verify feature from DRBD+ into drbd-8.2
 * Fixed the data-integrity-alg feature to work correctly
   in 'allow-two-primaries' mode.
 * Significant latency improvement: Implemented sane default
   CPU bindings (affinity mask) of threads, and added the tuning
   option 'cpu-mask'.
 * A completely new drbdmeta - finally dealing with
   all drbd-0.7 to drbd-8.x conversion cases correctly.
 * Merged all changes from 8.0.7 -> 8.0.8 into 8.2

The most outstanding thing of course is the new online verify feature,
which allows you to do (e.g. monthly) integrity checks of your
cluster setup.

The sane defaults for DRBD's kernel threads can improve performance
of some database workloads significantly.

You can find more details here 
http://blogs.linbit.com/florian/2008/01/09/drbd-823-released/

Due to the long time between the release of 8.0.8 and 8.2.3 we
do not only have all the fixes up to 8.0.8 in this 8.2 release,
but also fixes that where found after the release of 8.0.8.

The attentive reader might have noticed that drbd-8.2.2 was not announced.
Although such a tag exists (and the source.tar.gz was available for download
for a few hours) we consider it as not released (no announcement).
We retired it after we realized bugs in it.

Oh, and finally we have a gitweb instance online. http://git.drbd.org/

http://git.drbd.org/?p=drbd-8.2.git;a=tag;h=drbd-8.2.3
http://oss.linbit.com/drbd/8.2/drbd-8.2.3.tar.gz
http://www.linbit.com/support/drbd-8.2.3/

-Phil
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Vivenotgasse 48, 1120 Vienna, Austria        http://www.linbit.com :
