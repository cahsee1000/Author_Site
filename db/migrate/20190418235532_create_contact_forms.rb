class CreateContactForms < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
