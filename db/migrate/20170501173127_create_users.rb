class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

    	t.column "first_name", :string, :limit => 40
    	t.string "last_name", :limit => 80
    	t.string "email", :default => "", :null => false
    	t.string "password", :limit => 80 

      t.timestamps
      #t.datetime "created_at"
      #t.datatime "updated_at"
    end
  end
end
