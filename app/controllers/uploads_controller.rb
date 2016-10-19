class UploadsController < ApplicationController
  def index
  
    @uploads = Upload.all
  end

  def new
   
    @upload = Upload.new
  end

  def create

    @upload = Upload.new(upload_params)

    if @upload.save
         
      redirect_to  uploads_path
    else 
      render 'new' 
      
    end
  end

  def destroy
    @upload.destroy
    redirect_to uploads_path
  end

  def show
  end

private
  def upload_params
    params.require(:upload).permit(:name, :attachment)
    
  end
  
end
