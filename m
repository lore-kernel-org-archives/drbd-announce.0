Return-Path: <johannes@johannesthoma.com>
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 27E79420341
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Feb 2021 17:38:27 +0100 (CET)
Received: from johannes-air.local ([62.99.137.214]) by
	mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA
	(Nemesis)
	id 1MryGj-1lZp1X18VR-00nxUf for <drbd-announce@lists.linbit.com>;
	Thu, 25 Feb 2021 17:33:26 +0100
To: drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <30e5c513-71c7-f085-4668-01ed020593c9@johannesthoma.com>
Date: Thu, 25 Feb 2021 17:33:25 +0100
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------DDF086EA75962B011716F65C"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc10 released
Reply-To: drbd-user@lists.linbit.com
List-Id: Announcements of new releases and critical bugs found
	<drbd-announce.lists.linbit.com>
List-Unsubscribe: <https://lists.linbit.com/mailman/options/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=unsubscribe>
List-Archive: <http://lists.linbit.com/pipermail/drbd-announce>
List-Post: <mailto:drbd-announce@lists.linbit.com>
List-Help: <mailto:drbd-announce-request@lists.linbit.com?subject=help>
List-Subscribe: <https://lists.linbit.com/mailman/listinfo/drbd-announce>,
	<mailto:drbd-announce-request@lists.linbit.com?subject=subscribe>

This is a multi-part message in MIME format.
--------------DDF086EA75962B011716F65C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD and WinDRBD users,

We've just released another release canidate of WinDRBD: 1.0.0-rc10. This version contains an
optimization on the network receiver side which speeds up secondary writes by a
factor of 2-4. It also contains fixes for various BSODs.

For now there are two registry keys that control the receiver cache: you normally
don't have to touch them: they are in the WinDRBD services key
(HKLM\System\CurrentControlSet\Services\WinDRBD)

DWORD enable_receiver_cache <0 or 1>
DWORD receive_buffer_size <size of cache in bytes >=4K <=4M > defaults to 128K

We will change these parameters later to a per resource network setting in drbd.conf.

As always the installable EXE can be downloaded from Linbit's homepage:

https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/

(scroll down to DRBD 9 Windows Driver)

Please help testing this release canidate, it is already quite close to the final
version,

- Johannes

---- From WHATSNEW.md:

Optimization on the network side ("receiver cache"): receive from socket
in larger chunks (defaults to 128K), this speeds up secondary writes
by a factor of 2 to 4.

Fix in wait_event: wait_event should not be interruptible. Also
wait_for_completion should not be interruptible. This fixes lots
of BSODs at various places (process_sender_todo, ...) which mainly
occured at disconnecting a resource.

There is also an optimization at the backing device side (backing
device cache) but this implementation is currently broken and probably
will be abandoned (it does not give a speedup). It is disabled by default.

--------------DDF086EA75962B011716F65C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode"> Dear DRBD and WinDRBD
      users,<br>
      <br>
      We've just released another release canidate of WinDRBD:
      1.0.0-rc10. This version contains an<br>
      optimization on the network receiver side which speeds up
      secondary writes by a<br>
      factor of 2-4. It also contains fixes for various BSODs.<br>
      <br>
      For now there are two registry keys that control the receiver
      cache: you normally<br>
      don't have to touch them: they are in the WinDRBD services key <br>
      (HKLM\System\CurrentControlSet\Services\WinDRBD)<br>
      <br>
      DWORD enable_receiver_cache &lt;0 or 1&gt;<br>
      DWORD receive_buffer_size &lt;size of cache in bytes &gt;=4K
      &lt;=4M &gt; defaults to 128K<br>
      <br>
      We will change these parameters later to a per resource network
      setting in drbd.conf.<br>
      <br>
      As always the installable EXE can be downloaded from Linbit's
      homepage:<br>
      <br>
      <a class="moz-txt-link-freetext"
href="https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/">https://www.linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/</a><br>
      <br>
      (scroll down to DRBD 9 Windows Driver)<br>
      <br>
      Please help testing this release canidate, it is already quite
      close to the final<br>
      version, <br>
      <br>
      - Johannes<br>
      <br>
      ---- From WHATSNEW.md:<br>
      <br>
      Optimization on the network side ("receiver cache"): receive from
      socket<br>
      in larger chunks (defaults to 128K), this speeds up secondary
      writes<br>
      by a factor of 2 to 4.<br>
      <br>
      Fix in wait_event: wait_event should not be interruptible. Also<br>
      wait_for_completion should not be interruptible. This fixes lots<br>
      of BSODs at various places (process_sender_todo, ...) which mainly<br>
      occured at disconnecting a resource.<br>
      <br>
      There is also an optimization at the backing device side (backing<br>
      device cache) but this implementation is currently broken and
      probably<br>
      will be abandoned (it does not give a speedup). It is disabled by
      default.<br>
    </div>
  </body>
</html>

--------------DDF086EA75962B011716F65C--
