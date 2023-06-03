class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin, except: [:show]
   
  def index
      @users = User.all
    end

    def show
      @user = current_user
    if @user.address.nil?
      address = Address.create(user_id: @user.id)
      address.save
      @user.address = address
    end
  
    @address = @user.address
    end
  end
  