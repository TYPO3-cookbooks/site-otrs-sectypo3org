# Description

Manages OTRS for TYPO3 Security Team.

Users can be managed in `/root/otrs.htpasswd` (a symlink to `/etc/htpasswd/.htpasswd`).

# Requirements

## Platform:

* debian

## Cookbooks:

* otrs (~> 1.2.0)
* t3-chef-vault
* ssl_certificates

# Attributes

* `node['otrs']['version']` - OTRS version to run. Defaults to `5.0.3`.
* `node['otrs']['apache2']['vhost_source']` - override the default vhost template. Defaults to `site-otrs-sectypo3org`.
* `node['otrs']['kernel_config']['email']` - Setup email address. Defaults to `otrs@typo3.org`.
* `node['otrs']['kernel_config']['organization']` - Setup organization name. Defaults to `TYPO3 Association`.
* `node['site-otrs-sectypo3org']['ssl_certificate']` - Name of the SSL certificate to deploy. Defaults to `wildcard.typo3.org`.

# Recipes

* [site-otrs-sectypo3org::default](#site-otrs-sectypo3orgdefault) - Customizes our [OTRS cookbook](https://github.com/TYPO3-cookbooks/otrs) to be used for this instance.

## site-otrs-sectypo3org::default

Customizes our [OTRS cookbook](https://github.com/TYPO3-cookbooks/otrs) to be used for this instance.

Brings the SSL certificate, adds HTTP Basic auth protection.

# PGP/GPG Setup

The PGP setup has to be done manually (files in `/opt/otrs/.gnupg`). Those files have to be readable for the web site user.

# License and Maintainer

Maintainer:: Steffen Gebert (<steffen.gebert@typo3.org>)

License:: Apache2
