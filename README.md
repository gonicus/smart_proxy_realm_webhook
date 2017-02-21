# Smart Proxy - Webhook realm provider

This plugin introduces a generic Webhook realm provider for Foreman.

It sends customizable HTTP POST requests to a HTTP-Server when a host is created or deleted.
The body will contain JSON encoded information.

E.g. on creation:

```
{"operation":"create","hostname":"host.lan","params":{"userclass":"User class",...}}
```

E.g. on deletion:

```
{"operation":"delete","hostname":"host.lan","params":{}}
```

The HTTP server should respond with JSON, too. E.g. on creation:

```
{"randompassword": "foo"}
```

## Installation

See [How_to_Install_a_Smart-Proxy_Plugin](http://projects.theforeman.org/projects/foreman/wiki/How_to_Install_a_Smart-Proxy_Plugin)
for how to install Smart Proxy plugins.

This plugin is compatible with Smart Proxy 1.15 or higher.

## Configuration

To enable this realm provider, edit `/etc/foreman-proxy/settings.d/realm.yml` and set:

    :use_provider: realm_webhook

Configuration options for this plugin are in `/etc/foreman-proxy/settings.d/realm_webhook.yml` and include:

* host: HTTP server host
* port: HTTP server port
* path: HTTP URL path
* headers: custom HTTP headers
* signing: support for signing procedure (See https://developer.github.com/webhooks/securing/)
* json_keys: custom json keys in request body

The example config file contains further information.

If you want Foreman to offer this provider in its web interface, you will have to
install `foreman_realm_webhook` in Foreman.

The selection in Foreman itself has no impact on the request to the smart proxy currently,
but the the provisioning templates may check for the realm type and add specific content.

## Contributing

Fork and send a Pull Request. Thanks!

## Copyright

Copyright (c) 2017 GONICUS GmbH

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
