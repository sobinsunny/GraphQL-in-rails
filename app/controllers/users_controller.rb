class UsersController < ApplicationController

  before_action :authenticate_user!
  respond_to :json


  def index
    @users = User.all
    respond_with(@users)
  end
  def show
  	user = User.find(params[:id])
  	respond_with(users)
  end

end
