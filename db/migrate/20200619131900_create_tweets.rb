class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :title
      t.string :publisher
      t.string :content

      t.timestamps
    end
  end
end
