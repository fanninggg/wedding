class ResponsesController < ApplicationController
  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to root_path, notice: "Thankyou for RSVP'ing!"
    else
      render :new
    end
  end

  def index
    if params[:password][:password] == "mybrotheristhebest!"
      @responses = Response.all
    else
      @responses = []
    end
  end

  private

  def response_params
    params.require(:response).permit(:name, :attending, :diet)
  end
end
