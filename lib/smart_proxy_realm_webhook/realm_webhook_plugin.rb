require 'smart_proxy_realm_webhook/realm_webhook_version'
require 'smart_proxy_realm_webhook/realm_webhook_configuration_loader'

module Proxy::Realm::Webhook
  class Plugin < ::Proxy::Provider
    load_classes ::Proxy::Realm::Webhook::ConfigurationLoader
    load_dependency_injection_wirings ::Proxy::Realm::Webhook::ConfigurationLoader

    default_settings headers: {}, use_ssl: true, verify_ssl: true, signing: {enabled: false}, json_keys: {operation: "operation", hostname: "hostname", params: "params"}
    validate_presence :host, :port, :path

    plugin :realm_webhook, ::Proxy::Realm::Webhook::VERSION
  end
end
