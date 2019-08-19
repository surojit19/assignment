#
# Customization for restricting Registration with validations of secret code field
#

class UsersController < Devise::RegistrationsController

  after_action :create_secret_code_link, only: :create


  def create    
    if(!params[:secret_code].empty?)

      @sc = SecretCode.find_by code: params[:secret_code]
      if @sc.nil? or !@sc.user_id.nil?
        flash[:alert] = "Invalid Security Code!"
        redirect_to '/users/sign_up'  
      else        
        super()        
      end    

    else
      set_flash_message :alert, :secret_code_empty
      redirect_to '/users/sign_up'
    end  
  end

  def create_secret_code_link
    if !@user.nil?
      @sc.user_id=@user.id
      @sc.save
    end
  end

end