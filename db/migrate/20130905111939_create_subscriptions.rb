class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.belongs_to :user
      t.belongs_to :category
      t.datetime :subscribed_date
      t.timestamps
    end
  end
end
