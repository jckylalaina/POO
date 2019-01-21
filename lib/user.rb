require 'pry'

class User
  attr_accessor :email, :name
  @@user_count = 0
  @@array = []

  def initialize(email_to_save)
  	@email = email_to_save
  	@@user_count = @@user_count + 1
    @@array << @email
  end
  
  def update_name
    @name = " "
  end 
  

  
  def self.count
    return @@user_count
  end

  def show_itself
    puts self
  end 

  def self.array
   return @@array 
  end  

  def self.find_by_email(email)

  end  
end  
