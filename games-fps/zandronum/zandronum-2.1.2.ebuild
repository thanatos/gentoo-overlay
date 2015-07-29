# Copyright 2015 Roy Wellington
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Zandronum is a multiplayer oriented port, based off Skulltag, for Doom and Doom II by id Software."
HOMEPAGE="https://zandronum.com/"
SRC_URI="https://zandronum.com/downloads/zandronum2.1.2-linux-x86_64.tar.bz2"

LICENSE="Zandronum"  # it might be a 4-clause BSD, need to double-check.
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	app-arch/bzip2
	dev-libs/atk
	dev-libs/glib
	dev-libs/openssl
	media-libs/fontconfig
	media-libs/freetype
	media-libs/glu
	media-libs/libjpeg-turbo
	media-libs/libsdl
	media-libs/mesa
	media-sound/fluidsynth
	sys-libs/zlib
	x11-libs/cairo
	x11-libs/gdk-pixbuf
	x11-libs/gtk+
	x11-libs/pango
	"

RDEPEND="${DEPEND}"

src_unpack() {
	set -e
	mkdir "${S}"
	tar -xf "${DISTDIR}/${A}" -C "${S}"
}

src_compile() {
	:
}

src_install() {
	set -e
	mkdir -p "${ED}/opt/zandronum"
	cp -r "${S}"/* "${ED}/opt/zandronum/."
}
