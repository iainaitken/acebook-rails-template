require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /make_post" do
    it "returns http success" do
      get "/users/make_post"
      expect(response).to have_http_status(:success)
    end
  end

end
