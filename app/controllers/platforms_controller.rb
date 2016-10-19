class PlatformsController < ApplicationController
  def index
    binding.pry
    @platforms = Platform.all
  end

  def new
    binding.pry
    @platform = Platform.new
  end

  def create
     binding.pry
    @platform = Platform.new(platform_params)
    if @platform.save
      redirect_to platforms_path
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    binding.pry
    @platform.destroy
    redirect_to platforms_path
  end

  def update
  end
  
private
  def platform_params
    params.require(:platforms).permit(:name, :created_by, :updated_by)  
  end
end
