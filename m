Return-Path: <rasto.levrinc@linbit.com>
From: Rasto Levrinc <rasto.levrinc@linbit.com>
To: drbd-mc@lists.linbit.com, drbd-announce@lists.linbit.com,
	pacemaker@oss.clusterlabs.org, linux-ha@lists.linux-ha.org
Date: Sun, 28 Feb 2010 12:24:26 +0100
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <201002281224.27101.rasto.levrinc@linbit.com>
Subject: [DRBD-announce] DRBD Management Console 0.6.0
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

This is the next DRBD-MC beta release 0.6.0. DRBD-MC is a Java GUI that 
helps to configure DRBD/Pacemaker/Corosync/Openais/Heartbeat clusters. It is 
compatible with Heartbeat 2.1.3 to the latest and greatest Pacemaker with 
both communication stacks and DRBD 8.

Along couple of visual improvements, some missing Pacemaker options and some 
bugs were fixed. I think that now is about the time, when although you can 
still shoot yourself in the foot with DRBD-MC while configuring and managing 
your cluster, you would probably shoot yourself more without it. :-)

This release includes something that will be GUI for cluster-aware virtual 
machines. It is now possible to set some attributes and see some hardware of 
VMs if you have some on your cluster. Here is the screenshot:

http://oss.linbit.com/drbd-mc/img/drbd-mc-0.6.0.png

You can get DRBD-MC here:

http://www.drbd.org/mc/management-console/
http://oss.linbit.com/drbd-mc/drbd-mc-0.6.0.tar.gz
http://oss.linbit.com/drbd-mc/DMC-0.6.0.jar

You can start it with help of Java Web-Start or you can download it and 
start it with "java -Xmx512m -jar DMC-0.6.0.jar" command.
Make sure you use the Java from SUN.

Rasto Levrinc

Here is the changelog:
* new cluster hosts view was implemented
* "migrated from" and "force migrate" menu items were implemented
* allowing /dev/disk/by-uuid/ disks in DRBD, silently converting them for 
now
* master-max and master-node-max options were added
* all resource meta attributes were added
* ignoring type attributes for ping and pingd for now
* "changed value" color was changed
* available services views were improved
* fix DRBD status updating
* "suicide" option to "no-quorum-policy" was added
* read only (for now) disk and interface view for VM GUI was added
* some GUI visual improvements
* removing of hosts that are not in cluster was fixed
* VM GUI improvements
* getHeartbeatLibPath() called to soon problem was fixed
* disconnecting when starting host wizard from host was fixed
* check for DRBD upgrade was disabled for now
* "All Hosts" view was improved
* tree menu size is not changed, when user resized it once
* bugs, with the same host being defined more times, were fixed
* DRBD, cluster and hw info and status updating was fixed
* resource animation was improved
* endless colocation loop check was fixed
* progress indicator was improved
* lsb scripts that are executable only by owner are recognized now
* --slow option to slow down the animations was added

-- 
: Dipl-Ing Rastislav Levrinc
: DRBD-MC http://www.drbd.org/mc/management-console/
: DRBD/HA support and consulting http://www.linbit.com/
DRBD(R) and LINBIT(R) are registered trademarks of LINBIT, Austria.

