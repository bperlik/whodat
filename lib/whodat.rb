require "whodat/engine"

module Whodat
  class Engine < ::Rails::Engine
    isolate_namespace Whodat

    config.before_initialize do
      ActiveSupport.on_load :action_controller do
        helper Whodat::Engine.helpers
      end
    end
  end
end

