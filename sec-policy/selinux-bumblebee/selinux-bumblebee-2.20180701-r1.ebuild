# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

IUSE=""
MODS="bumblebee"
POLICY_FILES="bumblebee.te bumblebee.fc bumblebee.if"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for bumblebee"

KEYWORDS="~amd64 ~x86"
