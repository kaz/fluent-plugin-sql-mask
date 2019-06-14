# fluent-plugin-sql-mask

[Fluentd](https://fluentd.org/) filter plugin to mask sql literals.

This plugin allows to masking sql literals which may be contain sensitive data.

## Installation

### RubyGems

```
$ gem install fluent-plugin-sql-mask
```

### Bundler

Add following line to your Gemfile:

```ruby
gem "fluent-plugin-sql-mask"
```

And then execute:

```
$ bundle
```

## Configuration

You can generate configuration template:

```
$ fluent-plugin-config-format filter sql-mask
```

You can copy and paste generated documents here.

## Copyright

* Copyright(c) 2019- Kazuki Sawada
* License
  * Apache License, Version 2.0
