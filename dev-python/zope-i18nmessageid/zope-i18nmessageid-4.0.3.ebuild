# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy )

inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Message Identifiers for internationalization"
HOMEPAGE="http://pypi.python.org/pypi/zope.i18nmessageid"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S=${WORKDIR}/${MY_P}
