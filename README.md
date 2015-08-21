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

type.valid?(100)      # => true
type.valid?(4)        # => false
type.valid?('foobar') # => false

type.to_h             # => { min: 42, max: nil, type: :number }
```

## Security

As a basic form of security __Taipu__ provides a set of SHA512 checksums for
every Gem release.  These checksums can be found in the `checksum/` directory.
Although these checksums do not prevent malicious users from tampering with a
built Gem they can be used for basic integrity verification purposes.

The checksum of a file can be checked using the `sha512sum` command.  For
example:

    $ sha512sum pkg/taipu-0.0.1.gem
    813cfbcff03d6022a001e4b108d706d17c705afffaeb478f082355533acb324b1983d88a80a71b31bb9de74931073cab07b329549ac2c48469733a4edb187846  pkg/taipu-0.0.1.gem

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
