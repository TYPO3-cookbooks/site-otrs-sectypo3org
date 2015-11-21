# override the default vhost template
default['otrs']['apache2']['vhost_source'] = "site-otrs-sectypo3org"

default['site-otrs-sectypo3org']['ssl_certificate'] = "wildcard.typo3.org"