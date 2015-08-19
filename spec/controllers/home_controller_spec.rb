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
      expect(response.body).to include ""
    end

    context "with valid attributes" do
      it "returns Fizz" do
        post :check, val: 3
        expect(response.body).to include 'Fizz'
      end

      it "returns Buzz" do
        post :check, val: 5
        expect(response.body).to include 'Buzz'
      end

      it "returns FizzBuzz" do
        post :check, val: 15
        expect(response.body).to include 'FizzBuzz'
      end

    end

    context "with in_valid attributes" do

      it 'should return 404' do
        post :check, val: 0.234
        expect(response.status).to eq(404)
      end

      it 'should return 404' do
        post :check, val: ''
        expect(response.status).to eq(404)
      end

      it 'should return 404' do
        post :check, val: 'five'
        expect(response.status).to eq(404)
      end

    end
  end

end
