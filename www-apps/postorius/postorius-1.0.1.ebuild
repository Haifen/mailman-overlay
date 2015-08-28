# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 pypy )
WEBAPP_NO_AUTO_INSTALL="yes"

inherit distutils-r1 webapp

DESCRIPTION="A web user interface for GNU Mailman"
HOMEPAGE="https://launchpad.net/postorius"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-python/django-1.6[${PYTHON_USEDEP}]
dev-python/django-browserid[${PYTHON_USEDEP}]
dev-python/mailmanclient[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"

# FIXME: move webapp stuff to postorius_standalone?
WEBAPP_MANUAL_SLOT="yes"

pkg_setup() {
	webapp_pkg_setup
}
src_install() {
	webapp_src_preinst
	distutils-r1_src_install
	webapp_src_install
}
pkg_postinst() {
	webapp_pkg_postinst
}
