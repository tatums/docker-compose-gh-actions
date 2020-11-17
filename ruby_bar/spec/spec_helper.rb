require "bundler/setup"
require "ruby_bar"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.before(:suite) do
    suite_key = "test-suite-runner-#{ENV["RUNNER"]}"
    RubyBar.set(suite_key, ENV["RUNNER"])
    val = RubyBar.get(suite_key)
    puts "================= BEFORE #{val} ================="
  end

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
