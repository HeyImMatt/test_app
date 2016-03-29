module ApplicationHelper

#Found the following to make the navbar recognize which page is active:
#http://stackoverflow.com/questions/17481812/dynamically-add-active-class-to-bootstrap-li-in-rails

  def is_active?(link_path)
    current_page?(link_path) ? "active" : ""
  end

end
