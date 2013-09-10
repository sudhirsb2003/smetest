class Product < ActiveRecord::Base
  attr_accessible :category_id, :name
  belongs_to :category
  
  
  def subscribed?
   subscribe = Subscription.joins(:user).where(:user_id => current_user)
  end
  
end
