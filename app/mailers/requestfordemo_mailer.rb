class RequestfordemoMailer < ApplicationMailer
default from: "mpsscholarlystats@gmail.com"

	def welcome_email(requestfordemo)
		binding.pry
	 @requestfordemo = requestfordemo
	  mail(to: @requestfordemo.email, subject: 'Welcome to My Awesome Site')
	end
end
