class CreateDisbursements < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'uuid-ossp'
    create_table :disbursements do |t|
      t.datetime :date
      t.float :amount
      t.uuid :uuid, default: -> { "uuid_generate_v4()" }

      t.timestamps
    end
  end
end
