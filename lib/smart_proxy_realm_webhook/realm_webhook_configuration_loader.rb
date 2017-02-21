module ::Proxy::Realm::Webhook
  class ConfigurationLoader
    def load_classes
      require 'smart_proxy_realm_webhook/realm_webhook_provider'
    end

    def load_dependency_injection_wirings(container_instance, settings)
      container_instance.dependency :realm_provider_impl, lambda {::Proxy::Realm::Webhook::Provider.new(settings)}
    end
  end
end
