class CreateBounenkai2015s < ActiveRecord::Migration
  def change
    create_table :bounenkai2015s do |t|
      t.boolean :open_first_box
      t.string :box_a_key
      t.string :box_b_key
      t.timestamps
    end
  end
end
