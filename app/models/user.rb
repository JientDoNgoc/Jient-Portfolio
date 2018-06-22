class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates_presence_of :fullname
  
  def first_name
    self.fullname.split.first
  end
         
  def last_name
    self.fullname.split.last
  end
end
