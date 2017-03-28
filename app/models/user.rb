class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :comments
  
  validates :name,
        presence: true,
        uniqueness: true
    
  validates :number,
        presence: true,
        uniqueness: true,
        numericality: { only_integer:true, greater_than_or_equal_to:20100000} 


end
