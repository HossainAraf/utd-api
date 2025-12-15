class ContactSubmission < ApplicationRecord
    // Validations
    validates :name, :email, :message,  presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    enum status: {
        new: 'new',
        read: 'read',
        replied: 'replied',
        archived: 'archived'
    }, default: 'new'
end
