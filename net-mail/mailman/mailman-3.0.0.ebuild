# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_4 )

inherit distutils-r1

DESCRIPTION="Mailman -- the GNU mailing list manager"
HOMEPAGE="http://www.list.org"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

#falcon
DEPEND="dev-python/alembic[${PYTHON_USEDEP}]
dev-python/flufl-bounce[${PYTHON_USEDEP}]
dev-python/flufl-i18n[${PYTHON_USEDEP}]
dev-python/flufl-lock[${PYTHON_USEDEP}]
dev-python/httplib2[${PYTHON_USEDEP}]
dev-python/lazr-config[${PYTHON_USEDEP}]
dev-python/lazr-smtptest[${PYTHON_USEDEP}]
dev-python/mock[${PYTHON_USEDEP}]
dev-python/nose2[${PYTHON_USEDEP}]
dev-python/passlib[${PYTHON_USEDEP}]
dev-python/sqlalchemy[${PYTHON_USEDEP}]
dev-python/zope-component[${PYTHON_USEDEP}]
dev-python/zope-configuration[${PYTHON_USEDEP}]
dev-python/zope-event[${PYTHON_USEDEP}]
dev-python/zope-interface[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"
