require "whodat/engine"

module Whodat
  class Engine < ::Rails::Engine
    isolate_namespace Whodat
  
    initializer :assets do |config|
      Rails.application.config.assets.paths << root.join("app", "assets", "images", "whodat")
    end 

    initializer "whodat.assets.precompile" do |app|
      app.config.assets.precompile += %w( application_controller.rb )
    end

    config.before_initialize do
      ActiveSupport.on_load :action_controller do
        helper Whodat::Engine.helpers
      end
    end

  end
end

