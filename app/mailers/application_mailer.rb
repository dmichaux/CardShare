class ApplicationMailer < ActionMailer::Base
  
	add_template_helper(ApplicationHelper)

  default from: 'noreply@CardShare.com'
  layout 'mailer'
end
