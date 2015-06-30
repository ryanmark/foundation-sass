# Foundation gem

A repackaging of [Foundation](http://foundation.zurb.com/) that works with Rails, Sprockets and Compass. No npm or bower required, just add it your Gemfile.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'foundation-sass',
    :git => 'https://github.com/ryanmark/foundation-sass.git'
```

And then execute:

```bash
$ bundle
```

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

## Customization

You can configure foundation via scss variables. Make sure you defined your variables before you import foundation or any of it's components. [Check out the list of settings](https://github.com/ryanmark/foundation-sass/blob/master/assets/stylesheets/foundation/_settings.scss).

### Components

If you don't want to use all of foundation, you can choose components to load. Below are example files for sass and sprockets that load all components.

```scss
@import 'foundation/components/grid';
@import 'foundation/components/accordion';
@import 'foundation/components/alert-boxes';
@import 'foundation/components/block-grid';
@import 'foundation/components/breadcrumbs';
@import 'foundation/components/button-groups';
@import 'foundation/components/buttons';
@import 'foundation/components/clearing';
@import 'foundation/components/dropdown';
@import 'foundation/components/dropdown-buttons';
@import 'foundation/components/flex-video';
@import 'foundation/components/forms';
@import 'foundation/components/icon-bar';
@import 'foundation/components/inline-lists';
@import 'foundation/components/joyride';
@import 'foundation/components/keystrokes';
@import 'foundation/components/labels';
@import 'foundation/components/magellan';
@import 'foundation/components/orbit';
@import 'foundation/components/pagination';
@import 'foundation/components/panels';
@import 'foundation/components/pricing-tables';
@import 'foundation/components/progress-bars';
@import 'foundation/components/range-slider';
@import 'foundation/components/reveal';
@import 'foundation/components/side-nav';
@import 'foundation/components/split-buttons';
@import 'foundation/components/sub-nav';
@import 'foundation/components/switches';
@import 'foundation/components/tables';
@import 'foundation/components/tabs';
@import 'foundation/components/thumbs';
@import 'foundation/components/tooltips';
@import 'foundation/components/top-bar';
@import 'foundation/components/type';
@import 'foundation/components/offcanvas';
@import 'foundation/components/visibility';
```

```javascript
//= require foundation/foundation
//= require foundation/foundation.abide
//= require foundation/foundation.accordion
//= require foundation/foundation.alert
//= require foundation/foundation.clearing
//= require foundation/foundation.dropdown
//= require foundation/foundation.equalizer
//= require foundation/foundation.interchange
//= require foundation/foundation.joyride
//= require foundation/foundation.magellan
//= require foundation/foundation.offcanvas
//= require foundation/foundation.orbit
//= require foundation/foundation.reveal
//= require foundation/foundation.slider
//= require foundation/foundation.tab
//= require foundation/foundation.tooltip
//= require foundation/foundation.topbar
$(document).foundation();
```

## Contributing

1. Fork it ( https://github.com/ryanmark/foundation-sass/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
