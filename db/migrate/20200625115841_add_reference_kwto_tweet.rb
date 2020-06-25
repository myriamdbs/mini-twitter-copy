class AddReferenceKwtoTweet < ActiveRecord::Migration[6.0]
  def change
    add_reference :tweets, :keyword, foreign_key: true
  end
end
