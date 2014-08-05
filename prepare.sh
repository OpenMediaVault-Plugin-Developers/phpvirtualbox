#!/bin/sh

PHPVIRTUALBOX_VERSION=4.3-1

if [ ! -d phpvirtualbox ]; then
    wget http://sourceforge.net/projects/phpvirtualbox/files/phpvirtualbox-${PHPVIRTUALBOX_VERSION}.zip/download -O phpvirtualbox.zip
    unzip phpvirtualbox.zip
    mv phpvirtualbox-${PHPVIRTUALBOX_VERSION} phpvirtualbox
    /bin/rm -f phpvirtualbox.zip
    find . -maxdepth 1 -name "phpvirtualbox-*" -type d -exec /bin/mv {} phpvirtualbox \;
fi

exit 0
