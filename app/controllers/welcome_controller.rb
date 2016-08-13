class WelcomeController < ApplicationController
  def index
  end

  def upload
    render json: { size: params[:file].size }.to_json
  end
end
