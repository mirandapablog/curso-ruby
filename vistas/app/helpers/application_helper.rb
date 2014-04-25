module ApplicationHelper

  def navegacion
    render :partial => 'shared/navegacion'
  end

  def page_id
    @page_id ||= 'default'
  end

  def active(page, current_page = nil)
    page == current_page ? 'active' : nil
  end

end
