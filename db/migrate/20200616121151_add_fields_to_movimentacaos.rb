class AddFieldsToMovimentacaos < ActiveRecord::Migration[5.1]
  def change
    add_column :movimentacaos, :produto_id, :integer
  end
end
