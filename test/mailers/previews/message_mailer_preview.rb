# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview
def new_message
	MessageMailer.new_message(@message)
end
def both 
	end
end
