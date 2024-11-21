Return-Path: <lars.ellenberg@linbit.com>
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by mail19.linbit.com (LINBIT Mail Daemon) with ESMTP id 3B21A420302
	for <drbd-announce@lists.linbit.com>;
	Thu, 21 Nov 2024 12:12:33 +0100 (CET)
Received: by mail-wm1-f53.google.com with SMTP id
	5b1f17b1804b1-43193678216so6914335e9.0
	for <drbd-announce@lists.linbit.com>;
	Thu, 21 Nov 2024 03:12:33 -0800 (PST)
Date: Thu, 21 Nov 2024 12:12:31 +0100
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Subject: Re: linbit-keyring, new LINBIT Package and Repository Signing Key
Message-ID: <Zz8Vn0aYPBMBGuiX@grappa.linbit>
References: <Zxt3N5qWG6DI9PED@arm64>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zxt3N5qWG6DI9PED@arm64>
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

On Fri, Oct 25, 2024 at 12:47:19PM +0200, Roland Kammerer wrote:
> Dear DRBD users,
> 
> this is meant for our customers as well as FLOSS users that use any of
> our public repos (except the Ubuntu PPA).
> 
> The short version: There is now a linbit-keyring package with our old
> key and our new key and we will start using the new one on November the
> 15th to sign repo meta data. As the keyring contains both keys you can
> install that package now and change your repo config (if necessary),
> then you don't even notice the upcoming changes.
> 
> Details are described here[1], if there are any questions, please ask.
> 
> [1] https://kb.linbit.com/linbit-keyring-software-package
> 
> Regards, rck

We now completely switched to our new signing key.
That means all new packages and all repository meta data
is now signed with the new key.
Old packages still signed with the old key will stay that way,
we will not "re-sign" old packages.

To make it easier for search engines, and users of those,
here are the finger prints and typical "error messages" that
users of linbit package repositories may see from apt/yum/dnf.

Some may mistake this for linbit "expired" gpg keys,
because the symptoms or messages may feel similar.

You can install the linbit keyring package from here:
# rpm -Uhv https://packages.linbit.com/public/linbit-keyring.rpm
or
# wget https://packages.linbit.com/public/linbit-keyring.deb
# dpkg -i ./linbit-keyring.deb

See also our KB article linked above.

The key we used since 2008:
>-----------------------------------
pub   dsa1024 2008-11-13 [SC]
      32A746AD3ACFB7EB9A188D1953B3B037282B6E23
uid           [ unknown] LINBIT Package and Repository Signing Key (2024)
uid           [ unknown] LINBIT Package and Repository Signing Key (2023)
uid           [ unknown] LINBIT Package and Repository Signing Key (2022)
uid           [ unknown] LINBIT Package and Repository Signing Key (2021)
uid           [ unknown] LINBIT Package and Repository Signing Key (2020)
uid           [ unknown] LINBIT Package and Repository Signing Key (2019)
uid           [ unknown] LINBIT Package and Repository Signing Key (2018)
uid           [ unknown] LINBIT Package and Repository Signing Key (2017)
uid           [ unknown] LINBIT Package and Repository Signing Key (2016)
uid           [ unknown] LINBIT Package and Repository Signing Key (2015)
uid           [ unknown] LINBIT Package and Repository Signing Key (2014)
uid           [ unknown] LINBIT Package and Repository Signing Key (2013)
uid           [ unknown] LINBIT Package and Repository Signing Key (2012)
uid           [ unknown] LINBIT Package and Repository Signing Key (2011)
uid           [ unknown] LINBIT Package and Repository Signing Key (2010)
uid           [ unknown] LINBIT Package and Repository Signing Key (2009)
sub   elg2048 2008-11-13 [E]
>-----------------------------------

The key we created in 2024:
>-----------------------------------
pub   rsa4096 2024-06-14 [SC]
      4E5385546726D13CB649872CFC05A31DB826FE48
uid           [ unknown] LINBIT Package and Repository Signing Key
>-----------------------------------

If you have a linbit repo file that contains a
gpgkey=https://packages.linbit.com/package-signing-pubkey.asc
gpgcheck=1
repo_gpgcheck=1

You may now be asked
>-----------------------------------
Importing GPG key 0xB826FE48:
 Userid     : "LINBIT Package and Repository Signing Key"
 Fingerprint: 4E53 8554 6726 D13C B649 872C FC05 A31D B826 FE48
 From       : https://packages.linbit.com/package-signing-pubkey.asc
Is this ok [y/N]: y
>-----------------------------------

If you instead have a repo file that says
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-linbit
gpgcheck=1
repo_gpgcheck=1
>-----------------------------------
Importing GPG key 0xB826FE48:
 Userid     : "LINBIT Package and Repository Signing Key"
 Fingerprint: 4E53 8554 6726 D13C B649 872C FC05 A31D B826 FE48
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-linbit
Is this ok [y/N]: y
>-----------------------------------

If you are on Debian based distros,
the typical error message may look like this:
>-----------------------------------
  The following signatures couldn't be verified
  because the public key is not available: NO_PUBKEY FC05A31DB826FE48
>-----------------------------------

Then double check that the (latest) linbit-keyring is installed
(see wget/dpkg -i above), and if it is installed, check that
/etc/apt/trusted.gpg.d/linbit-keyring.gpg actually contains the relevant key(s):
# gpg --no-default-keyring --keyring /etc/apt/trusted.gpg.d/linbit-keyring.gpg --list-keys
and if it does not, maybe re-install the linbit-keyring,
or check if it was installed as
/etc/apt/trusted.gpg.d/linbit-keyring.gpg.dpkg-dist
for some reason, and move it in place from there,
or check for explicit / duplicate imports of the keys,
and get rid of them first.
# apt-key list 
# apt-key del 32A746AD3ACFB7EB9A188D1953B3B037282B6E23
# apt-key del 4E5385546726D13CB649872CFC05A31DB826FE48
# apt install --reinstall ./linbit-keyring.deb


    Lars


