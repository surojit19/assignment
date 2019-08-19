class SecretCode < ApplicationRecord
  belongs_to :user, optional: true

  validates_presence_of     :code # required

 
  def self.generate_codes(length = 64)
    begin
      code = SecureRandom.urlsafe_base64 length-1
    end while SecretCode.exists?(:code => code)
    s = SecretCode.new
    s.code = code
    s.save    
  end

end  