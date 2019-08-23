class PetsController < ApplicationController
  def index
    @pets = {"dog": "Henry"}
    json_response(@pets)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status
  end
end
