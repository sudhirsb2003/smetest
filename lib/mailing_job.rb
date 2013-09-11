class MailingJob < Struct.new(:user_id)
  def perform
    user = User.find(user_id)
    user.send_later(:deliver)
    raise "Failed!"
  end
end  