require 'rails'

module React
  module Rails
    class Railtie < ::Rails::Railtie

      initializer 'react_rails.add_component_renderer', group: :all do |app|
        ActionController::Renderers.add :component do |component_name, options|
          renderer = ::React::Rails::ControllerRenderer.new(controller: self)
          html = renderer.call(component_name, options)
          render_options = options.merge(inline: html)
          render(render_options)
        end
      end
    end
  end
end
