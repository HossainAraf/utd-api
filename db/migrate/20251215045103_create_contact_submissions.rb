class CreateContactSubmissions < ActiveRecord::Migration[8.1]
  def change
    create_table :contact_submissions do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :company
      t.string :phone, null: false
      t.string :subject
      t.text :message, null: false
      t.string :service_interest
      t.string :status, default: "new"
      t.string :ip_address

      t.timestamps
    end
  end
end
