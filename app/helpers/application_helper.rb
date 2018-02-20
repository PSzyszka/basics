module ApplicationHelper
  def title_helper(controller_name)
    controller_name.humanize
  end
end
