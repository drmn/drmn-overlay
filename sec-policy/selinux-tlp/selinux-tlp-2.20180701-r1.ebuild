# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

IUSE=""
MODS="tlp"
POLICY_FILES="tlp.te tlp.fc"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for TLP"

KEYWORDS="~amd64 ~x86"
