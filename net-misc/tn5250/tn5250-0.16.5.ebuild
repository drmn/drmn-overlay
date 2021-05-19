# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="An implementation of the 5250 telnet protocol"
HOMEPAGE="http://tn5250.sourceforge.net/"
SRC_URI="mirror://sourceforge/tn5250/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="
	net-libs/libnsl:*
	sys-libs/ncurses:*
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	local PATCHES=(
		"${FILESDIR}/tn5250-0.17.4-remove_tic_install.patch"
	)
	default
	eautoreconf
}

src_configure() {
	econf
}

src_install() {
	emake DESTDIR="${D}" install
	tic -o "${D}/usr/share/terminfo" linux/5250.terminfo || die "tic failed"
}
