class WelcomeController < ApplicationController
  before_action :to_dashboard
  layout :false

  def index
  end

  private

  def to_dashboard
    redirect_to(dashboard_path) unless !current_user.present?
  end
end
