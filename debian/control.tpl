Source: safedesk-server
Section: net
Priority: optional
Maintainer: open-trade <info@safedesk.com>
Build-Depends: debhelper (>= 10), pkg-config
Standards-Version: 4.5.0
Homepage: https://safedesk.com/

Package: safedesk-server-hbbs
Architecture: {{ ARCH }}
Depends: systemd ${misc:Depends}
Description: SafeDesk server
 Self-host your own SafeDesk server, it is free and open source.

Package: safedesk-server-hbbr
Architecture: {{ ARCH }}
Depends: systemd ${misc:Depends}
Description: SafeDesk server
 Self-host your own SafeDesk server, it is free and open source.
 This package contains the SafeDesk relay server.

Package: safedesk-server-utils
Architecture: {{ ARCH }}
Depends: ${misc:Depends}
Description: SafeDesk server
 Self-host your own SafeDesk server, it is free and open source.
 This package contains the safedesk-utils binary.
