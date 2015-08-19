require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #check" do
    it "returns empty string" do
      post :check, val: 1
      expect(response.body).to eql ""
    end

    context "with valid attributes" do
      it "returns Fizz" do
        post :check, val: 3
        expect(response.body).to eql 'Fizz'
      end

      it "returns Buzz" do
        post :check, val: 5
        expect(response.body).to eql 'Buzz'
      end

      it "returns FizzBuzz" do
        post :check, val: 15
        expect(response.body).to eql 'FizzBuzz'
      end

    end

    context "with in_valid attributes" do

    end
  end

end
