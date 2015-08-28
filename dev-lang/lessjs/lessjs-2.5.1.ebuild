# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# based on http://data.gpo.zugaina.org/eva/dev-lang/less/less-1.3.3.ebuild

EAPI=5

DESCRIPTION="Leaner CSS"
HOMEPAGE="http://lesscss.org"
MY_PN="less"
SRC_URI="https://github.com/${MY_PN}/${MY_PN}.js/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=net-libs/nodejs-0.10.0"
RDEPEND="${DEPEND}"
S="${WORKDIR}/${MY_PN}.js-${PV}"

src_install() {
	insinto usr/lib/${MY_PN}
	doins -r lib bin
	chmod +x "${D}"/usr/lib/${MY_PN}/bin/lessc
	dosym "${D}"/usr/lib/${MY_PN}/bin/lessc usr/bin/lessc
}
