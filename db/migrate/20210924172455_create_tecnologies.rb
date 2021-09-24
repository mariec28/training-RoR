class CreateTecnologies < ActiveRecord::Migration[6.1]
  def change
    create_table :tecnologies do |t|
      t.string :name
      t.references :portafolio, foreign_key: true

      t.timestamps
    end
  end
end
