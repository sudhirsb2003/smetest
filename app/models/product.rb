class Product < ActiveRecord::Base
  attr_accessible :category_id, :name
  belongs_to :category

  def send_email_to_user(category_id)
    @subscribe = Subscription.find_all_by_category_id(category_id)
			@subscribe.each do |s|
 				UserMailer.delay.welcome_message(s.user)
			end
  end

  def subscribed_to(category_id)
   subscribe = Subscription.find_by_category_id(category_id)
  end

end
