# Description

Manages OTRS for TYPO3 Security Team.

Users can be managed in `/root/otrs.htpasswd` (a symlink to `/etc/htpasswd/.htpasswd`).

# Requirements

## Platform:

* debian

## Cookbooks:

* t3-base (~> 0.2.0)
* otrs (~> 1.2.0)
* t3-apache2 (~> 0.1.2)
* t3-mysql (~> 5.0.0)
* ssl_certificates (~> 1.1.0)
* build-essential (= 2.0.6)
* perl (= 2.0.0)

# Attributes

* `node['otrs']['version']` - OTRS version to run. Defaults to `5.0.15`.
* `node['otrs']['fqdn']` - Set FQDN. Defaults to `securityteam.typo3.org`.
* `node['otrs']['apache']['vhost_source']` - override the default vhost template. Defaults to `site-securityteamtypo3org`.
* `node['otrs']['kernel_config']['email']` - Setup email address. Defaults to `otrs@typo3.org`.
* `node['otrs']['kernel_config']['organization']` - Setup organization name. Defaults to `TYPO3 Association`.
* `node['site-securityteamtypo3org']['ssl_certificate']` - Name of the SSL certificate to deploy. Defaults to `wildcard.typo3.org`.

# Recipes

* [site-securityteamtypo3org::default](#site-securityteamtypo3orgdefault) - Customizes our [OTRS cookbook](https://github.com/TYPO3-cookbooks/otrs) to be used for this instance.

## site-securityteamtypo3org::default

Customizes our [OTRS cookbook](https://github.com/TYPO3-cookbooks/otrs) to be used for this instance.

Brings the SSL certificate, adds HTTP Basic auth protection.

# Credentials

The following default credentials are set:

* HTTP Authentication: `test` / `test`
* OTRS: `root@localhost` / `root`

# PGP/GPG Setup

The PGP setup has to be done manually (files in `/opt/otrs/.gnupg`). Those files have to be readable for the web site user. List GPG keys with `gpg --list-keys --homedir /opt/otrs-gnupg`, get the expiring key, edit the key with `gpg --homedir /opt/otrs-gnupg --edit-key <KEY-ID>`, use `key <NUM>` to select the key and the `expire` command to update the expiration time for the relevant keys. End with `save` and set proper ownership and permissions on the keyfiles afterwards.

# License and Maintainer

Maintainer:: Steffen Gebert (<steffen.gebert@typo3.org>)

License:: Apache2
