class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.boolean :toxic, default: false
      
      t.integer :article_id
      #t.references :article
      
      t.timestamps
    end
    
    add_index :comments, :article_id
  end
end
