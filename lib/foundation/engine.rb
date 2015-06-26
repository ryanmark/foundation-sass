module Foundation
  module Rails
    # Load foundation assets for rails
    class Engine < ::Rails::Engine
      initializer 'foundation-sass.assets.precompile' do |app|
        %w(stylesheets javascripts).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
