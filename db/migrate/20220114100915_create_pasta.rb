class CreatePasta < ActiveRecord::Migration[6.1]
  def change
    create_table :pasta do |t|
      t.string :nome
      t.string :produttore
      t.text :descrizione
      t.integer :cottura
      t.integer :peso

      t.timestamps
    end
  end
end
