class KidsController < ApplicationController

  # GET /kids
  def index
    @kids = Kid.all
    render json: @kids
  end
end
