require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  controller do
    def test_record_not_found
      raise ActiveRecord::RecordNotFound
    end

    def test_parameter_missing
      raise ActionController::ParameterMissing, :test
    end

    def test_invalid_auth_token
      raise ActionController::InvalidAuthenticityToken
    end
  end

  before :each do
    routes.draw do
      get "test_record_not_found" => "anonymous#test_record_not_found"
      get "test_parameter_missing" => "anonymous#test_parameter_missing"
      get "test_invalid_auth_token" => "anonymous#test_invalid_auth_token"
    end
  end


  it "rescues record not found with 302" do
    get :test_record_not_found
    expect(response).to have_http_status(302)
  end

  it "rescues parameter missing with 302" do
    get :test_parameter_missing
    expect(response).to have_http_status(302)
  end

  it "rescues invalid auth token with 302" do
    get :test_invalid_auth_token
    expect(response).to have_http_status(302)
  end


end