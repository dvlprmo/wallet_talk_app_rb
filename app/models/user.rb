class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 # has_many :posters
  #has_many :posts
 # has_many :notes
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
