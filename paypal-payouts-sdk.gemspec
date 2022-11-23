
$LOAD_PATH.unshift(::File.join(::File.dirname(__FILE__), "lib"))
require 'core/version'

Gem::Specification.new do |spec|
  spec.name        = 'paypal-payouts-sdk'
  spec.version     = '1.0.3'
  spec.summary     = "This repository contains PayPal's Ruby SDK for Payouts REST API"
  spec.description = "This repository contains PayPal's Ruby SDK for Payouts REST API"
  spec.authors     = ["http://developer.paypal.com"]
  spec.email       = 'dl-paypal-payouts-sdk@paypal.com'
  spec.homepage    = 'https://github.com/paypal/Payouts-Ruby-SDK'
  spec.license     = 'https://github.com/paypal/Payouts-Ruby-SDK/blob/master/LICENSE'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'paypalhttp', '~> 2.0.1'

  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'webmock'
end
