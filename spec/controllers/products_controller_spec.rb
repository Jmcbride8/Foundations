require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "products#index action" do
    it "should launch and sign into the products page correctly" do
      user = FactoryBot.create(:user)
      sign_in user
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  
end
