Return-Path: <robert.altnoeder@linbit.com>
Message-ID: <56129AE8.5040800@linbit.com>
Date: Mon, 05 Oct 2015 17:44:40 +0200
From: Robert Altnoeder <robert.altnoeder@linbit.com>
MIME-Version: 1.0
To: drbd-announce@lists.linbit.com
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: drbd-user@lists.linbit.com
Subject: [DRBD-announce] drbdmanage v0.50
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

Dear DRBD9 & drbdmanage users & testers,

you may have noticed that we published distribution packages of the new 
version 0.50 of drbdmanage about two weeks ago, and it has also been on 
our public GIT for a while. The source package (as a gzipped tar 
archive) followed today, so all the packages are now available for 
download at http://oss.linbit.com/drbdmanage/

This version is a major update where the single control volume of 
previous versions is replaced by a dual-volume control resource to 
enable recovery of backup data whenever one of the two control volumes 
is damaged, e.g. due to a sudden power outage while data is being 
written to the volume.
For this reason, control volumes of previous drbdmanage versions cannot 
be used with drbdmanage 0.50.

Since the last officially published release, v0.43, lots of changes and 
new features have been implemented:

- Many commands take multiple arguments now (assign, unassign, 
remove-resource, etc.)

- DBus signals: Listeners that will be notified by drbdmanage whenever 
the state of a resource assignment changes can be implemented using this 
interface

- Control resource quorum: Changes can only be made if a group of 
drbdmanage nodes has a quorum (more than 50% of all nodes are 
replicating changes); this avoids split-brain situations. There are 
manual overrides for situations where nodes have been taken offline for 
an extended time period

- For many installations, drbdmanage configuration files are unnecessary 
now: All but some of the most basic configuration options can be set 
with drbdmanage commands. Those options are stored in the control 
resource, so the configuration is identical on all nodes of the 
drbdmanage cluster

========================================

drbd-utils 8.9.4 is required with drbdmanage v0.50

The drbdmanage archives can be found at:
http://oss.linbit.com/drbdmanage/

...and our GIT repository is available at:
http://git.drbd.org/gitweb.cgi?p=drbdmanage.git

If you have any questions, suggestions or feedback for us,
feel free to post to the mailing list or to visit
our IRC channel at FreeNode #drbd9+drbdmanage.

Best regards,
Robert

