require 'foundation/version'

# Foundation for SASS
# Cribbed by Bootstrap-sass
# This gem makes Foundation assets available to rails, sprockets or compass
# projects without requiring npm or bower.
module Foundation
  class << self
    # Inspired by Kaminari
    def load!
      register_compass_extension if compass?

      if rails?
        register_rails_engine
      elsif sprockets?
        register_sprockets
      end

      configure_sass
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def javascripts_path
      File.join assets_path, 'javascripts'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    # Environment detection helpers
    def sprockets?
      defined?(::Sprockets)
    end

    def compass?
      defined?(::Compass::Frameworks)
    end

    def rails?
      defined?(::Rails)
    end

    private

    def configure_sass
      require 'sass'

      ::Sass.load_paths << stylesheets_path

      # foundation requires minimum precision of 8, see
      # https://github.com/twbs/foundation-sass/issues/409
      ::Sass::Script::Number.precision = \
        [8, ::Sass::Script::Number.precision].max
    end

    def register_compass_extension
      ::Compass::Frameworks.register(
          'foundation',
          :version               => Foundation::VERSION,
          :path                  => gem_path,
          :stylesheets_directory => stylesheets_path,
          :templates_directory   => File.join(gem_path, 'templates')
      )
    end

    def register_rails_engine
      require 'foundation-sass/engine'
    end

    def register_sprockets
      Sprockets.append_path(stylesheets_path)
      Sprockets.append_path(fonts_path)
      Sprockets.append_path(javascripts_path)
    end
  end
end

Foundation.load!
