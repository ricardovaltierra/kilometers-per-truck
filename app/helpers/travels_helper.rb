module TravelsHelper
  def total_kilometers
    if session[:official] == 'true'
      Travel.get_all_official(current_user).sum(:kilometers)      
    else
      Travel.get_all_unofficial(current_user).sum(:kilometers)
    end
  end

  def travel_city(travel)
    if !travel.group_id.nil?
      return "Destiny: #{travel.group.name}"
    else
      return "Author: #{travel.author.name}"
    end
  end
end
