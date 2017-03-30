source 'https://rubygems.org'

puppetversion = ENV.key?('PUPPET_VERSION') ? "= #{ENV['PUPPET_VERSION']}" : ['>= 3.3']

group :test do
  gem 'rspec-core',              :require => false
  gem 'puppetlabs_spec_helper',  :require => false
  gem 'simplecov',               :require => false
  gem 'puppet_facts',            :require => false
  gem 'metadata-json-lint',      :require => false
end

group :development do
  gem 'travis',          :require => false
  gem 'travis-lint',     :require => false
  gem 'guard-rake',      :require => false
  gem 'parallel_tests',  '< 2.10.0',  :require => false if RUBY_VERSION < '2.0.0'
  gem 'parallel_tests',  :require => false if RUBY_VERSION >= '2.0.0'
  gem 'puppet-strings',  :require => false, :git => 'https://github.com/puppetlabs/puppetlabs-strings.git'
  gem 'redcarpet',       :require => false
  gem 'json',            '1.8.3'
  gem 'json_pure',	 '1.8.3'
end

if facterversion = ENV['FACTER_GEM_VERSION']
  gem 'facter', facterversion, :require => false
else
  gem 'facter', :require => false
end

if puppetversion = ENV['PUPPET_GEM_VERSION']
  gem 'puppet', puppetversion, :require => false
else
  gem 'puppet', :require => false
end
