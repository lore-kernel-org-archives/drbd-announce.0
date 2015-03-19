Return-Path: <robert.altnoeder@linbit.com>
Message-ID: <550ADF36.2030807@linbit.com>
Date: Thu, 19 Mar 2015 15:37:42 +0100
From: Robert Altnoeder <robert.altnoeder@linbit.com>
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbdmanage v0.30 pre-release
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

Hello DRBD 9 testers,

we have just released a new pre-release of drbdmanage, version 0.30. 
This release adds experimental snapshot support based on thinly 
provisioned LVM logical volumes, and a corresponding storage driver 
plugin (drbdmanage.storage.lvm_thinpool.LVMThinPool).

Support for client nodes without local storage has been improved as 
well. Whenever a resource is assigned to a node that does not have local 
storage, the resource will automatically be connected as a DRBD client 
on that node.

If you have questions or feedback for us, please post to the mailing 
list, or visit our IRC channel at FreeNode #drbd9+drbdmanage.

Best regards,
Robert

