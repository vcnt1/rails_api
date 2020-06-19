class CreateMovimentacaos < ActiveRecord::Migration[5.1]
  def change
    create_table :movimentacaos do |t|
      t.integer :produto_id
      # essa linha de cima deveria ser 
      # t.references :produto, foreign_key : true
      t.date :data
      t.string :tipo
      t.text :descricao
      t.decimal :valor

      t.timestamps
    end
  end
end
