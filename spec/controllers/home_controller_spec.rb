require 'rails_helper'


RSpec.describe HomeController, type: :controller do

  describe "home#index action" do
    it "should launch the main page correctly" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  describe "home#about action" do
    it "should launch the about us page correctly" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end
  describe "home#methodology action" do
    it "should launch the methodology page correctly" do
      get :methodology
      expect(response).to have_http_status(:success)
    end
  end

end
