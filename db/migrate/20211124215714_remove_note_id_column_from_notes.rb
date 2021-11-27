class RemoveNoteIdColumnFromNotes < ActiveRecord::Migration[6.1]
  def change
    remove_reference :notes, :note, null: false, foreign_key: true
  end
end
