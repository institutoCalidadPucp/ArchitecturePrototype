class AddUserToLaboratory < ActiveRecord::Migration[5.0]
  def change
  	add_reference :users, :laboratory, index: true
  end
end
