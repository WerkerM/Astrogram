ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  [:controller, :view, :request].each do |type|
     config.include ::Rails::Controller::Testing::TestProcess, :type => type
     config.include ::Rails::Controller::Testing::TemplateAssertions, :type => type
     config.include ::Rails::Controller::Testing::Integration, :type => type
   end
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!
end
