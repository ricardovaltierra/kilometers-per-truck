module TravelsHelper
  def total_kilometers
    Travel.sum(:kilometers)
  end
end
