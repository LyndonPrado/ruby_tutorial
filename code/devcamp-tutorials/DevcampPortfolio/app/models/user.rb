class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,:trackable, :validatable
	
   validates_presence_of :name

   def first_name 
   	if(self.name != nil)
   		self.name.split.first_name
   	else
   		puts "first name is nil!"
   	end
   end

   def last_name
   	if(self.name != nil)
   		self.name.split.last_name
   	else
		puts "first name is nil!"
   	end
   end
end

