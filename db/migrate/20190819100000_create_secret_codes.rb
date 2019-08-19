class CreateSecretCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :secret_codes do |t|
      t.string :code
      t.bigint :user_id

      t.timestamps
    end
  end
end
