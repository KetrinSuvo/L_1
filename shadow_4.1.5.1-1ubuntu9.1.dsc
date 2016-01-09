-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 1.0
Source: shadow
Binary: passwd, login, uidmap
Architecture: any
Version: 1:4.1.5.1-1ubuntu9.1
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders: Christian Perrier <bubulle@debian.org>, Nicolas FRANCOIS (Nekral) <nicolas.francois@centraliens.net>
Homepage: http://pkg-shadow.alioth.debian.org/
Standards-Version: 3.9.3
Vcs-Browser: http://svn.debian.org/viewsvn/pkg-shadow/debian/trunk
Vcs-Svn: svn://svn.debian.org/svn/pkg-shadow/debian/trunk
Build-Depends: autoconf, automake1.9, libtool, gettext, libpam0g-dev, debhelper (>= 6.0.7~), quilt, dpkg-dev (>= 1.13.5), xsltproc, docbook-xsl, docbook-xml, libxml2-utils, cdbs, libselinux1-dev [linux-any], libsemanage1-dev [linux-any], gnome-doc-utils (>= 0.4.3)
Package-List:
 login deb admin required arch=any
 passwd deb admin required arch=any
 uidmap deb admin required arch=any
Checksums-Sha1:
 6e4de75de58405d21b0377b926ae770afccd95bc 3508077 shadow_4.1.5.1.orig.tar.gz
 ba5b62db90e6860696d56e8ab03e7b991d72bbe2 112590 shadow_4.1.5.1-1ubuntu9.1.diff.gz
Checksums-Sha256:
 ee1986c5fec9f6e7868bcc5329874a72dec74897b598d86eb0532f79471f32f0 3508077 shadow_4.1.5.1.orig.tar.gz
 b45ef0aed9f4cc73888ba4b50bc37beb68dc49978ab5cba26159abfa0ba4799e 112590 shadow_4.1.5.1-1ubuntu9.1.diff.gz
Files:
 ae66de9953f840fb3a97f6148bc39a30 3508077 shadow_4.1.5.1.orig.tar.gz
 1be257163759c1a43acffdc907f30e01 112590 shadow_4.1.5.1-1ubuntu9.1.diff.gz
Original-Maintainer: Shadow package maintainers <pkg-shadow-devel@lists.alioth.debian.org>

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJVoCXSAAoJEFaNMPMhshM9r/8P/028rNvCnKAZrE0Zib31cju+
VTXXpFsZhHiut1aUucCprB4fX8q46622eHW8NpojUxXmp9XKCz/4Syw/rY4Eo3ur
nDDsKd96lo5P/sSwhhcj0z5gbqaVnS59b0pOi+HXZITozTGg7MFSULhLHuQzkGGH
vPGO64my72/EvsdyHTsRUW7Qyp6kbuxK3vn9x/nwnUGDrM2Xt/WW8zkgN6VpGhLW
hfSeLBKdP76mqlF0hQfvQlG1jjPpOMprKJQ9TvCDUFbvP9RMOYuZ0bUXeNkB66wv
3dUrV0SJlJoRhtRuZMxg61rpzxIB0BUrCRUyZccgDSXsyS12942Ls/0HNXdVSr1v
OqAHslIK5l4d+aKaac5O/pD8eeWcL0AoFaVw76x5IrzVKyVBVT1Ml121tgD8cPRF
viacJUkG+RhhNHBMrKfLwo3OV4CtbuHbZNldzUBvpP3yLGic+wi4G4ffaqgg2eT5
1KTiuJ5eAqzqsoVK1w2xdanlFIjCpcW6HfodG/BmX0j2hTT49B2qmmSfzAORGUrB
HInbYVGWg3mr/Sh3Fa1jbYOjIqF6L0m3O6MU4KFPhWGQyWepYq523T+WOGE+FaxU
TD5TGreXqTMzqY5teXDxrDqB4B6it8J7PztmHsdGV3gL+3LSGJOQyzUly8f/ovmQ
+RR0TlVnYO3VeTiwKg6Z
=O0RB
-----END PGP SIGNATURE-----
