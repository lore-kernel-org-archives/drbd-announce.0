Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: annoucements@drbd.org
Date: Fri, 9 Jul 2004 14:42:48 +0200
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Message-Id: <200407091442.48179.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7_pre10.tar.gz
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

Unfortunately a bug in the bitmap code was introduced with -pre9,
therefore -pre10 so soon after -pre9.

* A fix to a generic bug in the bitmap code introduced with the -pre9 
  release (with the 64 bit work)
* A fix to a bug in the bitmap code only relevant for 64 bit platforms.
* Better 2.4.x compatibility and compatiblity to 2.4.x vendor kernels.
* Improvements in the way to deal with incompatible protocol releases.
* Added the "dialog-refresh" config option.

We are discussing one more protocol change before the 0.7-final release,
so one more -pre release is possible. 

ETA for 0.7-final is the 16th of July.

-philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
