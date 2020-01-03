require 'rails_helper'


# NEED TO CREATE RSPEC TESTS TO ALLOW THIS APP TO WORK EFFECTIVELY

RSpec.describe ModelsController, type: :controller do

  describe "models#index action" do
    it "should launch the models page correctly" do
      user = FactoryBot.create(:user)
      sign_in user
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
