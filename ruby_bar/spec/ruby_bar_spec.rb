RSpec.describe RubyBar do
  it "has a version number" do
    expect(RubyBar::VERSION).not_to be nil
  end

  it "can redis" do
    RubyBar.set("a", "b")
    value = RubyBar.get("a")
    expect(value).to eq("b")
  end
end
