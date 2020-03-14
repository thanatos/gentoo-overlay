# Copyright 2016 Roy Wellington
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Doomseeker is a server browser for Doom."
HOMEPAGE="http://doomseeker.drdteam.org/"
SRC_URI="http://doomseeker.drdteam.org/files/doomseeker-1.2.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	app-arch/bzip2
	sys-libs/zlib
	dev-qt/linguist-tools
	dev-qt/qtcore
	dev-qt/qtgui
	dev-qt/qtmultimedia
	dev-qt/qtnetwork
	dev-qt/qtwidgets
	"

RDEPEND="${DEPEND}"

src_prepare() {
	# Remove included libraries, in favor of system ones:
	cd "${S}"
	rm -rf dependencies
}
