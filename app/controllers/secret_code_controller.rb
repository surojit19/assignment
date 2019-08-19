require 'application_controller.rb'

class SecretCodeController < ApplicationController  
 
  before_action :secret_code_auth

  
  def secret_code_auth
    unless can? action_name.to_sym, SecretCode    
      flash[:alert] = "Invalid access!! Please login by admin!"
      redirect_to '/' 
    end  
  end

  
  def index 
    @scodes = SecretCode.all.order('id desc')
  end  

  def generate

    records = params[:records].to_i

    Array(1..records).each{|rec|      
      SecretCode.generate_codes(4)
    }
    redirect_to "/secret_code"
  end

end