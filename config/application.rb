require_relative 'boot'
require "active_storage/engine"
require 'rails/all'

Bundler.require(*Rails.groups)

module LuciferDex
  class Application < Rails::Application
    config.load_defaults 5.1
    
    config.generators do |g|
      g.assets  false
      g.helper false
      g.stylesheets false
    end

    config.assets.enabled = true
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.assets.precompile += %w( .svg .eot .woff .ttf)

    config.time_zone = 'Bangkok'
    config.active_record.default_timezone = :local

    config.session_store :cookie_store, key: "lucifer_dex_session_#{Rails.env}"
  end
end
