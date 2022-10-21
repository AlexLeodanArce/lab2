class AddColumnsToTweets < ActiveRecord::Migration[7.0]
  def change
    add_reference :tweets, :monster, null: false, foreign_key: true
    add_column :tweets, :private, :boolean
    add_column :tweets, :birthdate, :date
  end
end
