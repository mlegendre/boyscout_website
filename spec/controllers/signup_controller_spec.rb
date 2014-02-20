require 'spec_helper'

describe SignupController do

  describe "GET 'signup_index'" do
    it "returns http success" do
      get 'signup_index'
      expect(response).to be_success
    end
  end

end
