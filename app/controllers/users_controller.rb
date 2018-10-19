class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users =User.paginate(:page => page)
  end

  private

  def page
    params[:page].to_i || 1
  end
end
