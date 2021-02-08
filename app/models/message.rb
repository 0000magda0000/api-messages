class Message < ApplicationRecord
  require "UuidHelper"
  attribute :uuid, MySQLBinUUID::Type.new
  self.primary_key = "uuid"
  include UuidHelper


end
