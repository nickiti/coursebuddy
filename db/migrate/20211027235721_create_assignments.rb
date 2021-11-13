class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.string :name
      t.text :description
      t.string :status
      t.datetime :date
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
