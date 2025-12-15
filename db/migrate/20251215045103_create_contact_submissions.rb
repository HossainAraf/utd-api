class CreateContactSubmissions < ActiveRecord::Migration[8.1]
  def change
    create_table :contact_submissions do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :phone
      t.string :subject
      t.text :message
      t.string :service_interest
      t.string :status
      t.string :ip_address

      t.timestamps
    end
  end
end
