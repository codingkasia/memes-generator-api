class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.string :data
      t.string :url
      t.string :page_url
      t.boolean :success
      t.integer :user_id
      t.integer :template_id
      t.integer :memeId
      t.string :username
      t.string :password
      t.string :text0
      t.string :text1
     
    

      t.timestamps
    end
  end
end
