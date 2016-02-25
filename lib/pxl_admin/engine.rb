require 'devise'
require 'friendly_id'
require 'simple_form'
require 'country_select'
require 'paperclip'
require 'kaminari'

module PxlAdmin
  class Engine < ::Rails::Engine
    isolate_namespace PxlAdmin

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
