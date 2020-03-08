class ResponsesController < ApplicationController
  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @responses = Responses.all
  end

  private

  def response_params
    params.require(:response).permit(:name, :guests, :attending, :message)
  end
end
