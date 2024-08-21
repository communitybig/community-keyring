# Community <talesam[at]gmail.com>

# Manjaro credits
# Maintainer: Philip Müller <philm[at]manjaro[dot]org>
# Maintainer: Bernhard Landauer <bernhard[at]manjaro[dot]org>

# Arch credits:
# Pierre Schmitz <pierre@archlinux.de>

pkgname=community-keyring
pkgver=20240821
pkgrel=1
pkgdesc='Community PGP keyring'
arch=('any')
url='https://communitybig.org'
license=('GPL')
install="${pkgname}.install"
source=('Makefile'
        'community-keyring.gpg'
        'community-revoked'
        'community-trusted')
sha256sums=('2ef491c2ca18602b8cf02bf6ed39ad5a06824dbaea0ddf81def2918086f27c3a'
            '41cbeb67f535495deb012c77216949ce6ef1344d1238894b45de589423441264'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            'dcc2d34b99ff8a58efe72b95b36d934a47f947d994102b1be441b1d4cd2c5e48')

package() {
  cd "${srcdir}"
  make PREFIX=/usr DESTDIR=${pkgdir} install
}
