class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.bigint :user
      t.integer :amount
      t.text :notes
      t.bigint :tags_id, array: true
      t.datetime :happened_at

      t.timestamps
    end
  end
end
