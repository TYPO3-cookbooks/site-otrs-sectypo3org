#<> OTRS version to run
default['otrs']['version'] = "5.0.7"

#<> Set FQDN
default['otrs']['fqdn'] = "securityteam.typo3.org"

#<> override the default vhost template
default['otrs']['apache']['vhost_source'] = "site-securityteamtypo3org"

#<> Setup email address
default['otrs']['kernel_config']['email'] = "otrs@typo3.org"
#<> Setup organization name
default['otrs']['kernel_config']['organization'] = "TYPO3 Association"

#<> Name of the SSL certificate to deploy
default['site-securityteamtypo3org']['ssl_certificate'] = "wildcard.typo3.org"
