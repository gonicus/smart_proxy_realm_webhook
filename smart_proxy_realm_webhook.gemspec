# -*- encoding: utf-8 -*-

require File.expand_path('../lib/smart_proxy_realm_webhook/realm_webhook_version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'smart_proxy_realm_webhook'
  s.version     = Proxy::Realm::Webhook::VERSION
  s.summary     = 'Webhook realm provider'
  s.description = 'Generic realm provider notifying other services/realms about the creation or deletion of hosts via HTTP Webhooks'
  s.authors     = ['Joshua Mühlfort']
  s.email       = 'muehlfort@gonicus.de'
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.files       = Dir['{lib,settings.d,bundler.d}/**/*', 'Gemfile'] + s.extra_rdoc_files
  s.homepage    = 'https://github.com/gonicus/smart_proxy_realm_webhook'
  s.license     = 'GPL-3.0'
end
