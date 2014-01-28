require File.expand_path(File.dirname(__FILE__)+ '/../spec_helper')

describe "static page" do
  it "should have a header" do
     visit '/'
  end

end