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

Or install it yourself as:

    $ gem install foundation-sass

## Usage

To use all of foundation, include it in your scss and javascript:

```scss
@import "foundation";
```

```javascript
//= require jquery
//= require foundation
$(document).foundation();
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/foundation-sass/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
