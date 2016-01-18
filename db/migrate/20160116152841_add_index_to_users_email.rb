class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    add_index :users, :email, unique: true
  end

  def up
    User.where.order.update(email 'nil')
  end
end