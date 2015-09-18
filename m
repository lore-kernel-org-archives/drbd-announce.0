Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Fri, 18 Sep 2015 17:47:58 +0200
Message-ID: <1756978.DIc90az5uK@fat-tyre>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbd-utils-8.9.4.tar.gz
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

this drbd-utils release is triggered by a drbdmanage. Drbdmanage
needs the ability to have multiple connection-mesh statements
per resource.
If you do not use drbdmanage, there is no pressing reason to
upgrade to this drbd-utils release.


8.9.4
--------
  * Add an autoconf switch for building without man pages
  * Fix compatibility with the musl C library
  * Introduce the concept of paths within a connection to the config file;
    add support for paths to drbdadm adjust
  * Allow multiple connection-mesh statements within one resource
  * Document peer-device-options on the drbd-9.0 man pages
  * increase the lower boundary for al-extents from 7 to 67; drbdadm clamps
    al-extents to 67 implicitly if you configures something lower than 67
  * Document the events2 command on the drbd-8.4 man page
  * Fix environment variables for handlers


http://oss.linbit.com/drbd/drbd-utils-8.9.4.tar.gz
http://git.drbd.org/gitweb.cgi?p=drbd-utils.git;a=tag;h=refs/tags/v8.9.4

cheers,
 Phil
