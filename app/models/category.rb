class Category < ActiveRecord::Base
  attr_accessible :name, :products_attributes
  has_many :products
  has_many :subscriptions
  has_many :users, through: :subscriptions

end
