V=20240821

PREFIX ?= /usr

update:
	gpg --recv-keys $(cat community-trusted | cut -d: -f1) $(cat community-revoked)
	gpg --export --armor $(cat community-trusted | cut -d: -f1) $(cat community-revoked) > community.gpg

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 community{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/community{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
