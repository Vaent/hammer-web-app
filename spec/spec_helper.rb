RSpec.configure do |config|
  ENV['RACK_ENV'] = 'test'
  require_relative '../app.rb'
  require 'features/web_helpers.rb'
  require 'capybara'
  require 'capybara/rspec'
  require 'rspec'
  Capybara.app = App

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
