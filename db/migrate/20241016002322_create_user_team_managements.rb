class CreateUserTeamManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :user_team_managements do |t|
      t.timestamps
      t.integer :user_id
      t.integer :team_id
      t.string :status, default: 'active'
      t.boolean :is_owner, default: false
      
    end
  end
end
