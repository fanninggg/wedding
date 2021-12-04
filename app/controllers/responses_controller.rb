class ResponsesController < ApplicationController
  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to new_response_path(message: "Thankyou for RSVP'ing!")
    else
      render :new
    end
  end

  def index
    if params[:sort]
      @responses = Response.order("#{params[:sort]} asc")
    else
      @responses = Response.order("name asc")
    end
    @day_one = @responses.where(attending: 1)
    @both = @responses.where(attending: 2)
    @neither = @responses.where(attending: 3)
    @saturday_accommodation = @responses.where(accommodation: 'Saturday Night').or(@responses.where(accommodation: 'Both'))
    @sunday_accommodation = @responses.where(accommodation: 'Sunday Night').or(@responses.where(accommodation: 'Both'))
  end

  private

  def response_params
    params.require(:response).permit(:name, :diet, :accommodation, :attending)
  end
end
