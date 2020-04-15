module ApplicationHelper
  def full_title(page_title = "")
    base = "Kilometers per truck"
    page_title.empty? base : page_title + " | " + base
end
