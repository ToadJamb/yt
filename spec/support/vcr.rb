require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/vcr_cassettes'
  config.hook_into :webmock
  config.configure_rspec_metadata!
  #[
  #].each do |env_var|
  #  config.filter_sensitive_data("<#{env_var}>") { ENV[env_var] }
  #end
end
