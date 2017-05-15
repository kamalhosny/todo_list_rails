class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text :content, null:false
      t.boolean :done , default: false 
      t.timestamps
    end
  end
end
