# frozen_string_literal: true

require_relative 'spec_helper'
require_relative 'rails_helper'

RSpec.describe CalcController, type: :controller do
  describe 'GET input' do
    context 'check input page' do
      it 'has a 200 status code' do
        get :input
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'check CalcController' do
    context '10' do
      it 'returns {"1"=>"1", "3"=>"11", "5"=>"101", "7"=>"111", "9"=>"1001"}' do
        expect(CalcController.get_palindromes(10)[0]).to eq({"1"=>"1", "3"=>"11", "5"=>"101", "7"=>"111", "9"=>"1001"})
      end
    end
  end
end
