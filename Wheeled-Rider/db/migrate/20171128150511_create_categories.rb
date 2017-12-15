class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :author
      t.integer :num_replies
      t.date :last_reply
      t.references :vehicle, index: true, foreign_key: true
    end
  end
end

# good job using the foreign_key constraint however, you do not need to specify index: true as t.references will automatically add this constraint
# you would want to specify it if you used t.integer 
