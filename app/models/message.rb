class Message < ApplicationRecord
  require "UuidHelper"
  include UuidHelper
  attribute :uuid, MySQLBinUUID::Type.new
  self.primary_key = "uuid"
  validates :contents, presence: true, format: { with: /((\w+\s?-?\w+)(,|\z))/i, message: "no HTML-tags allowed"}
end
