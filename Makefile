V=20240821

PREFIX = /usr/local

update:
	gpg --recv-keys $(cat community-trusted | cut -d: -f1) $(cat community-revoked)
	gpg --export --armor $(cat community-trusted | cut -d: -f1) $(cat community-revoked) > community-keyring.gpg

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 community-keyring.gpg community-trusted community-revoked $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/community-keyring.gpg community-trusted community-revoked
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
