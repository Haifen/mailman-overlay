# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy )

inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Easily write objects that delegate behavior"
HOMEPAGE="https://launchpad.net/lazr.delegates"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/nose[${PYTHON_USEDEP}]
dev-python/setuptools[${PYTHON_USEDEP}]
dev-python/zope-interface[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"
S=${WORKDIR}/${MY_P}
