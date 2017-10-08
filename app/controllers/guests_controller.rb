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

private
  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :email, :attending, :dietary_restrictions, :comments)
  end
end
