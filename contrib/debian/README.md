
Debian
====================
This directory contains files used to package bitcoinvenezuelad/bitcoinvenezuela-qt
for Debian-based Linux systems. If you compile bitcoinvenezuelad/bitcoinvenezuela-qt yourself, there are some useful files here.

## bitcoinvenezuela: URI support ##


bitcoinvenezuela-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitcoinvenezuela-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitcoinvenezuela-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitcoinvenezuela128.png` to `/usr/share/pixmaps`

bitcoinvenezuela-qt.protocol (KDE)

