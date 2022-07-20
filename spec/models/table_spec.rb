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
require 'rails_helper'

RSpec.describe Table, type: :model do
end
