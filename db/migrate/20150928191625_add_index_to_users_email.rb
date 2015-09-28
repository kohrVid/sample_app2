class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
	  add_index :users, :email, unique: true
	  #uniqueness up until now was only guarantied in the view but not in the database. Clicking submit twice could have created duplicate emails in the DB. This migration will fix this issue once default test fixtures are removed
  end
end
