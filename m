Return-Path: <philipp.reisner@linbit.com>
Received: from mescal.linbit (213-229-1-138.sdsl-line.inode.at [213.229.1.138])
	by mail.linbit.com (LINBIT Mail Daemon) with ESMTP id AD57E142F6
	for <drbd-announce@lists.linbit.com>; Mon, 10 May 2004 15:12:11 +0200 (CEST)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linbit.com
Date: Mon, 10 May 2004 15:12:11 +0200
MIME-Version: 1.0
Content-Disposition: inline
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Message-Id: <200405101512.11151.philipp.reisner@linbit.com>
Subject: [DRBD-announce] drbd-0.7_pre7.tar.gz
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

Last week Lars and I had a DRBD session here in Vienna. With the exception 
of a few beers in the evenings we spent most of the time on ...

- finding interesting bugs in DRBD-0.7 
  Thinking/discussing bugs as team is a lot more productive than
  trying to find them as alone...
- a lot of testing
- working on automatic testing...
- discussing the further roadmap, even bejond drbd-0.7

I think this are the most important changes to the DRBD-0.7-pre6 release,
but I know that this list is incomplete for sure:

* Fixed a bug in the LRU cache. 
  [Was the reason for the "lg_get() failed!" message]
* Fixed the disconnect behaviour (Including inter-thread
  synchronisation, various counters and countless other small problems)
* Fixed the cleanup path of the drbd_worker() thread
* Fixed a request leakage in case we have to drop the connection.
* Made drbd_rs_begin_io() interruptible, to avoid a deadlock in the
  drop-connection path.
* Fixed a bug in the sync-groups implementaion. (drbd_resume_lower_sg())
* drbd_send_cmd_dontwait() got removed, IO-hints are sent by the worker now..
* The format of configuration was changed. 
  Before 'keyword=value' now 'keyword value;'
* Much better error reporting of drbdadm's config file scanner.

You can download it from LINBIT's download area as .tar.gz or
fetch it from CVS. Now it is the time to test it on your systems!

-Philipp
-- 
: Dipl-Ing Philipp Reisner                      Tel +43-1-8178292-50 :
: LINBIT Information Technologies GmbH          Fax +43-1-8178292-82 :
: Schönbrunnerstr 244, 1120 Vienna, Austria    http://www.linbit.com :
