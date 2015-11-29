class AddFirstOpenBoxNameToBounenkai2015 < ActiveRecord::Migration
  def change
    remove_column :bounenkai2015s, :open_first_box
    add_column :bounenkai2015s, :first_open_box_name, :string
  end
end
