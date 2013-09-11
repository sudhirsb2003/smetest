class Product < ActiveRecord::Base
  attr_accessible :category_id, :name
  belongs_to :category
  
  
  def subscribed_to(category_id)
   subscribe = Subscription.find_by_category_id(category_id)
  end
  
end
