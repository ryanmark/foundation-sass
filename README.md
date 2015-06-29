# Foundation gem

A repackaging of [Foundation](http://foundation.zurb.com/) that works with Rails, Sprockets and Compass. No npm or bower required, just add it your Gemfile.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'foundation-sass',
    :git => 'https://github.com/ryanmark/foundation-sass.git'
```

And then execute:

    $ bundle

## Usage

### Rails, Middleman or Sprockets

To use all of foundation, include it in your scss and javascript:

In your scss:

```scss
@import "foundation";
```

In your javascript (if you're using sprockets or rails):

```javascript
//= require vendor/jquery
//= require foundation
$(document).foundation();
```

### Compass

If you have an existing Compass project:

1. Require `foundation-sass` in `config.rb`:

    ```ruby
    require 'foundation-sass'
    ```

2. Install Foundation with:

    ```console
    $ bundle exec compass install foundation -r foundation-sass
    ```

If you are creating a new Compass project, you can generate it with foundation-sass support:

```console
$ bundle exec compass create my-new-project -r foundation-sass --using foundation
```

or, alternatively, if you're not using a Gemfile for your dependencies:

```console
$ compass create my-new-project -r foundation-sass --using foundation
```

This will create a new Compass project with the following files in it:

* [app.scss](/templates/project/app.scss) - main project Sass file, imports Foundation and variables.
* [_settings.scss](/assets/stylesheets/foundation/_settings.scss) - all of Foundation variables, override them here.

Some foundation-sass mixins may conflict with the Compass ones.
If this happens, change the import order so that Compass mixins are loaded later.

## Contributing

1. Fork it ( https://github.com/ryanmark/foundation-sass/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
