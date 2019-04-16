class SessionsController < ApplicationController
  def new
  end
  
  def create 
    if !params[:name] || params[:name].empty?
      redirect_to contoller: 'sessions', action: 'new'  
    else 
      session[:name] = params[:name]
      redirect_to contoller: 'application', action: 'hello'
    end  
  end  
  
  def destroy 
    session.destroy :name
    redirect_to contoller: 'application', action: 'hello'
  end   
end
