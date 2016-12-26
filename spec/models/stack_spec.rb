require 'rails_helper'

RSpec.describe Stack, type: :model do
  it { is_expected.to have_many(:cards) }

  it { is_expected.to validate_presence_of(:name) }
end
