# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

	def confirm_email_preview
		UserMailer.confirm_email(ContactU.last)
	end

end
