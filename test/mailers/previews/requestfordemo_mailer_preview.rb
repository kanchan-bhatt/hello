# Preview all emails at http://localhost:3000/rails/mailers/requestfordemo_mailer
class RequestfordemoMailerPreview < ActionMailer::Preview

def confirm_email_preview
		RequestfordemoMailer.confirm_email(Requestfordemo.last)
	end

end
