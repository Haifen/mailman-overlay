# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python2_7 pypy )
WEBAPP_NO_AUTO_INSTALL="yes"

inherit distutils-r1 webapp

DESCRIPTION="A web interface to access GNU Mailman v3 archives"
HOMEPAGE="https://gitlab.com/mailman/hyperkitty"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
|| ( >=dev-python/django-1.7[${PYTHON_USEDEP}] ( >=dev-python/django-1.6[${PYTHON_USEDEP}] >=dev-python/south-1.0[${PYTHON_USEDEP}] ) )
>=dev-python/django-gravatar2-1.0.6[${PYTHON_USEDEP}]
>=dev-python/python-social-auth-0.2.3[$(python_gen_usedep python{2_7,3_3,3_4})]
>=dev-python/djangorestframework-3.0.0[${PYTHON_USEDEP}]
>=dev-python/django-crispy-forms-1.4.0[${PYTHON_USEDEP}]
>=dev-python/rjsmin-1.0.6[${PYTHON_USEDEP}]
>=dev-python/cssmin-0.2.0[${PYTHON_USEDEP}]
>=dev-python/robot-detection-0.3[${PYTHON_USEDEP}]
>=dev-python/pytz-2012[${PYTHON_USEDEP}]
>=dev-python/django-paintstore-0.1.2[${PYTHON_USEDEP}]
>=dev-python/django-compressor-1.3[$(python_gen_usedep python{2_7,3_3,3_4})]
>=dev-python/django-browserid-0.11.1[${PYTHON_USEDEP}]
>=dev-python/mailmanclient-1.0.0[${PYTHON_USEDEP}]
dev-python/python-dateutil[${PYTHON_USEDEP}]
>=dev-python/networkx-1.9.1[$(python_gen_usedep python{2_7,3_3,3_4})]
>=dev-python/enum34-1.0[${PYTHON_USEDEP}]
>=dev-python/django-haystack-2.1.0[${PYTHON_USEDEP}]
>=dev-python/django-extensions-1.3.7[$(python_gen_usedep python{2_7,3_3,3_4})]
>=dev-python/lockfile-0.9.1[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"

# FIXME: move webapp stuff to hyperkitty_standalone?
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
