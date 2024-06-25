class PagesController < ApplicationController
 skip_before_action :authenticate_user!
  def index

  end

  def about
  end

  def home
   @contents = Content.all
  end
end
