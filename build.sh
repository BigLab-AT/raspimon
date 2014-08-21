#!/bin/bash
PACKAGENAME="raspimon"
MAINTAINER="Rapsimon Team <raspimon@holowaty.me>"
VENDOR="Rapsimon Team <raspimon@holowaty.me>"
VERSION="0.1-4"
URL="https://github.com/bullshit/raspimon"
LICENSE="GPLv3"
DESCRIPTION="Raspimon deamon"

ROOT=`pwd`

sed "1s/^.*$/${PACKAGENAME} (${VERSION}) stable; urgency=low/" ./debian/changelog > /tmp/changelog
cp /tmp/changelog ./debian/changelog

cd ./src
fpm -f -s dir -t deb -a all \
	-n "$PACKAGENAME" \
	-m "$MAINTAINER" \
	--vendor "$VENDOR" \
	--category "misc" \
	--license "$LICENSE" \
	--url $URL \
	--depends "curl" \
	--description "$DESCRIPTION" \
	--after-install "${ROOT}/debian/postinst" \
	--before-remove "${ROOT}/debian/prerm" \
	-v "$VERSION" \
	-p "${ROOT}/${PACKAGENAME}_${VERSION}_all.deb" \
	--config-files "/etc/" \
	--deb-changelog "${ROOT}/debian/changelog" \
	--deb-compression "xz" \
	.
