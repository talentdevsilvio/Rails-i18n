ENV["RAILS_ENV"] = "test"
require File.join(File.dirname(__FILE__), "/../../../../config/environment")
require 'spec/rails'
require 'i18n_backend_database'

Spec::Runner.configure do |config|
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false

  config.after(:each) do
    Locale.reset_default_locale
    I18n.locale = "en"
    I18n.default_locale = "en"
    I18n.backend.cache_store.clear
  end
end
