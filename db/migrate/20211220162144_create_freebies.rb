class CreateFreebies < ActiveRecord::Migration[6.1]
    def change
        create_table :freebies do |t|
            t.string :item_name
            t.integer :value
            t.integer :campany_id
            t.integer :dev_id
        end
        
    end
end
