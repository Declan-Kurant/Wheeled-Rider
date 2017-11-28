class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :tier_of_reply
      t.string :author
      t.date :time_posted

    end
  end
end
