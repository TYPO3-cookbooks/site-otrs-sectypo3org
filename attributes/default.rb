# override the default vhost template
default['otrs']['apache2']['vhost_source'] = "site-otrs-sectypo3org"

default['otrs']['kernel_config']['email'] = "otrs@typo3.org"
default['otrs']['kernel_config']['organization'] = "TYPO3 Association"

default['site-otrs-sectypo3org']['ssl_certificate'] = "wildcard.typo3.org"