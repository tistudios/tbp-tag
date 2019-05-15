class CreatePosts < ActiveRecord::Migration[5.2]
  def change
	create_table :posts, id: :uuid do |t|
	  t.string :tags, array: true, default: []
      t.string :title
      t.boolean :hosting
      t.string :background
      t.integer :age
      t.boolean :can_travel
      t.string :category
      t.string :location
      t.datetime :posted
      t.string :body_type
      t.text :content
      t.uuid :user_id

      t.timestamps
    end
  end
end
