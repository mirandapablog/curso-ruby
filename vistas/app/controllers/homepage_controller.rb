class HomepageController < ApplicationController

  before_action :set_page_id

  def index
  end

  def aboutus
    @current_page = 'acercade'
    @page_id = false
  end

  def contactus
  end

  private

  def set_page_id
    @page_id = 'homepage'
  end

end
