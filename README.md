# Bijint

[![Build Status](https://travis-ci.org/funnythingz/bijint.svg)](https://travis-ci.org/funnythingz/bijint)

You fall in love for one minute.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bijint'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bijint

## Usage

### now

```sh
% bijint
http://www.bijint.com/assets/pict/tokyo/pc/2357.jpg
```

### random

```sh
% bijint random
http://www.bijint.com/assets/pict/tokyo/pc/0003.jpg
```

### area

```sh
% bijint area hokkaido
http://www.bijint.com/assets/pict/hokkaido/pc/2357.jpg
```

### area random

```sh
% bijint area_random hokkaido
http://www.bijint.com/assets/pict/hokkaido/pc/0909.jpg
```

### markdown

```sh
% bijint md
[![bijint](http://www.bijint.com/assets/pict/tokyo/pc/2357.jpg)](http://www.bijint.com/assets/pict/tokyo/pc/2357.jpg)
```

### markdown random

```sh
% bijint md_random
[![bijint](http://www.bijint.com/assets/pict/tokyo/pc/0025.jpg)](http://www.bijint.com/assets/pict/tokyo/pc/0025.jpg)
```

### markdown area

```sh
% bijint md_area hokkaido
[![bijint](http://www.bijint.com/assets/pict/hokkaido/pc/0105.jpg)](http://www.bijint.com/assets/pict/hokkaido/pc/0105.jpg)
```

### markdown area random

```sh
% bijint md_area_random hokkaido
[![bijint](http://www.bijint.com/assets/pict/hokkaido/pc/1837.jpg)](http://www.bijint.com/assets/pict/hokkaido/pc/1837.jpg)

### list

```sh
% bijint list
```

## Contributing

1. Fork it ( https://github.com/funnythingz/bijint/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
