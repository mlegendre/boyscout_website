require 'spec_helper'

describe StaticPagesController do
  describe "GET index" do
    it "succeeds" do
      get :index
      expect(response.status).to eq(200)
    end
  end

end