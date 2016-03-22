class AddEmail1ToVote < ActiveRecord::Migration
  def change
    add_column :votes, :email, :string
  end
end
