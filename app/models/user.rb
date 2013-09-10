class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name ,:subscriptions_attributes
  # attr_accessible :title, :body

  has_many :subscriptions
  #has_many :categories, through: :subscriptions
  accepts_nested_attributes_for :subscriptions #, :reject_if => :all_blank
  
  
  def full_name 
   "#{self.first_name}" " " "#{self.last_name}"
  end
  
end
