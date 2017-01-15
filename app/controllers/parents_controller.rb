class ParentsController < ApplicationController

  # GET /parents
  def index
    @parents = Parent.all
    render json: @parents
  end
end
