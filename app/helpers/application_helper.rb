module ApplicationHelper
  def full_title(page_title = '')
    base = 'Trucking'
    page_title.empty? ? base : page_title + ' | ' + base
  end
end
