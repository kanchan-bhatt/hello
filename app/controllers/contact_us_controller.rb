class ContactUsController < ApplicationController
  before_action :set_contact_u, only: [:show, :edit, :update, :destroy]

  # GET /contact_us
  # GET /contact_us.json
  def index
    @contact_us = ContactU.all
  end

  # GET /contact_us/1
  # GET /contact_us/1.json
  def show
  end

  # GET /contact_us/new
  def new
    # binding.pry

    @contact_u = ContactU.new
  end

  # GET /contact_us/1/edit
  def edit
  end

  # POST /contact_us
  # POST /contact_us.json
  def create
    # binding.pry
    @contact_u = ContactU.new(contact_u_params)
    respond_to do |format|
      if @contact_u.save
       UserMailer.welcome_email(@contact_u).deliver
        binding.pry
        format.html { redirect_to users_path, notice: 'Contact u was successfully created.' }
        format.json { render :show, status: :created, location: @contact_u }
      else
        format.html { render :new }
        format.json { render json: @contact_u.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_us/1
  # PATCH/PUT /contact_us/1.json
  def update
    respond_to do |format|
      if @contact_u.update(contact_u_params)
        format.html { redirect_to @contact_u, notice: 'Contact u was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_u }
      else
        format.html { render :edit }
        format.json { render json: @contact_u.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_us/1
  # DELETE /contact_us/1.json
  def destroy
    @contact_u.destroy
    respond_to do |format|
      format.html { redirect_to contact_us_url, notice: 'Contact u was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_u
      @contact_u = ContactU.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_u_params
      # binding.pry
      params.require(:contactu).permit(:name, :email, :subject, :message)
    end
end
