class AddAddressAndMajorToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :address, :string
    add_column :students, :major, :string
  end
end
