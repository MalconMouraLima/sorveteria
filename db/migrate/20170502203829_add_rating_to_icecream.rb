class AddRatingToIcecream < ActiveRecord::Migration[5.0]
  def change
    add_column :icecreams, :rating, :string
  end
end
