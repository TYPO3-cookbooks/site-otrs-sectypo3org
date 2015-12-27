name             "site-securityteamtypo3org"
maintainer       "Steffen Gebert"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache2"
description      "Chef cookbook for the OTRS for the TYPO3 Security Team"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.7"

supports         "debian"

depends          "otrs",             "~> 1.2.0"
depends          "t3-chef-vault"
depends          "ssl_certificates"

depends          "apache2",          "= 3.1.0"
depends          "build-essential",  "= 2.0.6"
depends          "database",         "= 2.3.1"
depends          "mysql",            "= 5.6.3"
depends          "perl",             "= 2.0.0"
