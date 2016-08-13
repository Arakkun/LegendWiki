class Integrategooglemaps < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :country_of_origin, :string
  end
end
