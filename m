Return-Path: <philipp.reisner@linbit.com>
From: Philipp Reisner <philipp.reisner@linbit.com>
Date: Wed, 29 Sep 2004 10:51:13 +0200
To: annoucements@drbd.org
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200409291051.13362.philipp.reisner@linbit.com>
Cc: 
Subject: [DRBD-announce] [SECURITY] permissions on automatically generated
	/dev/drbdX
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



----------  Forwarded Message  ----------

Subject: [DRBD-user] [SECURITY] permissions on automatically 
generated /dev/drbdX
Date: Monday 27 September 2004 19:51
From: Lars Ellenberg <Lars.Ellenberg@linbit.com>
To: drbd-user@lists.linbit.com

I just noticed that the permissions on /dev/drbdX generated during make
install (or by the debian, rpm, gentoo scripts for that matter) where
dependend on the umask, and may lead to globally accessable devices,
which may be a security risk.
  brw-rw-r--    1 root     root     147,   0 2004-09-27 14:06 /dev/drbd0

please all verify and if neccessary, do chmod 0660 /dev/drbd* !

I changed all mknod $something in svn to mknod -m 0660 $samething.

thanks,


 Lars Ellenberg
