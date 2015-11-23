#<> override the default vhost template
default['otrs']['apache2']['vhost_source'] = "site-otrs-sectypo3org"

#<> Setup email address
default['otrs']['kernel_config']['email'] = "otrs@typo3.org"
#<> Setup organization name
default['otrs']['kernel_config']['organization'] = "TYPO3 Association"

#<> Name of the SSL certificate to deploy
default['site-otrs-sectypo3org']['ssl_certificate'] = "wildcard.typo3.org"