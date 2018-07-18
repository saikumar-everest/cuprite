lib = File.expand_path("lib", __dir__)
$:.unshift lib unless $:.include?(lib)

require "capybara/cuprite/version"

Gem::Specification.new do |s|
  s.name          = "cuprite"
  s.version       = Capybara::Cuprite::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Dmitry Vorotilin"]
  s.email         = ["d.vorotilin@gmail.com"]
  s.homepage      = "https://github.com/machinio/cuprite"
  s.summary       = "Headless Chrome driver for Capybara"
  s.description   = "Culprite is a driver for Capybara that allows you to" \
                    "run your tests on a headless Chrome browser"
  s.license       = "MIT"
  s.require_paths = ["lib/capybara"]
  s.files         = Dir["{lib}/**/*"]

  s.add_runtime_dependency "capybara",         ">= 2.1", "< 4"
  s.add_runtime_dependency "websocket-driver", "~> 0.7"
  s.add_runtime_dependency "cliver",           "~> 0.3"

  s.add_development_dependency "image_size", "~> 2.0"
  s.add_development_dependency "pdf-reader", "~> 2.1"
  s.add_development_dependency "rake",       "~> 12.3"
  s.add_development_dependency "rspec",      "~> 3.7"
  s.add_development_dependency "sinatra",    "~> 2.0"
  s.add_development_dependency "launchy",    "~> 2.4"
  s.add_development_dependency "byebug",     "~> 10.0"
end
