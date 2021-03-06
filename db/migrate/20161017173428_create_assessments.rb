class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.integer :user_id
      t.string :name, { limit: 128 }
      t.string :key, { limit: 64 }
      t.float :score
      t.boolean :completed, default: false

      t.timestamps(null: false)
    end
  end
end
