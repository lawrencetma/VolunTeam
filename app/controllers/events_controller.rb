class EventsController < ActionController::Base

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def delete
  end

  def event_params
    params.require(:event).permit(:name, :organization, :description, :date, :address, :contact_email, :contact_phone, :website, :event_picture, :creator)
  end

end