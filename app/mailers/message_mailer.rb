class MessageMailer < ApplicationMailer
	default from: "mps@gmail.com"
	include SessionsHelper
	binding.pry
	def single(message)
		@message = message
		@url  = 'http://www.google.com'
		mail to: "bhattkanchan123@gmail.com"
		mail subject: " #{message.subject}"
	end


	def both(message, user)
		@message = message
		@user = user
		binding.pry
		@url  = 'http://www.google.com'
		mail to: "bhattkanchan123@gmail.com"
		mail cc: "nidhi.wizard@gmail.com"
		mail subject: " #{message.subject}"
		#mail subject: "delivery to both parties"
	end


	def receive(email)
    page = Page.find_by(address: email.to)
    page.emails.create(
      subject: email.subject,
      body: email.body
    )
end
end
