description 'Foundation for Sass'

manifest = Pathname.new(File.dirname(__FILE__))
assets   = File.expand_path('../../assets', manifest)

# Stylesheet importing foundation
stylesheet 'styles.sass'

# Foundation variable overrides file
stylesheet File.join(assets, 'stylesheets', 'foundation', '_settings.scss'), :to => '_settings.scss'

# Copy JS and fonts
{ :javascript => 'javascripts' }.each do |method, dir|
  root = Pathname.new(assets).join(dir)
  Dir.glob root.join('**', '*.*') do |path|
    path = Pathname.new(path)
    send method, path.relative_path_from(manifest).to_s, :to => path.relative_path_from(root).to_s
  end
end
