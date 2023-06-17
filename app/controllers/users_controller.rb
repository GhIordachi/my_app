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
    if @user.credit_card.nil?
      card = CreditCard.create(user_id: @user.id)
      card.save
      @user.credit_card = card
    end

    @address = @user.address
    @credit_card = @user.credit_card
  end
  end
  