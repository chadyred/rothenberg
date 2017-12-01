#!/bin/sh

if [ -z "$TARGET" ]; then
	TARGET=app
fi

if [ -z "$VERSION" ]; then
	VERSION=dev-master
fi

if [ -z "$VERSION" ]; then
    VERSION=dev-master
fi

composer require --dev --ignore-platform-reqs --no-suggest norsys/rothenberg:$VERSION

make -f vendor/norsys/rothenberg/install.mk install TARGET=$TARGET CI=$CI COMPOSER_BIN=$(which composer 2>/dev/null) PHP_BIN=$(which php 2>/dev/null) WITH_DEBUG=$WITH_DEBUG
