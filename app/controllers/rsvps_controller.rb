class RsvpsController < ApplicationController
  respond_to :json

  def index
    respond_with Rsvp.all
  end

  def show
    respond_with Rsvp.find(params[:id])
  end

  def create
    respond_with Rsvp.create(rsvp_params)
  end

  def update
    rsvp = Rsvp.find(params[:id])
    rsvp.update_attributes(rsvp_params)
    respond_with rsvp
  end

  def destroy
    respond_with Rsvp.find(params[:id]).destroy
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :email, :rsvp)
  end
end
