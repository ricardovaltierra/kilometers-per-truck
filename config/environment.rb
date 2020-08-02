# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Remove field_with_errors wrapper
ActionView::Base.field_error_proc = proc do |html_tag, _instance|
  html_tag.html_safe
end
