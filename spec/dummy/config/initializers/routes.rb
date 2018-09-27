# MONKEY PATCH!!!
# https://github.com/rails/rails/pull/32296
#
# Fixes:
# * Development mode deadlocks
# * ArgumentError: unknown firstpos: NilClass
#
# Allows use of "config.eager_load = true
# Will probably be included in Rails 5.2


module ActionDispatch
    module Journey
      class Routes
        def simulator
          @simulator ||= begin
            gtg = GTG::Builder.new(ast).transition_table unless ast.blank?
            GTG::Simulator.new(gtg)
          end
        end
      end
    end
  end