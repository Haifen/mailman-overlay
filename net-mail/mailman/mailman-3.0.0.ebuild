# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Mailman -- the GNU mailing list manager"
HOMEPAGE="http://www.list.org"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+client +postorius +HyperKitty"
REQUIRED_USE="postorius? ( client )
HyperKitty? ( client )"

DEPEND="net-mail/mailman-core
client? ( dev-python/mailmanclient )
postorius? ( www-apps/postorius )
HyperKitty? ( dev-python/mailman-hyperkitty
www-apps/HyperKitty )
"
RDEPEND="${DEPEND}"
