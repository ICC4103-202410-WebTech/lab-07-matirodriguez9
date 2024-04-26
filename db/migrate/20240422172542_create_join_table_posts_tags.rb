class CreateJoinTablePostsTags < ActiveRecord::Migration[7.1]
  def change
    create_table :posts_tags, id: false do |t|
      t.references :post, foreign_key: true
      t.references :tag, foreign_key: true
    end
    add_index :posts_tags, [:post_id, :tag_id]
    add_index :posts_tags, [:tag_id, :post_id]
  end
end
