# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Authentication validations', type: :request do
  describe 'signed in' do
    let(:user) { create(:user) }

    sign_in(:user)

    it 'respond with success' do
      get '/api/v1/auth/validate_token'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'signed out' do
    it 'respond with unauthorized' do
      get '/api/v1/auth/validate_token'
      expect(response).to have_http_status(:unauthorized)
    end
  end
end
