# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-2

SRC_URI=""
EGIT_REPO_URI="https://github.com/jayphelps/git-blame-someone-else"
EGIT_BRANCH="master"
KEYWORDS=""

DESCRIPTION="Blame someone else for your bad code."
HOMEPAGE="https://github.com/jayphelps/git-blame-someone-else"

LICENSE="MIT"
SLOT="0"
IUSE="offensive"

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	if ! use offensive ; then
		(
			sed -i '/s/an asshole/not very kind/' git-blame-someone-else
		)
	fi
}
