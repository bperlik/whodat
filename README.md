# Whodat
Instead of using a complex authentication for developement or
 a simple Rails project, I built a simple authentication on a
 Rails engine using bcrypt for encryption

## Usage

add inside app config/routes.rb file:
```
mount EngineName: : Engine => “/enginename”
```

be sure to rake the engine migration over to the app and then
rake the the app migration
```
rake engineName:install:migrate
rake db:migrate
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'whodat'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install whodat
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
