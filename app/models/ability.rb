class Ability
  include CanCan::Ability  

  def initialize(user)

    user ||= User.new # guest user (not logged in)

    if user.admin?      
      # only admin can access secretCode    
      can :index, SecretCode 
      can :generate, SecretCode    
    end
    
  end
end
