# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy )

inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Configuration Markup Language (ZCML)"
HOMEPAGE="http://pypi.python.org/pypi/zope.configuration"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
dev-python/zope-interface[${PYTHON_USEDEP}]
dev-python/zope-schema[${PYTHON_USEDEP}]
dev-python/zope-i18nmessageid[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"
S=${WORKDIR}/${MY_P}
