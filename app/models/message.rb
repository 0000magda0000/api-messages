class Message < ApplicationRecord
  require "UuidHelper"
  include UuidHelper
  attribute :uuid, MySQLBinUUID::Type.new
  self.primary_key = "uuid"
  validates :content, presence: true, format: { without: /\A<\w*>.*<\/\w*>\z/, message: "no HTML-tags allowed"}
end
