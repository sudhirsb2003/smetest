class Category < ActiveRecord::Base
  attr_accessible :name, :products_attributes
  has_many :products, :dependent => :destroy
  has_many :subscriptions, :dependent => :destroy
  has_many :users, through: :subscriptions
end
