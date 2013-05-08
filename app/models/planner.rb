class Planner < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :description, :photo, :website, :image1, :image2, :image3, :image4, :image5, :appointlet
  # attr_accessible :title, :body

  has_many :appointments
  has_many :customers, :through => :appointments

end
