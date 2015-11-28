name             "site-securityteamtypo3org"
maintainer       "Steffen Gebert"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache2"
description      "Chef cookbook for the OTRS for the TYPO3 Security Team"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.2"

supports         "debian"

depends          "otrs",             "~> 1.2.0"
depends          "t3-chef-vault"
depends          "ssl_certificates"
