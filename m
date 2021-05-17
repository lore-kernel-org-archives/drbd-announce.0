Return-Path: <johannes@johannesthoma.com>
To: "drbd-user@lists.linbit.com" <drbd-user@lists.linbit.com>,
	drbd-announce@lists.linbit.com
From: Johannes Thoma <johannes@johannesthoma.com>
Message-ID: <1338eaaf-121b-9146-0c4a-99ac96990031@johannesthoma.com>
Date: Mon, 17 May 2021 15:37:25 +0200
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="------------9EF4E852DD3813045E9FF0B8"
Subject: [DRBD-announce] WinDRBD 1.0.0-rc12 released
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
--------------9EF4E852DD3813045E9FF0B8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear DRBD and WinDRBD users,

We just released another rc: 1.0.0-rc12. This is a special release because in this
release 3 bugs that affected system stability were fixed. This rc12 ran within
a disconnect / connect loop via Windows firewall and I/O for 5 days without
issues (releases up to rc11 used to crash after max. 2 hours for this test), so
we think that this rc12 is a huge step forward towards a stable release.

Here's the changes in rc12 from the WHATSNEW.md file:

What's new in version 1.0.0-rc12
--------------------------------

Fixed a blue screen on disconnect: Reason was sock_really_free
called wait_event while in APC (in interrupt) and wait_event
tried to sleep.

Fixed a missing mutex_lock in
delete_multicast_elements_and_replies_for_file_object() which
caused a BSOD from time to time.

Fixed deadlock in recursive calls to rcu_read_lock (which are legal)
(rcu_read_lock (A) / synchronize_rcu (B) / rcu_read_lock (A)
where the inner rcu used to hang forever at DISPATCH_LEVEL.

WinDRBD root directory is now relocatable (currently registry key
WinDRBDRoot in HKLM/system/CurrentControlSet/services/WinDRBD
must be edited manually, no installer support yet)

As always an installable EXE can be downloaded from the Linbit
homepage: the URL is:

https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd

Thank you for using WInDRBD we are always excited to hear feedback from you,

Best regards,

- Johannes



--------------9EF4E852DD3813045E9FF0B8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Dear DRBD and WinDRBD users,<br>
    <br>
    We just released another rc: 1.0.0-rc12. This is a special release
    because in this<br>
    release 3 bugs that affected system stability were fixed. This rc12
    ran within<br>
    a disconnect / connect loop via Windows firewall and I/O for 5 days
    without<br>
    issues (releases up to rc11 used to crash after max. 2 hours for
    this test), so<br>
    we think that this rc12 is a huge step forward towards a stable
    release.<br>
    <br>
    Here's the changes in rc12 from the WHATSNEW.md file:<br>
    <br>
    <font face="monospace">What's new in version 1.0.0-rc12<br>
      --------------------------------<br>
      <br>
      Fixed a blue screen on disconnect: Reason was sock_really_free<br>
      called wait_event while in APC (in interrupt) and wait_event<br>
      tried to sleep.<br>
      <br>
      Fixed a missing mutex_lock in<br>
      delete_multicast_elements_and_replies_for_file_object() which<br>
      caused a BSOD from time to time.<br>
      <br>
      Fixed deadlock in recursive calls to rcu_read_lock (which are
      legal)<br>
      (rcu_read_lock (A) / synchronize_rcu (B) / rcu_read_lock (A)<br>
      where the inner rcu used to hang forever at DISPATCH_LEVEL.<br>
      <br>
      WinDRBD root directory is now relocatable (currently registry key<br>
      WinDRBDRoot in HKLM/system/CurrentControlSet/services/WinDRBD<br>
      must be edited manually, no installer support yet)<br>
    </font><br>
    As always an installable EXE can be downloaded from the Linbit<br>
    homepage: the URL is:<br>
    <br>
    <a class="moz-txt-link-freetext"
href="https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd">https://linbit.com/linbit-software-download-page-for-linstor-and-drbd-linux-driver/#windrbd</a><br>
    <br>
    Thank you for using WInDRBD we are always excited to hear feedback
    from you,<br>
    <br>
    Best regards,<br>
    <br>
    - Johannes<br>
    <br>
    <br>
  </body>
</html>

--------------9EF4E852DD3813045E9FF0B8--
