Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-user@lists.linbit.com
Date: Wed, 25 Mar 2009 17:18:41 +0100
References: <200903241837.00249.philipp.reisner@linbit.com>
In-Reply-To: <200903241837.00249.philipp.reisner@linbit.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200903251718.41585.philipp.reisner@linbit.com>
Cc: drbd-announce@lists.linbit.com
Subject: [DRBD-announce] issue with the init script on SLES10
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

To our SLES10 users,

With the 8.0.15 release the init script was changed to be
more LSB compliant. Unfortunately it turned out that on SLES10
it prints awkward error messages instead of nice log messages,
although it does what it should do.

Here is the diff to have a nicely working init script for SLES10

Online: 
http://git.drbd.org/?p=drbd-8.0.git;a=blobdiff;f=scripts/drbd;h=f2b0506e385532e9169dd69d71be15bffd50f3fe;hp=2e2ec293b9fdbde2d47cf46420e7272b52201260;hb=16bc8d063424a9d47bc3c679b770a8cad8530909;hpb=7a69c1d5fce483730b7483b03c94c866a0283360

I will release 8.0.16 with only that change applied soon.

The complete patch:

diff --git a/scripts/drbd b/scripts/drbd
index 2e2ec29..f2b0506 100755
--- a/scripts/drbd
+++ b/scripts/drbd
@@ -31,7 +31,9 @@ test -f $DRBDADM || exit 5

 if [ -f /lib/lsb/init-functions ]; then
     . /lib/lsb/init-functions
-else
+fi
+
+if ! type log_daemon_msg &>/dev/null ; then
     function log_daemon_msg
     {
        if [ -z "${2:-}" ]; then
@@ -40,7 +42,9 @@ else
        fi
        echo -n "$1: $2"
     }
+fi

+if ! type log_end_msg &>/dev/null ; then
     function log_end_msg
     {
         echo "."

-Phil
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

