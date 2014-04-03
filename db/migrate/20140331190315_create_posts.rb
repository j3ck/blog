class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :null => false, :default => ""
      t.string :body,  :null => false, :default => ""

      t.timestamps
    end
  end
end
