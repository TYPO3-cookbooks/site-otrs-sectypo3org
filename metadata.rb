name             "site-securityteamtypo3org"
maintainer       "Steffen Gebert"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache2"
description      "Chef cookbook for the OTRS for the TYPO3 Security Team"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.11"

supports         "debian"

depends          "t3-base",          "~> 0.2.0"

depends          "otrs",             "~> 1.2.0"
depends          "t3-apache2",       "~> 0.1.2"
depends          "t3-mysql",         "~> 5.0.0"
depends          "ssl_certificates", "~> 1.1.0"

depends          "build-essential",  "= 2.0.6"
depends          "perl",             "= 2.0.0"
