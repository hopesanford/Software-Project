class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :name
      t.string :hours
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
