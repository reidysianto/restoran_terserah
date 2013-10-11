module ApplicationHelper
  def nav_active_class(path)
    if request.path == path
      "active"
    else
      ""
    end
  end

end
