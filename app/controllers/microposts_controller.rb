class MicropostsController < ApplicationController

def index
	@microposts = Micropost.all
end

def new
	@micropost = Micropost.new	
end

def show
	
end

def create
	@micropost = Micropost.new(micropost_params)	
end


private
def micropost_params
	params.require(:micropost).permit(:content, :user_id)	
end
end
