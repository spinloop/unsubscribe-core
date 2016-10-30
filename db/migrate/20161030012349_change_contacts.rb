class ChangeContacts < ActiveRecord::Migration
  def change
    change_column_null :contacts, :first_name, true
    change_column_null :contacts, :last_name, true
  end
end
