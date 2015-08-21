# Taipu

[![Build Status](https://travis-ci.org/cyril/taipu.rb.svg?branch=master)][travis]
[![Gem Version](https://badge.fury.io/rb/taipu.svg)][gem]
[![Inline docs](http://inch-ci.org/github/cyril/taipu.rb.svg?branch=master)][inchpages]
[![Documentation](http://img.shields.io/:yard-docs-38c800.svg)][rubydoc]

> Collections of types for Ruby.

## Contact

* Home page: https://github.com/cyril/taipu.rb
* Bugs/issues: https://github.com/cyril/taipu.rb/issues
* Support: https://stackoverflow.com/questions/tagged/taipu

## Rubies

* [MRI](https://www.ruby-lang.org/)
* [Rubinius](http://rubini.us/)
* [JRuby](http://jruby.org/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'taipu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install taipu

## Usage

```ruby
type = Taipu::Number.new(min: 42)
type.to_h # => { min: 42, max: nil, type: :number }
```

## Versioning

__Taipu__ follows [Semantic Versioning 2.0](http://semver.org/).

## Contributing

1. [Fork it](https://github.com/cyril/taipu.rb/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

See `LICENSE.md` file.

[gem]: https://rubygems.org/gems/taipu
[travis]: https://travis-ci.org/cyril/taipu.rb
[inchpages]: http://inch-ci.org/github/cyril/taipu.rb/
[rubydoc]: http://rubydoc.info/gems/taipu/frames
