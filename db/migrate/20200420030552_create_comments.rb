class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :post, index: true
      t.string :author
      t.text :comment

      t.timestamps
    end
  end
end
