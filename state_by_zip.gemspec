Gem::Specification.new do |s|
  s.name     = "state_by_zip"
  s.version  = "0.0.1"
  s.summary  = "Find US state by ZIP code"
  s.authors  = ["Mariusz Pruszyński"]
  s.email    = "mpruszynski@gmail.com"
  s.files    = %w[
    Gemfile
    Gemfile.lock
    README.md
    data/state_by_zip.yml
    lib/state_by_zip.rb
    spec/spec_helper.rb
    spec/state_by_zip_spec.rb
    state_by_zip.gemspec
  ]
  s.homepage = "https://github.com/snicky/state_by_zip"
  s.license  = "MIT"
  s.add_development_dependency 'rspec', '> 3'
end
