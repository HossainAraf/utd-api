class ContactSubmission < ApplicationRecord
  validates :name, :email, :message, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  enum :status, {
    pending: 0,
    read: 1,
    replied: 2,
    archived: 3
  }
end
