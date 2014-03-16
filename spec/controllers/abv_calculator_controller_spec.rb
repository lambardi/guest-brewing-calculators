require 'spec_helper'

describe AbvCalculatorController do
  describe 'GET index' do
    it 'should return success status' do
      get :index
      expect(response).to be_success
    end
    
    it 'should render the view' do
      get :index
      response.should render_template :index
    end
  end
  
  describe 'POST calculate' do
    let (:abv_params) do
      {og: 1.01, fg: 1.05}
    end
    
    it 'should return success status' do
      post :calculate, abv: abv_params
      expect(response).to be_success
    end
    
    it 'should render the view' do
      post :calculate, abv: abv_params
      response.should render_template :calculate
    end
  end
end
