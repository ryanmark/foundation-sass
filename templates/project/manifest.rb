description 'Foundation for Sass'

manifest = Pathname.new(File.dirname(__FILE__))
assets   = File.expand_path('../../assets', manifest)

# Stylesheet importing foundation
stylesheet 'app.scss'

# Foundation variable overrides file
stylesheet File.join(assets, 'stylesheets', 'foundation', '_settings.scss'), :to => '_settings.scss'

# Copy JS and fonts
root = Pathname.new(manifest).join('js')
Dir.glob root.join('**', '*.*') do |path|
  path = Pathname.new(path)
  javascript path.relative_path_from(manifest).to_s, :to => path.relative_path_from(root).to_s
end
