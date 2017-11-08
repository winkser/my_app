class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices, id: :uuid do |t|
      t.string :name
      t.timestamp :created_at
    end
  end
end
