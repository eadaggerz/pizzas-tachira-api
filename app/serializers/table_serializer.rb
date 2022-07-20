# frozen_string_literal: true

# == Schema Information
#
# Table name: tables
#
#  id         :bigint           not null, primary key
#  status     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TableSerializer
  include JSONAPI::Serializer
  attributes :status, :updated_at
end
