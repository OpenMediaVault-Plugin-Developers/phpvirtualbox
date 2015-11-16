#!/bin/sh

PHPVIRTUALBOX_VERSION=5.0-3

if [ ! -d src ]; then
    wget http://sourceforge.net/projects/phpvirtualbox/files/phpvirtualbox-${PHPVIRTUALBOX_VERSION}.zip/download -O phpvirtualbox.zip
    unzip phpvirtualbox.zip
    mv phpvirtualbox-${PHPVIRTUALBOX_VERSION} src
    rm -f phpvirtualbox.zip
    mv src/vboxinit debian/vboxinit.init
    chmod +x debian/vboxinit.init
fi

exit 0
