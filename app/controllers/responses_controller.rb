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
    if params[:sort] == "attendance"
      @responses = Response.joins(response_attendances: :attendance).order("attendances.name asc")
    else
      @responses = Response.order(params[:sort])
    end
    @day_one = @responses.joins(response_attendances: :attendance).where(attendances: { name: "Day One Only" })
    @both = @responses.joins(response_attendances: :attendance).where(attendances: { name: "Both Days" })
    @neither = @responses.joins(response_attendances: :attendance).where(attendances: { name: "Cannot Attend" })
    @accommodation = @responses.where(accommodation: true)
  end

  private

  def response_params
    params.require(:response).permit(:name, :diet, :accommodation, attendance_ids: [])
  end
end
