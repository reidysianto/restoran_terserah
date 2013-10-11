class StaticPageController < ApplicationController
  def index
    
  end
  def create
    user = User.find_by_username(params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to root_path
    else
      flash.now[:error] = 'Invalid username/password combination'
      render 'index'
    end
  end
  
  def destroy
    sign_out
    redirect_to root_url
  end
  def about
    
  end
  def contact
    
  end
end
