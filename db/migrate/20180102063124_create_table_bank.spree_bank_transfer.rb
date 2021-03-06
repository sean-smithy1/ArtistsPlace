# This migration comes from spree_bank_transfer (originally 20130717071443)
# This migration comes from spree_bank_transfer
class CreateTableBank < SpreeExtension::Migration[4.2]
  def change
    create_table :spree_banks do |t|
      t.string :name
      t.string :account_no
      t.boolean :active, default: true
      t.timestamps
    end
    add_index :spree_banks, [:name, :account_no], unique: true
  end
end
