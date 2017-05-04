class CreateSections < ActiveRecord::Migration[5.0]
  def up
    create_table :sections do |t|
    	t.string "name"
    	t.integer "position"
    	t.boolean "visible", :default => true
    	t.string "content_type"
    	t.text "content"
      t.timestamps
    end
  end

  def down
  	drop_table :sections
  end
end
