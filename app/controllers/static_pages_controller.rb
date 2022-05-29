class StaticPagesController < ApplicationController
  def dashboard
    @users = User.all
  end

  def landing_page
  end
end
