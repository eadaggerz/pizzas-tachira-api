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
FactoryBot.define do
  factory :table do
    status { false }
  end
end
