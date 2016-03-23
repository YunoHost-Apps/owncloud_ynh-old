#
# Common variables
#

APPNAME="owncloud"

# ownCloud version
VERSION=8.2.3

# Package name for MediaGoblin dependencies
DEPS_PKG_NAME="owncloud-deps"

# Remote URL to fetch ownCloud tarball
OWNCLOUD_SOURCE_URL="https://download.owncloud.org/community/owncloud-${VERSION}.tar.bz2"

# Remote URL to fetch ownCloud tarball checksum
OWNCLOUD_CHECKSUM_URL="https://download.owncloud.org/community/owncloud-${VERSION}.tar.bz2.sha256"

#
# Common helpers
#

# Print a message to stderr and exit
# usage: die msg [retcode]
die() {
  printf "%s" "$1" 1>&2
  exit "${2:-1}"
}
