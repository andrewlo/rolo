class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def create
    @guest = Guest.new(guest_params)

    if @guest.save
      redirect_to @guest
    else
      render 'new'
    end
  end

  def update
    @guest = Guest.find(params[:id])

    if @guest.update(guest_params)
      redirect_to @guest
    else
      render 'edit'
    end
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy

    redirect_to guests_path
  end

  def invite
    @guest = Guest.find(params[:id])
    GuestMailer.invite_email(@guest).deliver_now

    redirect_to guests_path
  end

  def rsvp
    @guest = Guest.find(params[:id])
  end

  def rsvp_update
    @guest = Guest.find(params[:id])

    if @guest.update(guest_params)
      flash[:notice] = "RSVP successful"
      redirect_to rsvp_guest_path(@guest)
    else
      render 'rsvp'
    end
  end

private
  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :email, :attending, :dietary_restrictions, :comments)
  end
end
