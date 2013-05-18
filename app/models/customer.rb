class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :wedding_date, :budget, :number_of_guests, :wedding_city, :booked_venue, :booked_catering, :booked_photographer, :booked_florist, :booked_entertainment, :more_info
  # attr_accessible :title, :body

  has_and_belongs_to_many :venues

  has_many :loomelements
  has_many :elements, :through => :loomelements

  has_many :appointments
  has_many :planners, :through => :appointments

end
