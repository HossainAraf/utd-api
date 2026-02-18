class CreateUtechSchema < ActiveRecord::Migration[8.1]
  def up
    execute "CREATE SCHEMA IF NOT EXISTS utech"
  end

  def down
    execute "DROP SCHEMA IF EXISTS utech CASCADE"
  end
end
