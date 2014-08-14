class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :summary
      t.string :author
      t.string :picture
      t.string :contributor
      t.integer :isbn
      t.integer :rating
      t.boolean :following
      t.boolean :approved
      t.boolean :active

      t.timestamps
    end
  end
end
