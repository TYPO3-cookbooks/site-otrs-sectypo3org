name             "site-securityteamtypo3org"
maintainer       "Steffen Gebert"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache2"
description      "Chef cookbook for the OTRS for the TYPO3 Security Team"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.11"

supports         "debian"

depends          "t3-base",          "~> 0.2.60"
depends          "otrs",             "~> 2.1.0"

depends          "perl",             "= 4.0.0"

# just for kicking berks - it was not able to compute a solution otherwise
depends "php", "< 2.2.0"
