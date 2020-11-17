RSpec.describe RubyBar do
  it "has a version number" do
    expect(RubyBar::VERSION).not_to be nil
  end

  it "can redis" do
    puts `echo HOST: $HOSTNAME`
    key = "test-runner-#{ENV["RUNNER"]}"
    puts "key: #{key}"

    puts "keys: #{RubyBar.all_keys.join(", ")}"
    RubyBar.set(key, "b")
    value = RubyBar.get(key)
    expect(value).to eq("b")
  end
end
