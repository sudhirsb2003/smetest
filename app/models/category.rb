class Category < ActiveRecord::Base
  attr_accessible :name, :products_attributes
  has_many :products
  #accepts_nested_attributes_for :products, reject_if: proc { |attributes| attributes['name'].blank? }
  #belongs_to :user
  #belongs_to :subscription
end
