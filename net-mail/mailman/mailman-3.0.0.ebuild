# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Mailman -- the GNU mailing list manager"
HOMEPAGE="http://www.list.org"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

# FIXME: hyperkitty_standalone postorius_standalone
DEPEND="net-mail/mailman-core
dev-python/mailmanclient
dev-python/mailman-hyperkitty
www-apps/postorius
www-apps/HyperKitty
"
RDEPEND="${DEPEND}"
