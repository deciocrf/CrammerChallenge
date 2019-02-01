require 'rails_helper'

RSpec.describe Crammer::Placement, type: :model do
  
  subject { create :crammer_placement }

  context 'associations' do
    it { should belong_to :user }
    it { should belong_to :crammer_class }
  end

  context 'validations' do
    it { should validate_presence_of :user }
    it { should validate_presence_of :crammer_class }
  end
end
