class MessagesController < ApplicationController
  def new
    binding.pry
    @message = Message.new
  end

  def create
    binding.pry
    @message = Message.new(message_params)
    
    if @message.save
      binding.pry
      if @message.send?
      MessageMailer.both(@message,current_user).deliver 
    else
      MessageMailer.single(@message).deliver
    end
        flash[:notice]= "Your messages has been sent."
        redirect_to cont_path
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(:subject, :query, :msg, :send)
  end
end
