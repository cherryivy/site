require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(:default, Rails.env)

module CherryIvy
  class Application < Rails::Application
    I18n.enforce_available_locales = true
  end
end
