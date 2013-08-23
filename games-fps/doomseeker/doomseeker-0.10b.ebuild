# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Doomseeker is a server browser for Doom."
HOMEPAGE="http://doomseeker.drdteam.org/"
SRC_URI="http://doomseeker.drdteam.org/files/doomseeker-0.10b_src.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	app-arch/bzip2
	sys-libs/zlib
	dev-qt/qtgui
	"

RDEPEND="${DEPEND}"

src_unpack() {
	unpack "${A}"
	# Adjust the name of the directory inside the tar file:
	mv doomseeker-0.10b_src doomseeker-0.10b
}

src_prepare() {
	# Remove included libraries, in favor of system ones:
	cd "${S}"
	rm -rf bzip2 dependencies zlib

	# Need a semicolon at the end here:
	sed -i -e 's/^Categories=Game$/Categories=Game;/' media/Doomseeker.desktop
}
