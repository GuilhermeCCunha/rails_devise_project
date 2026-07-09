module ApplicationHelper
  def nav_link_to(text, path)
    is_active = current_page?(path)
    css_class = "nav-link #{'active' if is_active}"
    aria_attrs = is_active ? { current: 'page' } : {}
    link_to text, path, class: css_class, aria: aria_attrs
  end
end
