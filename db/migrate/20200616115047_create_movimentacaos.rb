class CreateMovimentacaos < ActiveRecord::Migration[5.1]
  def change
    create_table :movimentacaos do |t|
      t.integer :produto_id
      t.date :data
      t.string :tipo
      t.text :descricao
      t.decimal :valor

      t.timestamps
    end
  end
end
