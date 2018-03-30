class AddRefToEntries < ActiveRecord::Migration[5.1]
  def change
    add_reference :entries, :declaration, foreign_key: true
  end
end
