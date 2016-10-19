class AccountPlatformsController < ApplicationController
    before_action :set_account_platform, only: [:show, :create, :destroy]

  def index
    # binding.pry
   @account_platforms = AccountPlatform.all
  end

  def new
    @account_platform = AccountPlatform.new
  end

  def show
  end

  def create
    # binding.pry
    @account_platform = AccountPlatform.new(account_platform_params)
      
      if @account_platform.save
        redirect_to account_platforms_path
        else
          redirect_to new_account_platform_path
      end
  end

  def destroy
    @account_platform.destroy
    redirect_to  account_platforms_path
  end

  def update
  end
private

def set_account_platform
    @account_platforms = AccountPlatform.find(params[:id])

end

def account_platform_params
  params.require(:account_platform).permit(:account_id, :platform_id)  
end
end
