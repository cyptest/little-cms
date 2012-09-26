class CreateRubriques < ActiveRecord::Migration
  def change
    create_table :rubriques do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
