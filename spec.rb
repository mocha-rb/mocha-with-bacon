require "bundler/setup"
require "bacon"
require "mocha-on-bacon"

describe "mock" do
  it "foo" do
    o = mock
    o.expects(:foo)
  end
end
