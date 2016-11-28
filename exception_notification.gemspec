Gem::Specification.new do |s|
  s.name = 'exception_notification'
  s.version = '4.1.1'
  s.authors = ["Jamis Buck", "Josh Peek"]
  s.date = %q{2015-06-09}
  s.summary = "Exception notification for Rails apps"
  s.homepage = "http://smartinez87.github.com/exception_notification"
  s.email = "smartinez87@gmail.com"
  s.license = "MIT"

  s.required_ruby_version     = '>= 2.0'
  s.required_rubygems_version = '>= 1.8.11'

  s.files = `git ls-files`.split("\n")
  s.files -= `git ls-files -- .??*`.split("\n")
  s.test_files = `git ls-files -- test`.split("\n")
  s.require_path = 'lib'

  s.add_dependency("actionmailer", "~> 5.0")
  s.add_dependency("activesupport", "~> 5.0")

  s.add_development_dependency "rails", "~> 5.0"
  # Sidekiq 3.2.2 does not support Ruby 1.9. 
  s.add_development_dependency "sidekiq", "~> 3.5.1"
end
