Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 9 Nov 2009 11:06:51 +0100
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200911091106.52244.philipp.reisner@linbit.com>
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] (drbd-8.3.6.tar.gz)
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

I am writing this announcement just for sake of completeness. The only
reason for the 8.3.6 release are the new spec files for the RPM packages. 
These are now compliant with Fedora's packaging guidelines.

The changes to the code are negligible.

In that process, the whole way of building DRBD was changed. I.e. you
need now to call ./configure before you call make.

Upgrade policy:
  If you are at 8.3.5, please stay there, no need to upgrade!

We do not (yet) provide binary packages for our customers, because we have
to adjust our build infrastructure first. 

Note:
  The DRBD Users Guide's section on RPM building will get updated soon.
  As it is now, it is wrong for building 8.3.6 RPMs.

8.3.6 (api:86/proto:86-91)
--------
 * Make sure that we ship all unplug events
 * Introduced autoconf, new RPM packaging

http://oss.linbit.com/drbd/8.3/drbd-8.3.6.tar.gz
http://git.drbd.org/?p=drbd-8.3.git;a=tag;h=drbd-8.3.6
-- 
: Dipl-Ing Philipp Reisner
: LINBIT | Your Way to High Availability
: Tel: +43-1-8178292-50, Fax: +43-1-8178292-82
: http://www.linbit.com

DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

