class PurposesController < ApplicationController
  def index
    @purposes = Purpose.where(user_id: current_user.id)
  end
  
  def new
    @purpose = Purpose.new
  end
  
  def create
    user = current_user
    @purpose = Purpose.new(user_purpose: params[:purpose][:user_purpose],
                           user_id: user.id)
    if @purpose.save
      
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def destroy
    purpose = Purpose.find(params[:id])
    purpose.destroy
    redirect_to root_path
  end
end