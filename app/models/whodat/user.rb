class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, (options[:message] || "is not a valid email") unless
    value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  end
end

module Whodat
  class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true, email: true
    validates :name, :password_digest, presence: true
    validates :password, length: { minimum: 8 }, on: :create
  end
end
