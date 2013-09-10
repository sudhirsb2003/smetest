class Subscription < ActiveRecord::Base
  attr_accessible :category_id, :user_id, :subscribed_date
  belongs_to :user
  #belongs_to :category
end
