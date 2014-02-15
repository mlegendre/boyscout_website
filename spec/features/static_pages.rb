require File.expand_path(File.dirname(__FILE__)+ '/../spec_helper')

describe "static page" do
  it "should have a header" do
    visit '/'
    page.has_title?("Home")
  end


  it "should go to the forms page" do
    visit '/forms'
    page.has_title?("Forms Page")

  end


end