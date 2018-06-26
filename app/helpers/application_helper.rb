module ApplicationHelper

  def format_time(time)
    time.localtime.strftime('%A, %-m/%-d/%Y %I:%M %p')
  end

	# Helpers for Devise forms
  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
