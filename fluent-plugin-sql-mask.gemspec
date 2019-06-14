lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name    = "fluent-plugin-sql-mask"
  spec.version = "0.1.0"
  spec.authors = ["Kazuki Sawada"]
  spec.email   = ["kazuki@6715.jp"]

  spec.summary       = %q{Fluentd filter plugin to mask sql literals}
  spec.description   = %q{This plugin allows you to mask sql literals which may be contain sensitive data.}
  spec.homepage      = "https://github.com/kaz/fluent-plugin-sql-mask"
  spec.license       = "Apache-2.0"

  spec.files = Dir["*.gemspec", "README.md", "LICENSE", "lib/**/*"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "test-unit", "~> 3.0"

  spec.add_runtime_dependency "fluentd", [">= 0.14.10", "< 2"]
  spec.add_runtime_dependency "ffi", "~> 1.11"
end
