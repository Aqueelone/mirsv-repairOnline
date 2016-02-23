module ApplicationHelper
def is_active(controller, action)
  params[:action] == action && params[:controller] == controller
end

def nav_link_to(name, controller, action)
  el_class = is_active(controller, action) ? 'active' : ''
  link_to name, {:controller => '/' + controller, :action => action}, :class => [el_class, controller, action]
end
end