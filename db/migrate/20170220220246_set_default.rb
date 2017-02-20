class SetDefault < ActiveRecord::Migration[5.0]
  def change
    remove_column :options, :votes_one, :integer
    remove_column :options, :votes_two, :integer

    add_column :options, :votes_one, :integer, :default => 0
    add_column :options, :votes_two, :integer, :default => 0
  end
end
