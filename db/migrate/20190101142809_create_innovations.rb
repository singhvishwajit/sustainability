class CreateInnovations < ActiveRecord::Migration[5.2]
  def change
    create_table :innovations do |t|
      t.string :innovation_name
      t.string :sector
      t.text :innovation_description
      t.string :organization
      t.text :organization_description
      t.string :organization_type
      t.string :website
      t.string :strategy
      t.string :region
      t.string :country
      t.string :city
      t.string :address
      t.string :linkedin
      t.string :twitter
      t.string :facebook
      t.string :instagram
      t.string :email
      t.string :phone
      t.string :location

      t.timestamps
    end
  end
end
