class AddColumnToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :name, :string
    add_column :doctors, :education, :string
    add_column :doctors, :practice, :string
    add_column :doctors, :specialty, :string
    add_column :doctors, :img_url, :string


  end
end
