# Xcassets Exporter

Export `xcassets` exclude `.imageset` directories and `Contents.json` from `Images.xcassets`.

### Input
```
Images.xcassets
|-TopScreen
| |-newButton.imageset
| | |-newButton.png
| | |-newButton@2x.png
| | |-newButton@3x.png
| | |-Contents.json
| |-contentView
| | |-header.imageset
| | | |-header.png
| | | |-header@2x.png
| | | |-header@3x.png
| | | |-Contents.json
```

### Output
```
Images.xcassets
|-TopScreen
| |-newButton.png
| |-newButton@2x.png
| |-newButton@3x.png
| |-contentView
| | |-header.png
| | |-header@2x.png
| | |-header@3x.png
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'xcassets_exporter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xcassets_exporter

## Usage

```
xcassets_exporter -i [Image.xcassets path] -o [Image directory]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yoonchulkoh/xcassets_exporter.

