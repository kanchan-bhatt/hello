class SessionsController < ApplicationController
  def new
    # binding.pry
  end

  def index
  end

  def create
  	 # binding.pry
  	@user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
    log_in @user
    redirect_to loginpage_index_path
    else
   # Create an error message.
   flash[:danger] = 'Invalid name/password combination' 
      render 'new'
    end
  end

  def destroy
  	 # binding.pry
    log_out
    redirect_to users_path
  end
end
