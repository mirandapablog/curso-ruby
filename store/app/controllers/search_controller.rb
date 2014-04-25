class SearchController < ApplicationController
  def index
    @categories = nil
    if params[:q]
      q = '%' + params[:q] + '%'
      @categories = Category.where("name like ?", q).paginate(:page => params[:page])
    end

    #llamar_daily_motion
  end

  private

  def llamar_daily_motion
    @video = DailyMotion.get_video('x1n4zuw')
  end

end
