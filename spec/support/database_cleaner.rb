Capybara.javascript_driver = :webkit

RSpec.configure do |config|
  config.use_transactional_fixtures = false

  # Use transactions by default
  config.before :each do
    DatabaseCleaner.strategy = :transaction
  end

  # Switch to truncation for js tests but only clean used tables
  config.before :each, js: true do
    DatabaseCleaner.strategy = :truncation, { precount: true }
  end

  config.before :each do
    DatabaseCleaner.start
  end

  config.after :each do
    DatabaseCleaner.clean
  end
end