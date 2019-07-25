Return-Path: <rene.peinthor@linbit.com>
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by mail09.linbit.com (LINBIT Mail Daemon) with ESMTP id B0209101AC41
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Jul 2019 16:01:28 +0200 (CEST)
Received: by mail-wr1-f67.google.com with SMTP id r1so50915253wrl.7
	for <drbd-announce@lists.linbit.com>;
	Thu, 25 Jul 2019 07:01:28 -0700 (PDT)
MIME-Version: 1.0
From: Rene Peinthor <rene.peinthor@linbit.com>
Date: Thu, 25 Jul 2019 16:01:16 +0200
Message-ID: <CAHmn2DPRcnhEZb0kYg8jV_e_PZLgFEtJOdwMh5_A8y9RPdq3Og@mail.gmail.com>
To: drbd-announce@lists.linbit.com, drbd-user@lists.linbit.com
Content-Type: multipart/alternative; boundary="000000000000a5f746058e81dc57"
Subject: [DRBD-announce] Linstor-server 0.9.13, python-linstor 0.9.9,
	linstor-client 0.9.9
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

--000000000000a5f746058e81dc57
Content-Type: text/plain; charset="UTF-8"

Hi!

There are a few new features in this linstor release and I will highlight
the most important ones here:

* Search domain for nodes

If you have registered your linstor satellites with the FQDN you can now
set the
new controller property `SearchDomain` with your common domain part and than
you only have to use your subdomain part for commands.

* File based storage pools (loop devices)

We have a new storage pool types `file` and `file-thin` that uses files as
loop devices (via losetup), that support all of our Linstor features.

* HTTPS for REST-API

The REST-API can now be access through HTTPS if configured and all requests
to HTTP will than return a redirect to the HTTPS address.
To setup HTTPS you have to create a java keystore file[1] with a valid
certificate and
configure the `[https]` section in `/etc/linstor/linstor.toml` file.
```
[https]
  keystore = "/etc/linstor/keystore_server.jks"
  keystore_password = "linstor"
```

* Basic LDAP support

Linstor has now support for basic LDAP authentication, this means you can
configure a LDAP server and a search_filter and allow only members of a
certain group access to Linstor.
A requirement for LDAP is authentication support is that you have
configured Linstor with HTTPS.
Here is a sample config entry in our new `/etc/linstor/linstor.toml` config
file:
```
[ldap]
  enabled = true
  uri = "ldaps://ldap.example.com"
  dn = "uid={user},ou=users,o=ha,dc=example"
  search_base = "dc=example"
  search_filter =
"(&(uid={user})(memberof=cn=linstor,ou=services,o=ha,dc=example))"
```
The `{user}` template variable will be replaced with the login user.

* External meta-data support for DRBD

Before creating the resource just set the new `StorPoolNameDrbdMeta`
property on the resource-definition or volume-definition for the storage
pool you want to use for external meta-data.

* New TOML based configuration file

The current `/etc/linstor/database.cfg` should automatically migrated to
the new `/etc/linstor/linstor.toml` file.


Here is the more detailed changelog:

linstor-server 0.9.13
---------------------
 * Maria db with large index is now supported
 * Basic LDAP support
 * File based storage pools (FILE provider)
 * External meta-data support for DRBD
 * HTTPS support for REST-API
 * REST-API version 1.0.7 (2 new fields)
 * Node name resolving based on search domain property
 * Fix always add resources to the retry task if they failed
 * Improved error handling on REST-API calls
 * Fixed LVM-thick allocation sizes
 * Better show active net interface on nodes

https://www.linbit.com/downloads/linstor/linstor-server-0.9.13.tar.gz

python-linstor 0.9.9
--------------------
 * Added *_raise version methods to all list methods
 * Added HTTPS support
 * Added authentication support for linstor
 * Support new is_active field on net interfaces

https://www.linbit.com/downloads/linstor/python-linstor-0.9.9.tar.gz

linstor-client 0.9.9
--------------------
 * Added HTTPS support
 * Fixed: controller version command in curl mode

https://www.linbit.com/downloads/linstor/linstor-client-0.9.9.tar.gz


Linstor PPA:
https://launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack

Best regards,
Rene

[1]
https://aboutssl.org/how-to-create-a-self-signed-certificate-using-java-keytool/

--000000000000a5f746058e81dc57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>There are a few new features in thi=
s linstor release and I will highlight the most important ones here:</div><=
div><br></div><div>* Search domain for nodes</div><div><br></div><div>If yo=
u have registered your linstor satellites with the FQDN you can now set the=
</div><div>new controller property `SearchDomain` with your common domain p=
art and than</div><div>you only have to use your subdomain part for command=
s.</div><div><br></div><div>* File based storage pools (loop devices)</div>=
<div><br></div><div>We have a new storage pool types `file` and `file-thin`=
 that uses files as loop devices (via losetup), that support all of our Lin=
stor features.</div><div><br></div><div>* HTTPS for REST-API<br></div><div>=
<br></div><div>The REST-API can now be access through HTTPS if configured a=
nd all requests to HTTP will than return a redirect to the HTTPS address.</=
div><div>To setup HTTPS you have to create a java keystore file[1] with a v=
alid certificate and</div><div>configure the `[https]` section in `/etc/lin=
stor/linstor.toml` file.</div><div>```</div><div><font face=3D"courier new,=
 monospace" size=3D"1">[https]<br>=C2=A0 keystore =3D &quot;/etc/linstor/ke=
ystore_server.jks&quot;<br>=C2=A0 keystore_password =3D &quot;linstor&quot;=
</font><br></div><div>```</div><div><br></div><div>* Basic LDAP support</di=
v><div><br></div><div>Linstor has now support for basic LDAP authentication=
, this means you can configure a LDAP server and a search_filter and allow =
only members of a certain group access to Linstor.</div><div>A requirement =
for LDAP is authentication support is that you have configured Linstor with=
 HTTPS.</div><div>Here is a sample config entry in our new `/etc/linstor/li=
nstor.toml` config file:</div><div>```</div><div><font face=3D"courier new,=
 monospace" size=3D"1">[ldap]<br>=C2=A0 enabled =3D true=C2=A0<br>=C2=A0 ur=
i =3D &quot;ldaps://<a href=3D"http://ldap.example.com" target=3D"_blank">l=
dap.example.com</a>&quot;<br>=C2=A0 dn =3D &quot;uid=3D{user},ou=3Dusers,o=
=3Dha,dc=3Dexample&quot;<br>=C2=A0 search_base =3D &quot;dc=3Dexample&quot;=
<br>=C2=A0 search_filter =3D &quot;(&amp;(uid=3D{user})(memberof=3Dcn=3Dlin=
stor,ou=3Dservices,o=3Dha,dc=3Dexample))&quot;</font><br></div><div>```</di=
v><div>The `{user}` template variable will be replaced with the login user.=
</div><div><br></div><div>* External meta-data support for DRBD<br></div><d=
iv><br></div><div>Before creating the resource just set the new `StorPoolNa=
meDrbdMeta` property on the resource-definition or volume-definition for th=
e storage pool you want to use for external meta-data.</div><div><br></div>=
<div>* New TOML based configuration file</div><div><br></div><div>The curre=
nt `/etc/linstor/database.cfg` should automatically migrated to the new `/e=
tc/linstor/linstor.toml` file.</div><div><br></div><div><br></div><div>Here=
 is the more detailed changelog:</div><div><br></div><div><div><div><span s=
tyle=3D"font-family:monospace,monospace;font-size:x-small">linstor-server 0=
.9.13</span></div><div><div><div><font face=3D"monospace, monospace" size=
=3D"1">---------------------</font></div><div><span style=3D"font-family:mo=
nospace,monospace;font-size:x-small">=C2=A0* Maria db with large index is n=
ow supported</span></div><div><span style=3D"font-family:monospace,monospac=
e;font-size:x-small">=C2=A0* Basic LDAP support</span></div><div><span styl=
e=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* File based =
storage pools (FILE provider)</span></div><div><span style=3D"font-family:m=
onospace,monospace;font-size:x-small">=C2=A0* External meta-data support fo=
r DRBD</span></div><div><span style=3D"font-family:monospace,monospace;font=
-size:x-small">=C2=A0* HTTPS support for REST-API</span></div><div><span st=
yle=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* REST-API =
version 1.0.7 (2 new fields)</span></div><div><span style=3D"font-family:mo=
nospace,monospace;font-size:x-small">=C2=A0* Node name resolving based on s=
earch domain property</span></div><div><span style=3D"font-family:monospace=
,monospace;font-size:x-small">=C2=A0* Fix always add resources to the retry=
 task if they failed</span></div><div><span style=3D"font-family:monospace,=
monospace;font-size:x-small">=C2=A0* Improved error handling on REST-API ca=
lls</span></div><div><span style=3D"font-family:monospace,monospace;font-si=
ze:x-small">=C2=A0* Fixed LVM-thick allocation sizes</span></div><div><span=
 style=3D"font-family:monospace,monospace;font-size:x-small">=C2=A0* Better=
 show active net interface on nodes</span></div><div><br></div></div><div><=
font size=3D"1"><a href=3D"https://www.linbit.com/downloads/linstor/linstor=
-server-0.9.13.tar.gz" target=3D"_blank">https://www.linbit.com/downloads/l=
instor/linstor-server-0.9.13.tar.gz</a></font></div></div></div><div><br></=
div><div><div><div><div><font size=3D"1"><span style=3D"font-family:monospa=
ce,monospace">python-linstor 0.9.9</span></font></div><div><font size=3D"1"=
><span style=3D"font-family:monospace,monospace">--------------------</span=
></font></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* A=
dded *_raise version methods to all list methods</font></div><div><font fac=
e=3D"monospace, monospace" size=3D"1">=C2=A0* Added HTTPS support</font></d=
iv></div><div><font face=3D"monospace, monospace" size=3D"1">=C2=A0* Added =
authentication support for linstor</font></div><div><font face=3D"monospace=
, monospace" size=3D"1">=C2=A0* Support new is_active field on net interfac=
es</font></div><div><br></div><div><font size=3D"1"><font face=3D"monospace=
, monospace"><a href=3D"https://www.linbit.com/downloads/linstor/python-lin=
stor-0.9.9.tar.gz" target=3D"_blank">https://www.linbit.com/downloads/linst=
or/python-linstor-0.9.9.tar.gz</a></font></font></div></div><div><font size=
=3D"1"><br></font></div><div><div><div><font size=3D"1"><span style=3D"font=
-family:monospace,monospace">linstor-client 0.9.9</span></font></div><div><=
font size=3D"1"><span style=3D"font-family:monospace,monospace">-----------=
---------</span></font></div><div><span style=3D"font-family:monospace,mono=
space;font-size:x-small">=C2=A0* Added HTTPS support</span><font face=3D"mo=
nospace, monospace" size=3D"1">=C2=A0</font></div><div><font face=3D"monosp=
ace, monospace" size=3D"1">=C2=A0* Fixed: controller version command in cur=
l mode</font></div></div><div><br></div><div><font size=3D"1"><font face=3D=
"monospace, monospace"><a href=3D"https://www.linbit.com/downloads/linstor/=
linstor-client-0.9.9.tar.gz" target=3D"_blank">https://www.linbit.com/downl=
oads/linstor/linstor-client-0.9.9.tar.gz</a></font></font></div></div></div=
><div><br></div><div><br></div><div><div>Linstor PPA:<br><a href=3D"https:/=
/launchpad.net/~linbit/+archive/ubuntu/linbit-drbd9-stack" rel=3D"noreferre=
r" target=3D"_blank">https://launchpad.net/~linbit/+archive/ubuntu/linbit-d=
rbd9-stack</a><br></div><div><br></div><div>Best regards,</div><div>Rene</d=
iv></div></div><div><br></div><div>[1]=C2=A0<a href=3D"https://aboutssl.org=
/how-to-create-a-self-signed-certificate-using-java-keytool/" target=3D"_bl=
ank">https://aboutssl.org/how-to-create-a-self-signed-certificate-using-jav=
a-keytool/</a></div></div>

--000000000000a5f746058e81dc57--
